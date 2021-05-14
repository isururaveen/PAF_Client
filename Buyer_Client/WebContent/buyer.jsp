<%@page import="model.Buyer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- Style Sheets -->
<link rel="stylesheet" href="Views/bootstrap.min.css">

<script src="./js/jquery-3.2.1.min.js"></script>
<script src="./js/register.js"></script>
<title>Buyer</title>

</head>
<body>
<main>
    <!-- Header section -->
     <jsp:include page="./layouts/header.jsp" />  
	<!-- End Header section -->
	
 <div class="container">
<div ><br><br>
<div class="col-10" >

      <h1>Edit Buyer</h1>
      <br>
	  <div id="alertSuccess" class="alert alert-success">
        <%
            out.print(session.getAttribute("statusMsg"));
        %>
	 </div>
		
		<div id="alertError" class="alert alert-danger"></div> 
  
	    <form id="formBuyer" name="formBuyer">
			First name:
		    <input id="firstName" name="firstName" type="text" class="form-control form-control-sm">
			<br> 
			
			Last name:
		    <input id="lastName" name="lastName" type="text" class="form-control form-control-sm">
			<br>
			
			Address:
		    <input id="address" name="address" type="text" class="form-control form-control-sm">
			<br> 
			
			Email:
		    <input id="email" name="email" type="email" class="form-control form-control-sm">
			<br>
			
			Phone No:
		     <input id="phoneNo" name="phoneNo" type="text" class="form-control form-control-sm">
			<br> 
			
			User Name:
		     <input id="userName" name="userName" type="text" class="form-control form-control-sm">
			<br> 
			
			Password:
		    <input id="password" name="password" type="text" class="form-control form-control-sm">
			<br> 
			<br>
		    <input id="btnSave" name="btnSave" type="button"value="Save" class="btn btn-primary">
		    <input type="hidden" id="hidBuyerIDSave" name="hidBuyerIDSave" value="">
	</form>
</div>
</div>
<br>

<div id="divItemsGrid">
	<%
		Buyer buyer=new Buyer();
		out.print(buyer.getAllBuyers());
	%>
</div>
<br>
</div>
</main>
<br><br>
 <jsp:include page="./layouts/footer.jsp" />
</body>
</html>