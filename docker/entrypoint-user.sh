#!/bin/bash
set -e

function setup_bundler_local()
{
    # Use the local folder for ruby gems
    BUNDLER_FOLDER="$WWW_DIR/_vendor/bundle"
    if [ -d "$BUNDLER_FOLDER" ] ; then
        BUNDLER_FOLDERS_BIN=($BUNDLER_FOLDER/ruby/*/bin)
        for folder in $BUNDLER_FOLDERS_BIN ; do
            export PATH=$folder:$PATH
        done
        echo "export PATH=$PATH" > $HOME/.bashrc
    fi
}

function installdeps_bundler_local()
{
    if [ -e "$WWW_DIR/Gemfile" ] ; then
        cd "$WWW_DIR"
        setup_bundler_local
        bundler install --path $BUNDLER_FOLDER
        setup_bundler_local
        cd - &>/dev/null
    else
        exit 1
    fi
}

. "/opt/conda/etc/profile.d/conda.sh"
conda activate elektrophon
cd $WWW_DIR

case "$@" in
    new)
        echo "Generate a new website in $JEKYLL_DIR? [y/N]"
        read generate_jekyll
        case $generate_jekyll in
            y)
                # If the folder is not empty, ask if the environment should be initizialized
                if [ -n "$(ls -A $WWW_DIR)" ] ; then
                    echo "The folder $WWW_DIR is not empty"
                    echo "Do you want to set the environment up with bundler? [y/N]"
                    read bundler_env
                    case $bundler_env in
                        y) installdeps_bundler_local ;;
                        *) ;;
                    esac
                    exit 0
                fi
                # Otherwise, generate the default website
                jekyll new --blank --force $WWW_DIR || exit 1
                cd $WWW_DIR
                bundle init
                echo "gem \"jekyll\"" >> Gemfile
                installdeps_bundler_local
                cd - &>/dev/null
                ;;
            *)
                echo "Exiting"
                exit 0
                ;;
        esac
        ;;
    serve)
        cd $JEKYLL_DIR
        make
        cd $WWW_DIR
        installdeps_bundler_local
        bundle exec jekyll serve --host=$(hostname -i | awk '{print $1}')
        cd - &>/dev/null
        ;;
    build)
        cd $JEKYLL_DIR
        make
        cd $WWW_DIR
        installdeps_bundler_local
        bundle exec jekyll build --trace
        cd - &>/dev/null
        ;;
    clean)
        cd $JEKYLL_DIR
        make clean
        ;;
    *)
        # Execute command from CMD
        setup_bundler_local
        $@
        ;;
esac
