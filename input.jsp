<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Operations</title>
</head>
<body>

<h2>USD to INR Conversion</h2>
<form action="output.jsp" method="post">
Enter USD:
<input type="text" name="usd"><br><br>
<input type="submit" name="action" value="UsdToInr">
</form>

<hr>

<h2>Fahrenheit to Celsius</h2>
<form action="output.jsp" method="post">
Enter Fahrenheit:
<input type="text" name="fahrenheit"><br><br>
<input type="submit" name="action" value="FToC">
</form>

<hr>

<h2>Factorial</h2>
<form action="output.jsp" method="post">
Enter Number:
<input type="text" name="number"><br><br>
<input type="submit" name="action" value="Factorial">
</form>

<hr>

<h2>Prime Number Check</h2>
<form action="output.jsp" method="post">
Enter Number:
<input type="text" name="number"><br><br>
<input type="submit" name="action" value="Prime">
</form>

</body>
</html>
