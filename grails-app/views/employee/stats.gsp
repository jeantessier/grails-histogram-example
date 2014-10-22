<html>

<head>
<title>Stats</title>
<gvisualization:apiImport/>
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

<gvisualization:pieCoreChart elementId="piechart" width="${900}" height="${500}" columns="${[ [ "string", "Gender" ], [ "number", "Total" ] ]}" data="${genderHisto.collect { k, v -> [ k, v ] }}"/>
<div id="piechart"></div> 

</body>

</html>

