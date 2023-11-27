<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Add employee</title>
</head>
<body>
    <h2> MADE A CHANGE to test </h2>
    <h1>ADded WEb Hook</h1>
   <h2>TEST TEST TEST</h2>
<form:form action="saveEmployee" modelAttribute="employee">
    <form:hidden path="id"/>

    Name <form:input path="name"/>
    <br>
    <br>
    Surname <form:input path="surname"/>
    <br>
    <br>
    Department <form:input path="department"/>
    <br>
    <br>
    Salary <form:input path="salary"/>
    <br>
    <br>
    <input type="submit" value="Ok">
</form:form>




</body>
</html>
