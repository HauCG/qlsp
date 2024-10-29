<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Product</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .headerH1 {
            display: inline-block;
            padding: 15px 30px;
            border: 1px solid black;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }
    </style>
</head>
<body class="container">
<h1 class="headerH1">Product Details</h1>
<p><strong>Name:</strong> ${product.name}</p>
<p><strong>Price:</strong> ${product.price}</p>
<p><strong>Description:</strong> ${product.description}</p>
<p><strong>Manufacturer:</strong> ${product.manufacturer}</p>
<a class="btn btn-primary" href="/products">Back to Product List</a>
</body>
</html>
