let adddata = document.querySelector('.adddata')

function client(){
    adddata.innerHTML = `<p>Имя</p>
<input>
<p>Пол</p>
<input>
<p>День рождения</p>
<input type="date">
<p>Почта</p>
<input>
<p>Телефон</p>
<input>
<p>Пароль</p>
<input>
<button onclick="adddataFn(this)" class="client">Добавить</button>`
}

function cheque(){
    adddata.innerHTML =`<p>Номер сотрудника</p>
<input>
<p>Номер клиента</p>
<input>
<p>Номер билета</p>
<input>
<p>Дата и время</p>
<input type="datetime-local">
<button onclick="adddataFn(this)" class="cheque">Добавить</button>`
}

function employee(){
    adddata.innerHTML =`<p>Имя</p>
<input>
<p>Телефон</p>
<input>
<p>Дата рождения</p>
<input type="date">
<button onclick="adddataFn(this)" class="employ">Добавить</button>`
}

function adddataFn(e){
    console.log(e)
    let inputs = document.getElementsByTagName('input')
    let mass = []
    for (let n = 0; n < inputs.length;n++){
        mass.push(inputs[n].value)
    }
    let path = e.classList[0]
    console.log(mass)
    async function sendData() {
        let response = await fetch(`http://localhost:3005/admin/add/${path}`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json;charset=utf-8'
            },
            body: JSON.stringify(mass)
        });
    }
    sendData()
}

function ticket(){
    adddata.innerHTML =`<p>Категория</p>
<input>
<p>Стоимость</p>
<input>
<p>Время сеанса</p>
<input>
<p>Количество персон</p>
<input>
<p>Дата</p>
<input type="date">
<button onclick="adddataFn(this)" class="ticket">Добавить</button>`
}
