<html>

<head>
<title>Stats</title>
</head>

<body>

<h1>Stats</h1>

<table>
    <g:each var="entry" in="${genderHisto}">
        <tr><th>${entry.key}</th><td>:</td><td>${entry.value}</td></tr>
    </g:each>
</table>

</body>

</html>

