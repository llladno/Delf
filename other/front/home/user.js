let category = document.querySelector('.category')
let datebirthday
let tickets = document.querySelector('.tickets')
async function getDataUser() {
    let mass = {
        mail: sessionStorage.getItem('mail')
    }
    let response = await fetch(`http://localhost:3005/user/home`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        },
        body: JSON.stringify(mass)
    });
    let json = await response.json()
    console.log(json.resu[0].datebirthday)
    datebirthday = json.resu[0].datebirthday
    const date = new Date(datebirthday)
    console.log(date)
    let today = new Date()
    console.log(date < today)
    console.log(today)

    function diffDates(day_one, day_two) {
        return (day_one - day_two) / (60 * 60 * 365 * 24 * 1000);
    };
    if (diffDates(today, date) < 18) {
        category.innerHTML = '<p>Категория: <span class="cate">Ребёнок</span></p>'
    } else if (diffDates(today, date) > 65) {
        category.innerHTML = '<p>Категория: <span class="cate">Пенсионер</span></p>'
    } else {
        category.innerHTML = '<p>Категория: <span class="cate">Взрослый</span></p>'
    }
    console.log(diffDates(today, date));
    console.log(json.result)


}
async function tick(){
    let mass = {
        mail: sessionStorage.getItem('mail')
    }
    let response = await fetch(`http://localhost:3005/user/home/cheque`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        },
        body: JSON.stringify(mass)
    });
    let json = await response.json()
    json.result.map((x)=>{
        tickets.innerHTML += `
<div class="card">
        <p>Категория: ${x.category}</p>
        <p>Время сеанса: ${x.time}</p>
        <p>Количество персон: ${x.person}</p>
        <p>Дата сеанса: ${x.dateticket}</p>
        <p>Общая сумма: ${x.cost}</p>
        </div>
        `
    })
}
getDataUser()
tick()
let date = document.getElementsByClassName('date')[0]
date.min = new Date.now()

async function buyTicket(){
    let time = document.getElementsByClassName('time')[0].value
    let people = document.getElementsByClassName('people')[0].value
console.log(datebirthday)
    let date = document.getElementsByClassName('date')[0].value
    let cate = document.querySelector('.cate')
    console.log(cate.textContent)
    let price
    if(cate.textContent== 'Ребёнок'||cate.textContent =='Пенсионер'){
        price = 400 * 0.8 * time * people
        console.log('Price:', price)
    }
    else {
        price = 400 * time * people
    }
    let mass = {
        category : cate.textContent,
        cost: price,
        timee: time,
        person: people,
        dateticket: date,
        idclient: sessionStorage.getItem('idclient')
    }
    console.log(mass)
    let response = await fetch(`http://localhost:3005/user/buyticket`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        },
        body: JSON.stringify(mass)
    });

}