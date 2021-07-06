#!/bin/bash
set -e

echo "user uid $USERNAME"
USER_UID=${USER_UID:-1000}
USER_GID=${USER_GID:-1000}
USERNAME=${USERNAME:-jekyll}
echo "user uid $USER_UID"

OLD_USER=$(stat -c '%u' $JEKYLL_DIR/Makefile)
OLD_GROUP=$(stat -c '%g' $JEKYLL_DIR/Makefile)

ls -la $JEKYLL_DIR

function create_user()
{
    groupadd -f -g $USER_GID $USERNAME 2> /dev/null # group
    useradd -d $JEKYLL_DIR -M -s /bin/bash -g $USERNAME $USERNAME  2> /dev/null # user
    echo "$USERNAME ALL=NOPASSWD:ALL" >> /etc/sudoers
    # mkdir -p $WWW_DIR
    # chown -R $USERNAME:$USERNAME $JEKYLL_DIR/build
}

# Create the user
create_user

# Execute the rest of the script with the new user
su -c "/entrypoint-user.sh \"$@\"" $USERNAME
