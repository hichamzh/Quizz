const menu_burger = document.querySelector('.icon_burger')
const nav_right = document.querySelector('.nav-right')

const li_icon = document.querySelector('.icon_burger li')

menu_burger.addEventListener('click', () => {
    nav_right.classList.toggle('active')
    li_icon.classList.toggle('active')
    console.log('add');
})



