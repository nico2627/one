
AI Overview
Project code implements a currency converter service using Java Web Services with JSP clients and a Python consumer using Zeep for operations like currency conversion and arithmetic.

from zeep import Client

wsdl_url = "http://localhost:8080/Currency_converter/Converter?wsdl"

client = Client(wsdl_url)

amount = int(input("Enter amount in rupees to convert in dollars: "));

#Use the exact name from the WSDL
result = client.service.convertRupeesToDollar(amount)
print(f"Rupees {amount} converted into dollars: {result}");

#Add operation
num1 = int(input("Enter the first number:"))
num2 = int(input("Enter the second number: "))

result = client.service.add(num1, num2)
print(f"The sum of {num1} and {num2} is :{result} ")

Kilometer = int(input("Enter distance in kilometers: "))
meter_result = client.service.kmToMiles(Kilometer)
print(f"The distance is :{meter_result} ")
