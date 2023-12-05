<%--
  Created by IntelliJ IDEA.
  User: This MC
  Date: 05/12/2023
  Time: 7:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create New Student</title>
</head>
<body>
    <form action="<%=request.getContextPath()%>/StudentController?action=create" method="post">
        <label for="studentName">Student Name</label>
        <input type="text" id="studentName" name="studentName"/><br>
        <label for="age">Age</label>
        <input type="number" id="age" name="age"/><br>
        <label for="active">Status</label>
        <input type="radio" id="active" name="status" value="true" checked/><label for="active">Active</label>
        <input type="radio" id="inactive" name="status" value="false"/><label for="inactive">Inactive</label><br>
        <input type="submit" value="Create"/>
    </form>
</body>
</html>
