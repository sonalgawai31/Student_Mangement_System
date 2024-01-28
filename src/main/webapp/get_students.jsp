<%@page import="com.jspiders.studentmanagementsystem.object.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="nav_bar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Page</title>
<style type="text/css">
	body{
		font-family: 'segoe UI',Tahoma,Geneva, Verdana,sans-serif;
		background-color: #f5f5f5;
		margin: 0;
		padding: 0;
		align-items: center;
		justify-content: center;
		height: 100vh
	}
	div{
		box-shadow: 0 0 10px rgba(0,0,0,0.1);
		border-radius: 8px;
		padding: 20px;
		taxt-align:center;
	}
	table{
		width: 50%;
		border-collapse: collapse;
		margin-top: 20px;
	}
	th,td{
		border: 1px solid #ddd;
		padding: 10px;
		text-align: center;
	}
	th{
		background-color: gray;
		color: white;
	}
	tr:nth-child(even){
		background-color: #f2f2f2;
	}
	.a1{
		text-decoration:none;
		color: red;
		font-size: 20px;
		text-align: center;
	}
	.a2{
		text-decoration:none;
		color: orange;
		font-size: 20px;
		text-align: center;
	}
	h1{
		text-align: center;
		color: red;
		
	}
	
	
</style>
</head>
<body>
	<%
	@SuppressWarnings("unchecked")
	List<Student> Students = (List<Student>) request.getAttribute("students");
	if(Students != null && Students.size() > 0){
	%>
	<div align="center">
		<table border="1px solid">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Action1</th>
				<th>Action2</th>
			</tr>
			<% 
			for(Student student : Students){
			%>
			<tr>
				<td><%=student.getId() %></td>
				<td><%=student.getName()%></td>
				<td><%=student.getEmail() %></td>
				<td><%=student.getMobile()%></td>
				<td ><a class="a1" href="delete_student?id=<%=student.getId()%>">DELETE</a></td>
				<td ><a class="a2" href="edit_student?id=<%=student.getId() %>">UPDATE</a></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	}else{
	%>
	<div align="center">
		<h1>Student not found.</h1>
	</div>
	<%
	}
	String message = (String) request.getAttribute("message");
	if(message != null){
	%>
	<div align="center">
		<h1><%=message %></h1>
	</div>
	<%
	}
	%>
</body>
</html>