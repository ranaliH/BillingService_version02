<%@page import="com.Bills"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bills Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.js"></script>
<script src="Components/bills.js"></script>
<style>
body {
  align-items: center;
  background-color: #EAFAF1 ;
  display: flex;
  justify-content: center;
  height: auto;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1 style="text-align: center">Bills Management</h1>
				<div style="background-color:white">
				<form id="formBill" name="formBill" style="border:black; border-width:0.5px; border-style:solid; padding:25px">
					<B>Invoice Number:</B>
					<input id="invoiceno" name="invoiceno" type="text" class="form-control form-control-sm" placeholder="Auto Generated" readonly> <br> 
					<B>Date:</B>
					<input id="date" name="date" type="date" class="form-control form-control-sm"> <br> 
					<B>Customer Name:</B>
					<input id="cusname" name="cusname" type="text" class="form-control form-control-sm"> <br> 
					<B>Account No:</B>
					<input id="accno" name="accno" type="text" class="form-control form-control-sm"> <br> 
					<B>Number of Units:</B>  
					<input id="units" name="units" type="text" class="form-control form-control-sm"> <br> 
					<B>Unit Price:</B>
					<input id="price" name="price" type="text" class="form-control form-control-sm"> <br> 
					<B>Tax:</B>
					<input id="tax" name="tax" type="text" class="form-control form-control-sm"> <br> 
					<B>Total Amount:</B> 
					<input id="total" name="total" type="text" class="form-control form-control-sm"> <br> 
							
					<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary"> 
					<input type="hidden" id="hidInvoiceNoSave" name="hidInvoiceNoSave" value="">
				</form>
				</div>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>
				<div style="background-color:white">
				<div id="divBillsGrid">
					<%
					Bills itemObj = new Bills();
					out.print(itemObj.readBills());
					%>
				</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>