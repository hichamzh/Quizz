const butt_deco = document.querySelector(".deco")
const butt_close = document.querySelector('.close')
var overlay = document.createElement('div')
overlay.className = 'overlay'

butt_deco.addEventListener('click', () => {
    document.querySelector('.form_deco').style.display = 'flex'
    document.body.appendChild(overlay)
    console.log(overlay);
})

// butt_close.addEventListener('click', () => {
//     document.querySelector('.form_deco').style.display = "none"
//     document.body.removeChild(overlay)
// })

function close () {
document.querySelector('.form_deco').style.display = "none"
document.body.removeChild(overlay)
}
butt_close.addEventListener('click', close);




