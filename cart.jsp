<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <title>Scented Ari</title>
    <!-- Link to CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style">
    <!-- Box Icons -->
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <style>
        /* Google Fonts */
        @import url('https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap');

        * {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            scroll-padding-top: 2rem;
            scroll-behavior: smooth;
            box-sizing: border-box;
            list-style: none;
            text-decoration: none;
        }

        :root {
            --main-color: #fd4646;
            --text-color: #171427;
            --bg-color: #fff;
        }

        img {
            width: 100%;
        }

        body {
            color: var(--text-color);
        }

        .container {
            max-width: 1068px;
            margin: auto;
            width: 100%;
        }

        section {
            padding: 4rem 0 3rem;
        }

        /* Header */
        header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background: var(--bg-color);
            box-shadow: 0 1px 4px hsl(0 4% 15% / 10%);
            z-index: 100;
        }

        .nav {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px 0;
        }

        .navbar .navbar-brand h2 {
            color: black;
            text-transform: uppercase;
            font-size: 24px;
            font-weight: 700;
        }

        .navbar .navbar-brand h2 em {
            font-style: normal;
            color: #F06292;
        }

        #cart-icon {
            float: right;
            font-size: 1.8rem;
            cursor: pointer;
        }

        /* Cart */
        .cart {
            position: fixed;
            top: 0;
            right: -100%;
            width: 360px;
            min-height: 100vh;
            padding: 20px;
            background: #f7f7f7;
            box-shadow: -2px 0 4px hsl(0 4%, 15% / 10%);
            transition: 0.3s;
        }

        .cart.active {
            right: 0;
        }

        .cart-title {
            text-align: center;
            font-size: 1.5rem;
            font-weight: 600;
            margin: 2rem;
        }

        .cart-box {
            display: grid;
            grid-template-columns: 32% 50% 18%;
            align-items: center;
            gap: 1rem;
            margin-top: 1rem;
        }

        .cart-img {
            width: 100px;
            height: 100px;
            object-fit: contain;
            padding: 10px;
        }

        .detail-box {
            display: grid;
            row-gap: 0.5rem;
        }

        .cart-product-title {
            font-size: 1rem;
            text-transform: uppercase;
        }

        .cart-price {
            font-weight: 500;
        }

        .cart-quantity {
            border: 1px solid var(--text-color);
            outline-color: var(--main-color);
            width: 2.4rem;
            text-align: center;
            font-size: 1rem;
        }

        .cart-remove {
            font-size: 24px;
            color: #ff0033;
            cursor: pointer;
        }

        .total {
            display: flex;
            justify-content: flex-end;
            margin-top: 1.5rem;
            border-top: 1px solid var(--text-color);
        }

        .total-title {
            font-size: 1rem;
            font-weight: 600;
        }

        .total-price {
            margin-left: 0.5rem;
        }

        .btn-buy {
            display: flex;
            margin: 1.5rem auto 0 auto;
            padding: 12px 20px;
            border: none;
            background: #FDCEDF;
            color: #000000;
            font-size: 1rem;
            cursor: pointer;
            font-weight: 500;
            border-radius: 5px;
            transition: all 0.3s;
        }

        .btn-buy:hover {
            background: var(--text-color);
            color: #fff;
        }

        #close-cart {
            position: absolute;
            top: 1rem;
            right: 0.8rem;
            font-size: 2rem;
            color: var(--text-color);
            cursor: pointer;
        }

        .section-title {
            font-size: 1.5rem;
            font-weight: 600;
            text-align: center;
            margin-bottom: 1.5rem;
        }

        .shop {
            margin-top: 2rem;
        }

        /* Shop Content */
        .shop-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, auto));
            gap: 1.5rem;
        }

        .product-box {
            position: relative;
        }

        .product-box:hover {
            padding: 10px;
            border: 1px solid var(--text-color);
            transition: 0.3s;
        }

        .product-img {
            width: 100%;
            height: auto;
            margin-bottom: 0.5rem;
        }

        .product-title {
            font-size: 1.1rem;
            font-weight: 600;
            text-transform: uppercase;
            margin-bottom: 0.5rem;
        }

        .price {
            font-weight: 500;
        }

        .add-cart {
            position: absolute;
            bottom: 0;
            right: 0;
            background-color: #FDCEDF;
            color: #000000;
            font-size: 1.3rem;
            padding: 15px;
            cursor: pointer;
            border-radius: 2px;
            transition: all 0.3s;
        }

        .add-cart:hover {
            font-size: 1.3rem;
            padding: 15px;
            background: var(--text-color);
            color: #fff;
        }

        /* BREAKPOINT */
        @media (max-width: 1080px) {
            .nav {
                padding: 15px;
            }

            section {
                padding: 3rem 0 2rem;
            }

            .container {
                margin: 0 auto;
                width: 90%;
            }

            .shop {
                margin-top: 2rem !important;
            }
        }

        @media (max-width: 400px) {
            .nav {
                padding: 11px;
            }

            .logo {
                font-size: 1rem;
            }

            .cart {
                width: 320px;
            }

            .shop {
                margin-top: 1rem !important;
            }

            .cart {
                width: 280px;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <!-- Nav bar -->
        <div class="nav container">
            <nav class="navbar navbar-expand-lg">
                <a class="navbar-brand"><h2>Scented by <em>Ari</em></h2></a>
            </nav>
            <!-- Cart Icon -->
            <i class='bx bx-cart' id="cart-icon"></i>
            <!-- Cart -->
            <div class="cart">
                <h2 class="cart-title">Your Cart</h2>
                <!-- Content -->
                <div class="cart-content">
                    <!-- Cart items will be dynamically added here -->
                </div>
                <!-- Total -->
                <div class="total">
                    <div class="total-title">Total</div>
                    <div class="total-price">&#8369;0</div>
                </div>
                <!-- Buy Button -->
                <button type="button" class="btn-buy">Buy Now</button>
                <!-- Cart Close -->
                <i class='bx bx-x-circle' id="close-cart"></i>
            </div>
        </div>
    </header>

    <!-- Shop -->
    <section class="shop container">
        <h2 class="section-title">Shop Products</h2>
        <!-- Content -->
        <div class="shop-content">
            <!-- Product Boxes -->
            <div class="product-box">
                <img src="${pageContext.request.contextPath}/assets/images/product_et.jpg" alt="Everytime" class="product-img">
                <h2 class="product-title">Everytime</h2>
                <span class="price">₱170.00</span>
                <i class='bx bx-cart add-cart'></i>
            </div>
            <div class="product-box">
                <img src="${pageContext.request.contextPath}/assets/images/product_imgn.jpg" alt="Imagine" class="product-img">
                <h2 class="product-title">Imagine</h2>
                <span class="price">₱170.00</span>
                <i class='bx bx-cart add-cart'></i>
            </div>
            <div class="product-box">
                <img src="${pageContext.request.contextPath}/assets/images/product_mt.jpg" alt="Main Thing" class="product-img">
                <h2 class="product-title">Main Thing</h2>
                <span class="price">₱170.00</span>
                <i class='bx bx-cart add-cart'></i>
            </div>
            <div class="product-box">
                <img src="${pageContext.request.contextPath}/assets/images/product_iy.jpg" alt="Into You" class="product-img">
                <h2 class="product-title">Into You</h2>
                <span class="price">₱170.00</span>
                <i class='bx bx-cart add-cart'></i>
            </div>
            <div class="product-box">
                <img src="${pageContext.request.contextPath}/assets/images/product_n.jpg" alt="Needy" class="product-img">
                <h2 class="product-title">Needy</h2>
                <span class="price">₱170.00</span>
                <i class='bx bx-cart add-cart'></i>
            </div>
            <div class="product-box">
                <img src="${pageContext.request.contextPath}/assets/images/new_scent1.jpg" alt="Breathin" class="product-img">
                <h2 class="product-title">Breathin</h2>
                <span class="price">₱190.00</span>
                <i class='bx bx-cart add-cart'></i>
            </div>
            <div class="product-box">
                <img src="${pageContext.request.contextPath}/assets/images/new_scent2.jpg" alt="Winter" class="product-img">
                <h2 class="product-title">Winter</h2>
                <span class="price">₱190.00</span>
                <i class='bx bx-cart add-cart'></i>
            </div>
            <div class="product-box">
                <img src="${pageContext.request.contextPath}/assets/images/new_scent3.jpg" alt="Eternal" class="product-img">
                <h2 class="product-title">Eternal</h2>
                <span class="price">₱190.00</span>
                <i class='bx bx-cart add-cart'></i>
            </div>
            <div class="product-box">
                <img src="${pageContext.request.contextPath}/assets/images/new_scent4.jpg" alt="Avenue" class="product-img">
                <h2 class="product-title">Avenue</h2>
                <span class="price">₱190.00</span>
                <i class='bx bx-cart add-cart'></i>
            </div>
            <div class="product-box">
                <img src="${pageContext.request.contextPath}/assets/images/new_scent5.jpg" alt="Daydreamin" class="product-img">
                <h2 class="product-title">Daydreamin</h2>
                <span class="price">₱190.00</span>
                <i class='bx bx-cart add-cart'></i>
            </div>
        </div>
    </section>

    <!-- Link to JS -->
    <script src="${pageContext.request.contextPath}/main.js"></script>
    <script src="${pageContext.request.contextPath}/app.js"></script>
</body>
</html>
