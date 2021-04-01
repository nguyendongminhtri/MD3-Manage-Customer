<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit customer</title>
    <style>
        .message{
            color:green;
        }
    </style>
</head>
<body>
<h1>Edit customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span name="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p><a href="customers">Back to customer list</a></p>
<form method="post">
    <fieldset>
        <legend>Customer information</legend>
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" id="name" value="${requestScope["customer"].getName()}"/> </td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" id="email" value="${requestScope["customer"].getEmail()}"/></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="address" id="address" value="${requestScope["customer"].getAddress()}"/></td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit">Update customer</button></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>