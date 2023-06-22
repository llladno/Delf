let login = document.querySelector('button')
let stylesauth = document.querySelector('.stylesauth')
console.log(login)
login.addEventListener('click',()=>{
    let mail = document.getElementById('login').value
    let pass = document.getElementById('password').value
    if(mail === 'admin'){
        window.location.href = '/admin/admin.html'
    }
    else {
        if ((mail && pass) != '') {
            const data = {
                mail: mail,
                pass: pass
            }

            async function checkUser() {
                let response = (await fetch('http://localhost:3005/user/login', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json;charset=utf-8'
                    },
                    body: JSON.stringify(data)
                }));
                let json = await response.json()
                console.log(json)
                if (json.stat == 'ok') {
                    sessionStorage.setItem('idclient', json.id)
                    sessionStorage.setItem('mail', mail)
                    sessionStorage.setItem('pass', pass)
                    window.location.href = './home/userHome.html'
                }
            }

            checkUser()
        }
    }
    console.log('click')
})