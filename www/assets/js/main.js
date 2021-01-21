const burger_icon = document.querySelector('#burger')
const navbar_menu = document.querySelector('#nav-links')

burger_icon.addEventListener('click', () => {
    navbar_menu.classList.toggle('is_active');
});
