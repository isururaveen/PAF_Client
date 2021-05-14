<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GadgetBadget</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<link rel="stylesheet" href="Css/index.css">
</head>
<body>

	<!-- Header Section -->
	<jsp:include page="./layouts/header.jsp" />  
	<!-- End of Header Section -->
	
<!-- Banner section -->
<section class="banner-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 banner-text text-white">
                <h4>Register Now and Purchase for suitable Research Products</h4>
                <a href="register.jsp" class="btn btn-primary">Register</a>
            </div>
        </div>
    </div>
</section>
<!-- Banner section end -->

<main class="py-4">
   <div class="container">
   <div class="header-info">
   <div class="container">
   <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
   <div class="carousel-inner">
   <div class="carousel-item active">
      <img class="d-block w-100" src="./images/buyer.png" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="./images/b.png" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="..." alt="Third slide">
    </div>
  </div>
</div>
</div>
</div>
</div>
</main>

<!--Purchase research section-->
<section class="about-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <img src="./images/reg.png" height="350px" width="400px" alt="">
            </div>
            <div class="col-lg-7 about-text">
                <h2>Purchase Research Products</h2>
                <p align="justify"><h6>We provide you valued service 24 hours to provide you with the best and most efficient service..
                Buyers will be able to purchase the projects or products according to their needs.</h6>
                </p>
            </div>
        </div>
    </div>
</section>
<br>
<!--Purchase research section end-->

<!--Funding for Product section-->
<section class="about-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <img src="./images/fund.jpg" height="350px" width="400px"alt="">
            </div>
            <div class="col-lg-7 about-text">
                <h2>Funding for New Researchers for Uplift their Products</h2>
                <p align="center"><h6>We provide you valued service 24 hours to provide you with the best and most efficient service..</p></h6>
                <h6><p align="justify">Providing new resources and finance need for program or project.While this is usually in the form of money</h6>
                
                </p>
            </div>
        </div>
    </div>
</section>
<!--Funding for Product section end-->
<br>

<!--Offer Well Defined Agreements-->
<section class="about-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <img src="./images/agreement.jpg" height="350px" width="400px" alt="">
            </div>
            <div class="col-lg-7 about-text">
                <h6><p align="justify">We provide you valued service 24 hours to provide you with the best and most efficient service..<br>
                    Researchers, Buyers and also investers can make any arragment with their needs under legally agreement. It will provide 
                    Resonalable and trustworthy deal for every person 
                </p></h6>
            </div>
        </div>
    </div>
</section>
<!--Funding for Product section end-->
<br>	
	<!--Footer-->
	<jsp:include page="./layouts/footer.jsp"/>
	<!--End Footer-->
</body>
</html>
