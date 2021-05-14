<%@page import="model.Buyer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GadgetBadget Register</title>

	<!-- StyleSheets -->
   <link rel="stylesheet" href="Views/bootstrap.min.css">
   <link href="./Css/style.css" rel="stylesheet" type="text/css" >
   <link href="./Css/register.css" rel="stylesheet" type="text/css">
   
   <script src="./js/jquery-3.2.1.min.js"></script>
   <script src="./js/register.js"></script>
   
</head>
<body>

    <!-- Header section -->
     <jsp:include page="./layouts/header.jsp" />  
	<!-- End Header section -->

<br><br>
<main class="py-4">
    <div class="container">
    
    <!-- Alerts -->
    <div id="alertSuccess" class="alert alert-success"></div>
    <div id="alertError" class="alert alert-danger"></div>
     <!--End Alerts -->
     
	<div class="main">
	<div class="container1">
	<div class="buyer-content">
	<div class="buyer-image">
		  <img class="buyer-img img1" src="./images/b2.jpg" alt="Buyer Image">
	</div>
	<div class="buyer-form">
         
         <br><br><br><br><br><br><br><br>        
         <form id="register-form" name="register-form" class="forma">
         <center><h1 style="margin-top: -50%;">Gadget Badget</h1></center>
         <br><br><br><br>
         <h2 style="margin-top: -20%;">Register Now!!</h2>
            
            <!-- FirstName -->       
		    <div class="form-group form-input">
		         <input  type="text" id="firstName" class ="inputa"
		          name="firstName" value="" required  autocomplete="firstName" autofocus/>
		         
		         <label for="firstName" class="form-label">First Name</label>
		   </div>
		   
		   <!-- LastName -->
		   <div class="form-group form-input">
		         <input  type="text" id="lastName" class ="inputa"
		         name="lastName" value="" required autocomplete="lastName" autofocus/>
		         <label for="lastName" class="form-label">Last Name</label>
		   </div>
		   
		   <!-- Address -->
		   <div class="form-group form-input">
		         <input  type="text" id="address" class ="inputa"
		         name="address" value="" required autocomplete="address" autofocus/>
		         <label for="address" class="form-label">Address</label>
		   </div>
		   
		    <!-- email -->
		   <div class="form-group form-input">
		         <input  type="text" id="email" class ="inputa"
		         name="email" value="" required autocomplete="address" autofocus/>
		         <label for="address" class="form-label">Email</label>
		   </div>
		   
		    <!-- phoneNo -->
		   <div class="form-group form-input">
		         <input  type="text" id="phoneNo" class ="inputa"
		         name="phoneNo" value="" required autocomplete="phoneNo" autofocus/>
		         <label for="phoneNo" class="form-label">Phone No</label>
		   </div>
		   
		   <!-- userName -->
		   <div class="form-group form-input">
		         <input  type="text" id="userName" class ="inputa"
		         name="userName" value="" required autocomplete="userName" autofocus/>
		         <label for="userName" class="form-label">User Name</label>
		   </div>
		   
		    <!-- password -->
		   <div class="form-group form-input">
		         <input  type="password" id="password" class ="inputa"
		         name="password" value="" required autocomplete="password" autofocus/>
		         <label for="password" class="form-label">Password</label>
		   </div>
		   
		    <div class="form-group form-input">
      			<input id="password-confirm" required type="password" class ="inputa"
      			name="password_confirmation"  autocomplete="new-password" />
      			<label for="password_confirmation" class="form-label" >Password Confirm</label>
 			</div>
		  <br>
		  <div class="form-submit">
      	  <input type="button" value="Register Now" class="btn btn-primary" id="submit" name="submit" />
      	  <br>
		      <a href="#" class="vertify-buyer">Already a Buyer? click to login</a>
		 </div>
		 </form>
</div>
</div>
</div>
</div>
</div>
</main>
<br><br>
 <jsp:include page="./layouts/footer.jsp" />
</body>
</html>