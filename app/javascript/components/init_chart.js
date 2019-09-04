import Chart from "chart.js"

const initChart = () => {
  var ctx = document.querySelector('.chart-capital-net');
  var ctxContribution = document.querySelector('.chart-contribution');
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
  new Chart(ctx, {
      type: 'line',
      data: {
        labels: years,
        datasets: [{
            fill: false,
           borderColor: "#00C29A",
           borderDash: [5, 5],
           backgroundColor: "#00C29A",
           pointBackgroundColor: "#00C29A",
           pointBorderColor: "#00C29A",
           pointHoverBackgroundColor: "#00C29A",
           pointHoverBorderColor: "#00C29A",

          label: 'Capital net',
          data: capitalNet
        }]
      },
      options: {
        responsive: false ,
        maintainAspectRatio: false,
        scales: {
          yAxes: [{
            ticks: {
              min: 0, // capitalNet[0]
              max: capitalNet[capitalNet - 1],
              stepSize: 100000
            }
          }],
          xAxes: [{
            barPercentage: .8,
            categoryPercentage: 1,
          }]
        }
      }
  });

  const contributionFinancementData = JSON.parse(document.querySelector('.contribution-financement').dataset.contributionFinancement);
  new Chart(ctxContribution, {
      type: 'pie',
      data: {
        labels: Object.keys(contributionFinancementData),
        datasets: [{
          backgroundColor: ['#008B8B', '#5F9EA0', '#00C29A'],
          data: Object.values(contributionFinancementData)
        }]
      },
      options: {
        responsive: false ,
        maintainAspectRatio: false
      }
  });
}

export { initChart }

