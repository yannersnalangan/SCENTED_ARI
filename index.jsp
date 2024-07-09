<%-- 
    Document   : index
    Created on : 6 May 2024, 9:41:50 pm
    Author     : Anne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Scented by Ari</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

    
    <link rel="icon" type="image/x-icon" href="assets/images/favicon.ico">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- Bootstrap core CSS -->
    <link type="text/css" href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--


https://templatemo.com/tm-546-sixteen-clothing

-->

    <!-- Additional CSS Files -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/scented-ari.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.css">

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
              <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath}/index">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/products">Our Products</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/about">About Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/contact">Contact Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/option">Admin</a>
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
    <!-- Banner Starts Here -->
    <div class="banner header-text">
      <div class="owl-banner owl-carousel">
        <div class="banner-item-01">
          <div class="text-content">
            <h4>Best Offer</h4>
            <h2>New Arrivals On Sale</h2>
          </div>
        </div>
        <div class="banner-item-02">
          <div class="text-content">
            <h4>Flash Deals</h4>
            <h2>Get your best products</h2>
          </div>
        </div>
        <div class="banner-item-03">
          <div class="text-content">
            <h4>Last Minute</h4>
            <h2>Grab last minute deals</h2>
          </div>
        </div>
      </div>
    </div>
    <!-- Banner Ends Here -->

    <div class="latest-products">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>Latest Scents</h2>
              <a href="${pageContext.request.contextPath}/products">view all products <i class="fa fa-angle-right"></i></a>
            </div>
          </div>
          <div class="col-md-4">
            <div class="product-item">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/images/new_scent1.jpg" alt=""></a>
              <div class="down-content">
                <a href="#"><h4>Breathin'</h4></a>
                <h6>₱190</h6>
                <a><h5>No Tear Left to Cry inspired scent</h5></a>
                <p>An Amber Fougere fragrance that has fresh lavender essence emerges with a frizzy and peppery burst. A scent ensures of a luxurious, elegant and fresh aura.</p><br><br>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="product-item">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/images/new_scent2.jpg" alt=""></a>
              <div class="down-content">
                <a href="#"><h4>Winter</h4></a>
                <h6>₱190</h6>
                <a><h5>Love Me Harder inspired scent</h5></a>
                <p>a sweet-fruity fragrance. It starts with citrus notes of pear and tangerine which both joined by vanilla extract.  A scent that is resembles for both young and sweet.</p><br>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="product-item">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/images/new_scent3.jpg" alt=""></a>
              <div class="down-content">
                <a href="#"><h4>Eternal</h4></a>
                <h6>₱190</h6>
                <a><h5>Yes and? inspired scent</h5></a>
                <p>A truly universally flattering fragrance. A soft, sweet and amber scent that is mixed with a woody aroma. Its  unique notes of jasmine, ambergris and cedar mesh giving you the perfect classy and elegant scent.</p><br>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="product-item">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/images/new_scent4.jpg" alt=""></a>
              <div class="down-content">
                <a href="#"><h4>Avenue</h4></a>
                <h6>₱190</h6>
                <a><h5>One Last Time inspired scent</h5></a>
                <p>A floral fragrance. Tuberose, jasmine and orange blossom is a sexy mix of floral notes with a hint of sweetness giving this scent a sweet-floral richness essence. Its white floral and sweet aroma perfectly blends a seductive and expressive scent.</p><br>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="product-item">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/images/new_scent5.jpg" alt=""></a>
              <div class="down-content">
                <a href="#"><h4>Daydreamin'</h4></a>
                <h6>₱190</h6>
                <a><h5>Fantasize inspired scent</h5></a>
                <p>A sweet coconut gourmand fragrance. Smell the sweetness similar to sugar wool or lollipop. The notes of vanilla and coconut creates a scent of fantasy and fairy tales.</p><br><br><br>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="best-features">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
          </div>
           <div class="col-md-6">
            <div class="left-content">
              <h3 style="color: #D14D72">Looking for the best scent? We got you!</h3>
              <p style="font-size:17px">Our oil-based fragrance lasts for a long time. It's suitable for daily use and you can have it at an affordable price.</p>
              <a href="${pageContext.request.contextPath}/about" class="filled-button">Read More</a>
            </div>
          </div>
          <div class="col-md-4">
            <div class="right-image">
              <img src="${pageContext.request.contextPath}/assets/images/home_ag.jpg" alt="">
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="call-to-action">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="inner-content">
              <div class="row">
                <div class="col-md-8">
                  <h4>Sweet &amp; Fresh <em>Scented by Ari</em> Products</h4>
                  <p>Grab our Ariana Grande inspired perfumes and you will smell good!</p>
                </div>
                <div class="col-md-4">
                  <a href="${pageContext.request.contextPath}/cart" class="filled-button">Purchase Now</a>
                </div>
              </div>
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
              <p>Copyright &copy; 2020 Scented Ari Co., Ltd.</p>
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


    <script language = "text/Javascript"> 
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

