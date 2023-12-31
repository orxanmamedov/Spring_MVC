<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ipada
  Date: 25.09.2023
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Employees</title>
</head>
<body>
<table>
    <tr>
        <th> Name </th>
        <th> Surname </th>
        <th> Department </th>
        <th> Salary </th>
        <th> Operations</th>
    </tr>

    <c:forEach var="emp" items="${employeesList}">
        <c:url var="updateButton" value="/updateEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <tr>
            <td> ${emp.name} </td>
            <td> ${emp.surname} </td>
            <td> ${emp.department} </td>
            <td> ${emp.salary} </td>
            <td> <input type="button" value="Update" onclick="window.location.href = '${updateButton}'"/>
                 <input type="button" value="Delete" onclick="window.location.href = '${deleteButton}'"/>
            </td>
        </tr>
    </c:forEach>

</table>
<br>

<input type="button" value="Add" onclick="window.location.href = 'addNewEmployee'"/>


</body>
</html>
