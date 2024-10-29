<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
  <div class="text-center mb-4">
    <h1 style="display: inline-block;
          padding: 15px 30px;
          border: 1px;
          border-radius: 5px;
          background-color: #007bff;
          color: white;
          font-weight: bold;">Product List</h1>
  </div>

  <div class="text-right mb-3">
    <a href="/products?action=create" class="btn btn-primary">Create New Product</a>
  </div>

  <table class="table table-bordered table-striped">
    <thead>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Price</th>
      <th>Description</th>
      <th>Manufacturer</th>
      <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${products}">
      <tr>
        <td>${product.id}</td>
        <td>${product.name}</td>
        <td>${product.price}</td>
        <td>${product.description}</td>
        <td>${product.manufacturer}</td>
        <td>
          <a href="/products?action=view&id=${product.id}" class="btn btn-info btn-sm">View</a>
          <a href="/products?action=edit&id=${product.id}" class="btn btn-warning btn-sm">Edit</a>
          <a href="/products?action=delete&id=${product.id}" class="btn btn-danger btn-sm">Delete</a>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
