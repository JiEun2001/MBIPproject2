

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Electric Consumption Form</title>
</head>
<body>
    <h2>Electric Consumption Form</h2>
    <form action="/submit-consumption" method="post">
        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required><br>
        
        <label for="meterReading">Meter Reading:</label>
        <input type="number" id="meterReading" name="meterReading" required><br>
        
        <label for="customerName">Customer Name:</label>
		<input type="text" id="customerName" name="customerName" required><br>
		
		<label for="customerAddress">Customer Address:</label>
		<input type="text" id="customerAddress" name="customerAddress"><br>
		
		<label for="customerEmail">Customer Email:</label>
		<input type="email" id="customerEmail" name="customerEmail"><br>
		
		<label for="customerPhone">Customer Phone:</label>
		<input type="tel" id="customerPhone" name="customerPhone"><br>
		
		<label for="meterNumber">Meter Number:</label>
		<input type="text" id="meterNumber" name="meterNumber"><br>
		
		<label for="comments">Comments:</label>
		<textarea id="comments" name="comments"></textarea><br>
        
        <button type="submit">Submit</button>
    </form>
    
 
    
</body>
</html>
