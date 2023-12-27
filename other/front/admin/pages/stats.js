async function getData() {
    let response = await fetch('http://localhost:3005/getstat', {
        method: 'post',
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        }
    });
    let json = await response.json()
    console.log(json.resu)
    let id = []
    let cost = []
    json.resu.map((x) => {
        id.push(x.idticket)
        cost.push(x.cost)
    })
    console.log(id)


    var ctx = document.getElementById('myChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: id,
            datasets: [{
                label: 'Продажи',
                data: cost,
                backgroundColor: 'rgba(0, 123, 255, 0.5)',
                borderColor: 'rgba(0, 123, 255, 1)',
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
}
getData()