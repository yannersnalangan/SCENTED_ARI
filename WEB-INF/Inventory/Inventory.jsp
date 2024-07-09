<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                        <div class="form-group col-md-4 text-left mb-3">
                            <form action="${pageContext.request.contextPath}/searchProduct" method="get">
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
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9">
                                        <button type="submit" class="btn btn-primary btn-sm" style="background-color: #dc3545; border-color: #dc3545;">Search</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <hr/>
                        <table class="table table-sm">
                            <thead>
                                <tr>
                                    <th scope="col">Product ID</th>
                                    <th scope="col">Product Name</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Size</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${productList}" var="product">
                                    <tr>
                                        <td>${product.productId}</td>
                                        <td>${product.productName}</td>
                                        <td>${product.productDescription}</td>
                                        <td>${product.size}</td>
                                        <td>${product.price}</td>
                                        <td>${product.quantity}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/product/update/form?productId=${product.productId}" class="btn btn-sm btn-link" style="color:#dc3545;">Edit</a>
                                            <a href="${pageContext.request.contextPath}/product/delete?productId=${product.productId}" class="btn btn-sm btn-link" style="color:#dc3545;">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <div class="form-group col-md-4 text-left mb-3">
                            <a href="${pageContext.request.contextPath}/product/create/form" class="btn btn-primary btn-sm" style="background-color: #dc3545; border-color:#dc3545;">Add Product</a>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
