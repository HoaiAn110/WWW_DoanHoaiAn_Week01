<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1>Thông tin Tài Khoản</h1>

    <form action="controller" method="post">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Account ID</th>
                <th>Full Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="account" items="${dashboard}">
                <tr>
                    <td>${account.accountId}</td>
                    <td>${account.fullName}</td>
                    <td>${account.email}</td>
                    <td>${account.phone}</td>


                    <td><input type="hidden" name="account_id_delete" value="${account.accountId}">
                        <button type="submit" class="btn btn-danger" name="action" value="Delete">Delete</button>
                    </td>


                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="mt-3">
            <a href="create.jsp" class="btn btn-success" style="background-color: red; color: white;">Tạo</a>
            <button name="action" value="Permission" type="submit" class="btn btn-primary" style="background-color: blue; color: white;">Phân Quyền</button>
            <button name="action" value="ViewRole" type="submit" class="btn btn-success" style="background-color: green; color: white;">ViewRole</button>
            <button name="action" value="ViewLog" type="submit" class="btn btn-success" style="background-color: orange; color: white;">ViewLog</button>
        </div>

        <br>
        <diV class="mt-3">
            <button name="action" value="LogOut" type="submit" class="btn btn-success">Đăng Xuất</button>
        </diV>
    </form>
</div>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
