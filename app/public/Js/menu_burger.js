const menu_burger = document.querySelector('.icon_burger')
const nav_right = document.querySelector('.nav-right')

const li_icon = document.querySelector('.icon_burger li')

menu_burger.addEventListener('click', () => {
    nav_right.classList.toggle('active')
    li_icon.classList.toggle('active')
    
    if (document.body.style.overflow === 'hidden') {
        document.body.style.overflow = 'auto';
        console.log('Overflow set to auto');
      } else {
        document.body.style.overflow = 'hidden';
        console.log('Overflow set to hidden');
      }
      
    console.log('add');
})





