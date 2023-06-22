
let mainbody = document.querySelector('.mainbody')
let mainbodyEmployee = document.querySelector('.mainbodyEmployee')
let mainbodyCheque = document.querySelector('.mainbodyCheque')
let mainbodyTicket = document.querySelector('.mainbodyTicket')
async function getData() {
    let response = await fetch('http://localhost:3005/admin/client', {
        method: 'GET',
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        }
    });
    let json = await response.json()
    console.log(json)
    json.map((x)=>{
        mainbody.innerHTML += `<tr>
    <td>${x.idclient}</td>
    <td>${x.name}</td>
    <td>${x.pol}</td>
    <td>${x.datebirthday}</td>
    <td>${x.email}</td>
    <td>${x.phone}</td>
    <td>${x.passwd}</td>
    <td><button onclick="change(this)" class="${x.idclient} client">Изменить</button></td>
    <td><button onclick="deleteData(this)" class="${x.idclient} client deleteb">Удалить</button></td>
</tr>`})

}
getData()


async function getEmployee() {
    let response = await fetch('http://localhost:3005/admin/employee', {
        method: 'GET',
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        }
    });
    let json = await response.json()
    console.log(json)
    json.map((x)=>{
        mainbodyEmployee.innerHTML += `<tr>
    <td>${x.idemployee}</td>
    <td>${x.name}</td>
    <td>${x.phone}</td>
    <td>${x.datebirthday}</td>
    <td><button onclick="change(this)" class="${x.idemployee} employee">Изменить</button></td>
    <td><button onclick="deleteData(this)" class="${x.idemployee} employee deleteb">Удалить</button></td>
</tr>`})

}
getEmployee()

async function getCheque() {
    let response = await fetch('http://localhost:3005/admin/cheque', {
        method: 'GET',
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        }
    });
    let json = await response.json()
    console.log(json)
    json.map((x)=>{
        mainbodyCheque.innerHTML += `<tr>
    <td>${x.idcheque}</td>
    <td>${x.idemployee}</td>
    <td>${x.idclient}</td>
    <td>${x.idticket}</td>
    <td>${x.dateandtime}</td>
    <td><button onclick="change(this)" class="${x.idcheque} cheque">Изменить</button></td>
    <td><<button onclick="deleteData(this)" class="${x.idcheque} cheque deleteb">Удалить</button></td>
</tr>`})

}
getCheque()

async function getTicket() {
    let response = await fetch('http://localhost:3005/admin/ticket', {
        method: 'GET',
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        }
    });
    let json = await response.json()
    console.log(json)
    json.map((x)=>{
        mainbodyTicket.innerHTML += `<tr>
    <td>${x.idticket}</td>
    <td>${x.category}</td>
    <td>${x.cost}</td>
    <td>${x.time}</td>
    <td>${x.person}</td>
    <td>${x.dateticket}</td>
    <td><button onclick="change(this)" class="${x.idticket} ticket">Изменить</button></td>
    <td><button <button onclick="deleteData(this)" class="${x.idticket} ticket deleteb">Удалить</button></td>
</tr>`})
}
getTicket()

async function deleteData(e){
    console.log(e.classList)
    const data = {
        id: e.classList[0],
        table: e.classList[1]
    }
    let response = await fetch(`http://localhost:3005/admin/delete`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        },
        body: JSON.stringify(data)
    });
}

function change(e){
    console.log(e.classList)
    sessionStorage.setItem('idtable', e.classList[0])
    sessionStorage.setItem('table', e.classList[1])
    window.location.href = '/admin/change/adminchange.html'
    console.log("ok")
}