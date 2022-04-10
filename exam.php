<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<div id="response"> </div>
</body>
</html>

<script type="text/javascript">
setInterval(function() {
var xmlhttp = new XMLHttpRequest();
xmlhttp.open("GET", "displaytime.php", false);
xmlhttp.send(null);
document.getElementById("response").innerHTML=xmlhttp.responseText;
},1000); 
xmlhttp.abort();
</script>