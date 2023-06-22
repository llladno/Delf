let date = document.getElementsByClassName('date')[0]
let register = document.getElementsByClassName('register')[0]
let name = document.querySelector('.name')
let mail = document.querySelector('.mail')
let phone = document.querySelector('.phone')
let pass = document.querySelector('.pass')
let pass2 = document.querySelector('.pass2')
let stylesauth = document.querySelector('.stylesauth')

let pol = document.getElementsByName('pol')
register.addEventListener('click',()=>{
    let datapol
    if((name.value && mail.value && phone.value && pass.value && pol.length) != '') {
        for (let b in pol) {
            if (pol[b].checked === true) {
                datapol = pol[b].classList[0]
            }
        }
        const data = {
            name: name.value,
            mail: mail.value,
            phone: phone.value,
            pass: pass.value,
            pass2: pass2.value,
            pol: datapol,
            date: date.value
        }

        async function sendData() {
            let response = await fetch('http://localhost:3005/user/register', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json;charset=utf-8'
                },
                body: JSON.stringify(data)
            });
        }
        sendData()
        setTimeout(()=>{
            window.location.href= '/index.html'
        },500)
    }
    else {
        stylesauth.innerHTML +=`<p>Заполните все даннные</p>`
    }
})