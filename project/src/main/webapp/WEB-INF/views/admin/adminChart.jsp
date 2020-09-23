<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
  <div class="content-min-wrap">
  
  <div class="chart-container">

  <canvas id="myChart" width="600" height="600" style="margin:0 auto; margin-bottom:30px"> </canvas>    
  <canvas id="myChart2" width="900" height="600" style="margin:0 auto;"></canvas>          
      </div>
      </div>
                
                
<script>


var ctx = document.getElementById('myChart').getContext('2d');

var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: [],
        datasets: [{
            label: '주간 예매 건수',
            data: [],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 99, 132, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(255, 99, 132, 1)',
                'rgba(255, 99, 132, 1)',
                'rgba(255, 99, 132, 1)',
                'rgba(255, 99, 132, 1)',
                'rgba(255, 99, 132, 1)',
                'rgba(255, 99, 132, 1)'
               
            ],
            borderWidth: 1
        }]
    },
    options: {
    	responsive: false,
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});


var list = new Array();
var list2 = new Array();

<c:forEach items="${chart}" var="item1">
list.push("${item1.date}");
</c:forEach>

for ( var i = 0; i < list.length; i++) {
    myChart.data.labels.push(list[i]);
    myChart.update();
  
} 

<c:forEach items="${chart}" var="item2">
list2.push("${item2.amount}");
</c:forEach>
 
for ( var i = 0; i < list2.length; i++) {
    console.log(list2[i]);
    myChart.data.datasets.forEach((dataset) => {
        dataset.data.push(list2[i]);
    });
    
    myChart.update();
    
}




var ctx2 = document.getElementById('myChart2').getContext('2d');

var myChart2 = new Chart(ctx2, {
    type: 'bar',
    data: {
        labels: [],
        datasets: [{
            label: '상품별 예매 건수',
            data: [],
            backgroundColor: [
            	'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
            	'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
               
            ],
            borderWidth: 1
        }]
    },
    options: {
    	responsive: false,
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});




var list3 = new Array();
var list4 = new Array();

<c:forEach items="${pchart}" var="item1">
list3.push("${item1.title}");
</c:forEach>

for ( var i = 0; i < list3.length; i++) {
    myChart2.data.labels.push(list3[i]);
    myChart2.update();
  
} 

<c:forEach items="${pchart}" var="item2">
list4.push("${item2.amount}");
</c:forEach>
 
for ( var i = 0; i < list4.length; i++) {
    console.log(list2[i]);
    myChart2.data.datasets.forEach((dataset) => {
        dataset.data.push(list4[i]);
    });
    
    myChart2.update();
    
}








</script>
