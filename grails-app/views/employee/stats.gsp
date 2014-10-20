<html>

<head>
<title>Stats</title>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<g:javascript> 
google.load("visualization", "1", {packages:["corechart"]}); 
google.setOnLoadCallback(drawChart); 
function drawChart() {
    var data = google.visualization.arrayToDataTable([ 
        ['Gender', 'Total'],
        <g:each var="entry" in="${genderHisto}">
            ['${entry.key}', ${entry.value} ],
        </g:each>
    ]);

    var options = { 
        title: 'Employees by gender'
    };

    var chart = new google.visualization.PieChart(document.getElementById('piechart'));

    chart.draw(data, options); 
} 
</g:javascript> 
</head>

<body>

<h1>Stats</h1>

<g:if test="${count == 1}">
    <p>There is ${count} employee.</p>
</g:if>
<g:else>
    <p>There are ${count} employees.</p>
</g:else>

<table>
    <g:each var="entry" in="${genderHisto}">
        <tr><th>${entry.key}</th><td>:</td><td>${entry.value}</td><td><g:formatNumber type="percent" number="${entry.value / count}"/></td></tr>
    </g:each>
</table>

<div id="piechart" style="width: 900px; height: 500px;"></div> 

</body>

</html>

