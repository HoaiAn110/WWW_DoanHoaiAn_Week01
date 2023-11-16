<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Permissions</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            margin-bottom: 20px;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #dee2e6;
        }

        th {
            background-color: #007BFF;
            color: #fff;
        }

        tbody tr:nth-child(even) {
            background-color: #f8f9fa;
        }

        button {
            display: block;
            width: 100%;
            padding: 12px;
            background: #007BFF;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Phân Quyền</h1>

    <form action="controller?action=Decentralization" method="post">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Account ID</th>
                <th>Role ID</th>
                <th>Is Grant</th>
                <th>Note</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="grant" items="${listGrant}">
                <tr>
                    <td>${grant.accountId}</td>
                    <td>${grant.roleId}</td>
                    <td>${grant.isGrant}</td>
                    <td>${grant.note}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <button type="submit" class="btn btn-primary">Phân Quyền</button>
    </form>
</div>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
