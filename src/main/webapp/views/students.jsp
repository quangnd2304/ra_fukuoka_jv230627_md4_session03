<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: This MC
  Date: 05/12/2023
  Time: 7:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Student</title>
</head>
<body>
<table border="1">
    <thead>
    <tr>
        <th>No</th>
        <th>Student ID</th>
        <th>Student Name</th>
        <th>Age</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <%-- Lay listStudent trong request va hien thi --%>
    <c:set var="no" value="1"/>
    <c:forEach items="${listStudent}" var="student">
        <tr>
            <td>${no}</td>
            <td>${student.studentId}</td>
            <td>${student.studentName}</td>
            <td>${student.age}</td>
            <td>${student.status?"Active":"Inactive"}</td>
            <td>
                <a href="<%=request.getContextPath()%>/StudentController?action=initUpdate&&studentId=${student.studentId}">Update</a>
                <a href="<%=request.getContextPath()%>/StudentController?action=delete&&studentId=${student.studentId}">Delete</a>
            </td>
        </tr>
        <c:set var="no" value="${no+1}"/>
    </c:forEach>
    </tbody>
</table>
<a href="<%=request.getContextPath()%>/views/newStudent.jsp">Create new student</a>
</body>
</html>
