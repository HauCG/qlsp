<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Delete Product</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="container">
<h1 class="headerH1" >Delete Product</h1>
<p>Are you sure you want to delete this product?</p>
<p><strong>Name:</strong> ${product.name}</p>
<p><strong>Price:</strong> ${product.price}</p>
<p><strong>Description:</strong> ${product.description}</p>
<p><strong>Manufacturer:</strong> ${product.manufacturer}</p>
<form method="post">
  <input type="hidden" name="id" value="${product.id}">
  <button type="submit" class="btn btn-danger">Delete</button>
  <a class="btn btn-secondary" href="/products">Cancel</a>
</form>
</body>
</html>
