<%-- 
    Document   : about
    Created on : 6 May 2024, 9:39:38 pm
    Author     : Anne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Scented by Ari - About Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">


    
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- Bootstrap core CSS -->
    <link type="text/css" href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--

TemplateMo 546 Sixteen Clothing

https://templatemo.com/tm-546-sixteen-clothing

-->

    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/fontawesome.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/scented-ari.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/owl.css">

  </head>

  <body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->

    <!-- Header -->
    <header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <a class="navbar-brand"><h2>Scented by <em>Ari</em></h2></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/index">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/products">Our Products</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath}/about">About Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/contact">Contact Us</a>
              </li>
              <!-- Cart Icon -->
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/cart" id="cart-icon"><i class="fas fa-shopping-cart"></i></a>
              </li>
              <!-- User Icon -->
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/login"><i class="fas fa-user"></i></a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <!-- Page Content -->
    <div class="page-heading about-heading header-text">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h4>about</h4>
              <h2>Scented by Ari</h2>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="best-features about-features">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>Background</h2>
            </div>
          </div>
          <div class="col-md-4">
            <div class="right-image">
              <img src="${pageContext.request.contextPath}/assets/images/about_ag.jpg" alt="">
            </div>
          </div>
          <div class="col-md-6">
            <div class="left-content">
              <h3 style="color: #D14D72">Scented by Ari</h3>
              <p style="font-size:17px">This business was created by our love for Ariana Grande. We love everything that she has come up with, and her enthusiasm is very inspiring. After being inspired by her scents, we decided to make some perfumes that are affordable for everyone who wishes to smell sweet and fresh.</p>
              <ul class="social-icons">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="inner-content">
              <p>Copyright &copy; 2020 Scented by Ari Co., Ltd.</p>
            </div>
          </div>
        </div>
      </div>
    </footer>


    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/custom.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/owl.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/slick.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/isotope.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/accordions.js"></script>


    <script language = "text/javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>


  </body>

</html>