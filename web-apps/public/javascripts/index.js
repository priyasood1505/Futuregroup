$(document).ready(function () {
  var timeData = [],
    temperatureData = [],
    
  var data = {
    labels: timeData,
    datasets: [
      {
        fill: false,
        label: 'Temperature',
        yAxisID: 'Temperature',
        borderColor: "rgba(255, 204, 0, 1)",
        pointBoarderColor: "rgba(255, 204, 0, 0.4)",
        backgroundColor: "rgba(255, 204, 0, 0.4)",
        pointHoverBackgroundColor: "rgba(255, 204, 0, 1)",
        pointHoverBorderColor: "rgba(255, 204, 0, 1)",
        data: temperatureData
      },
      {
  		data: Array.apply(null, new Array(10000)).map(Number.prototype.valueOf, 55),
  		fill: false,
  		label: 'Upper Control Limit',
  		radius: 0,
  		borderColor: "rgba(255, 0, 0, 1)",
        pointBoarderColor: "rgba(255, 0, 0, 1)",
  		backgroundColor: "rgba(255, 0, 0, 0.4)",
  		pointHoverBackgroundColor: "rgba(255, 0, 0, 1)",
        pointHoverBorderColor: "rgba(255, 0, 0, 1)",
	},
    {
  		data: Array.apply(null, new Array(10000)).map(Number.prototype.valueOf, 45),
  		fill: false,
  		label: 'Lower Control Limit',
  		radius: 0,
  		borderColor: "rgba(255, 140, 0, 1)",
        pointBoarderColor: "rgba(255, 140, 0, 1)",
  		backgroundColor: "rgba(255, 140, 0, 0.4)",
  		pointHoverBackgroundColor: "rgba(255, 140, 0, 1)",
        pointHoverBorderColor: "rgba(255, 140, 0, 1)",
	}
    ]
  }

  
  var basicOption = {
    title: {
      display: true,
      text: 'Temperature Real-time Data',
      fontSize: 36
    },
    scales: {
      yAxes: [{
        id: 'Temperature',
        type: 'linear',
        scaleLabel: {
          labelString: 'Temperature (C)',
          display: true
        },
        position: 'left',
      }]
    }
  }

  //Get the context of the canvas element we want to select
  var ctx = document.getElementById("myChart").getContext("2d");
  var optionsNoAnimation = { animation: false }
  var myLineChart = new Chart(ctx, {
    type: 'line',
    data: data,
    options: basicOption
  });

  var ws = new WebSocket('wss://' + location.host);
  ws.onopen = function () {
    console.log('Successfully connect WebSocket');
  }
  ws.onmessage = function (message) {
    console.log('receive message' + message.data);
    try {
      var obj = JSON.parse(message.data);
      if(!obj.time || (!obj.temperature && !obj.vibration && !obj.current)) {
        return;
      }
      timeData.push(obj.time);
      if(obj.temperature) {
        temperatureData.push(obj.temperature);
      }
      // only keep no more than 50 points in the line chart
      const maxLen = 50;
      var len = timeData.length;
      if (len > maxLen) {
        timeData.shift();
        temperatureData.shift();
      }

      
      myLineChart.update();
    } catch (err) {
      console.error(err);
    }
  }
});
