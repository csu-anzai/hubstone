import Chart from "chart.js"

const initChart = () => {
  var ctx = document.querySelector('.chart');
  let month = 0
  const capitalNet = []
  JSON.parse(document.querySelector('.capital-net').dataset.capitalNet).forEach((c) => {
    month += 1
    if (month % 12 === 0) {
      capitalNet.push(c)
    }
  })
  const years = []
  for(let i = 2020; i < 2020 + capitalNet.length; i++){
    years.push(i)
  }
  console.log(years)
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: years,
        datasets: [{
          label: 'Capital net',
          data: capitalNet
        }]
      },
      options: {
        scales: {
          yAxes: [{
            ticks: {
              min: capitalNet[0],
              max: capitalNet[capitalNet - 1],
              stepSize: 500000
            }
          }],
          xAxes: [{
            ticks: {
              stepSize: 5
            }
          }]
        }
      }
  });
}

export { initChart }

