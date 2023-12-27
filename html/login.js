let login = document.querySelector('button')
let stylesauth = document.querySelector('.stylesauth')
let auth = document.querySelector('.auth')
console.log(login)


async function re () {
    console.log('su')
    let resp = ''
    let resp2 = ''
    let w = []
    await fetch('http://localhost:3005/con/error').then(res => {
        console.log(res.status)

        resp = res.status})
    await fetch('http://localhost:3005/noerror').then(res => {
        console.log(res.status)
        resp2 = res.status}).catch(err=>console.log(err))
    // await fetch('http://localhost:3005/noerror')
    // let json = await resp.json()
    // let json2 = await resp2.json()
    // console.log(json)
    // console.log(json2)
    // console.log(json)
    // console.log(json2)
    console.log('su')
    if(resp == 200 && resp2 == 404){
        console.log(resp2)
        if(resp2 == 404){
            setTimeout(()=>{
                re()},2500)
            console.log('re')
        }
        else{
            console.log('ok')
        }
    }
    else if (resp2 == 200){
        console.log('OK')
        auth.style.display = 'flex'
    }
}
re()


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