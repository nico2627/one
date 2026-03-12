package convert;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

@WebService(serviceName = "Converter")
public class converter {

    // 1️⃣ USD to INR Conversion
    @WebMethod(operationName = "usdToInr")
    public String usdToInr(@WebParam(name = "usd") double usd) {

        double inr = usd * 75;
        return "USD " + usd + " = INR " + inr;
    }

    // 2️⃣ Fahrenheit to Celsius
    @WebMethod(operationName = "fahrenheitToCelsius")
    public String fahrenheitToCelsius(@WebParam(name = "fahrenheit") double f) {

        double c = (f - 32) * 5 / 9;
        return "Temperature in Celsius: " + c;
    }

    // 3️⃣ Factorial
    @WebMethod(operationName = "factorial")
    public String factorial(@WebParam(name = "number") int number) {

        long fact = 1;

        for(int i = 1; i <= number; i++) {
            fact = fact * i;
        }

        return "Factorial of " + number + " is " + fact;
    }

    // 4️⃣ Prime Number Check
    @WebMethod(operationName = "isPrime")
    public String isPrime(@WebParam(name = "number") int number) {

        if(number <= 1) {
            return number + " is NOT a Prime Number";
        }

        for(int i = 2; i <= number / 2; i++) {
            if(number % i == 0) {
                return number + " is NOT a Prime Number";
            }
        }

        return number + " is a Prime Number";
    }
}
