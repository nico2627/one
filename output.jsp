<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Result</title>
</head>
<body>

<h2>Result</h2>

<%
String action = request.getParameter("action");

try{

    if("UsdToInr".equals(action)){

        double usd = Double.parseDouble(request.getParameter("usd"));
        double inr = usd * 75;

        out.println("INR Value: " + inr);
    }

    else if("FToC".equals(action)){

        double f = Double.parseDouble(request.getParameter("fahrenheit"));
        double c = (f - 32) * 5 / 9;

        out.println("Celsius Value: " + c);
    }

    else if("Factorial".equals(action)){

        int n = Integer.parseInt(request.getParameter("number"));
        long fact = 1;

        for(int i = 1; i <= n; i++){
            fact = fact * i;
        }

        out.println("Factorial of " + n + " is " + fact);
    }

    else if("Prime".equals(action)){

        int n = Integer.parseInt(request.getParameter("number"));
        boolean prime = true;

        if(n <= 1){
            prime = false;
        }

        for(int i = 2; i <= n/2; i++){
            if(n % i == 0){
                prime = false;
                break;
            }
        }

        if(prime)
            out.println(n + " is a Prime Number");
        else
            out.println(n + " is NOT a Prime Number");
    }

}catch(Exception e){
    out.println("Invalid Input! Enter valid number.");
}
%>

<br><br>
<a href="input.jsp">Go Back</a>

</body>
</html>
