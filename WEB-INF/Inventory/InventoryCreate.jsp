<%-- 
    Document   : index
    Created on : 05 3, 23, 5:38:52 PM
    Author     : WANHEDA
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/bootstrap.min.css">
        <link rel="icon" type="image/x-icon" href="assets/images/favicon.ico">
        <script type="text/javascript" src="${pageContext.request.contextPath}/script/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-3.6.4.min.js"></script>
    </head>
    <body>
        <jsp:include page="../Navigation/TopNav.jsp" />
        <div class="container-fluid">
            <main role="main" class="col-md-12 ml-sm-auto col-lg-12 px-md-4 pt-4">
                <div class="card mb-3">
                    <div class="card-body">
                        <!-- Display the message -->
                        <c:if test="${not empty sessionScope.message}">
                            <div class="alert">
                                ${sessionScope.message}
                            </div>
                            <c:remove var="message" scope="session"/>
                        </c:if>
                        
                        <div class="form-row">
                            <div class="form-group col-md-12 text-left mb-3">
                                <form method="POST" action="${pageContext.request.contextPath}/product/create">
                                    <div class="mb-1 row">
                                        <label for="productId" class="col-sm-3 col-form-label">Product ID</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="productId" name="productId">
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="productName" class="col-sm-3 col-form-label">Product Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="productName" name="productName">
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="productDescription" class="col-sm-3 col-form-label">Product Description</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="productDescription" name="productDescription">
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="size" class="col-sm-3 col-form-label">Size</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="size" name="size">
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="price" class="col-sm-3 col-form-label">Price</label>
                                        <div class="col-sm-9">
                                            <input type="number" class="form-control form-control-sm" id="price" name="price">
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="quantity" class="col-sm-3 col-form-label">Quantity</label>
                                        <div class="col-sm-9">
                                            <input type="number" class="form-control form-control-sm" id="quantity" name="quantity">
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-sm btn-primary" button style="background-color: #dc3545; border-color: #dc3545;">Save</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </body>
</html>
