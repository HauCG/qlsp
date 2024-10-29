<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="container">
<h1 class="headerH1">Edit Product</h1>
<c:if test="${not empty message}">
    <div class="alert alert-success">${message}</div>
</c:if>
<form method="post">
    <input type="hidden" name="id" value="${product.id}">
    <fieldset class="border p-4">
        <legend class="w-auto">Product Information</legend>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" value="${product.name}" required>
        </div>
        <div class="form-group">
            <label for="price">Price:</label>
            <input type="number" class="form-control" id="price" step="0.01" name="price" value="${product.price}" required>
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <input type="text" class="form-control" id="description" name="description" value="${product.description}" required>
        </div>
        <div class="form-group">
            <label for="manufacturer">Manufacturer:</label>
            <input type="text" class="form-control" id="manufacturer" name="manufacturer" value="${product.manufacturer}" required>
        </div>
        <button type="submit" class="btn btn-warning">Update Product</button>
    </fieldset>
    <br>
    <button  class="btn btn-primary mb-3 float-right" href="/products">Back to Product List</button>
</form>
</body>
</html>
