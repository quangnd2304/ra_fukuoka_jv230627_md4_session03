<%--
  Created by IntelliJ IDEA.
  User: This MC
  Date: 07/12/2023
  Time: 6:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Student</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/StudentController?action=update" method="post">
    <label for="studentId">Student Id</label>
    <input type="text" id="studentId" name="studentId" value="${studentUpdate.studentId}" readonly/><br>
    <label for="studentName">Student Name</label>
    <input type="text" id="studentName" name="studentName" value="${studentUpdate.studentName}"/><br>
    <label for="age">Age</label>
    <input type="number" id="age" name="age" value="${studentUpdate.age}"/><br>
    <label for="active">Status</label>
    <input type="radio" id="active" name="status" value="true" ${studentUpdate.status?"checked":""}/><label for="active">Active</label>
    <input type="radio" id="inactive" name="status" value="false" ${studentUpdate.status?"":"checked"}/><label for="inactive">Inactive</label><br>
    <input type="submit" value="Update"/>
</form>
</body>
</html>
