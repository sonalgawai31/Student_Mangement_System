<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="nav_bar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Page</title>
<style type="text/css">
	body{
		font-family: Arial,sens-serif;
		background-color: #f4f4f4;
		margin: 0;
		padding: 0;
	}
	div{
		margin-top: 30px;
	}
	table{
		width: 50%;
		margin: 20px auto;
		border-collapse: collapse;
	}
	
	th,td{
		padding: 10px;
		text-align: center;
		border: 1px solid;
	}
	
	th{
		background: gray;
		color: white;
	}
	
	input[type=text]{
		width: 100%;
		padding: 8px 12px;
		margin: 8px 0;
		box-sizing: border-box;
	}
	
	input[type=submit]{
		width:90px;
		font-size:20px;
		background-color: gray;
		color: white;
		padding: 10px 15px;
		border: 1px solid black;
		border-radius: 5px;
		cursor: pointer;
	}
	
	input[type=submit]:hover{
		background: red;
		color: black;
		border:1px solid red;
		border-radius: 50%;	
	}
	h1{
		text-align: center;
		color: green;
	}
	
</style>
</head>
<body>
	<div align="center">
		<form action="add_student" method="post">
			<table border="1px solid">
				<tr>
					<td>ID</td>
					<td><input type="text" name="id"> </td>
				</tr>
				<tr>
					<td>NAME</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>MOBILE No.</td>
					<td><input type="text" name="mobile"></td>
				</tr>
			</table>
			<input type="submit" value="ADD"/>
		</form>
	</div>
	<% 
	String message = (String) request.getAttribute("message");
	if(message != null){
	%>
	<div>
		<h1><%=message %></h1>
	</div>
	<%
	}
	%>
	
</body>
</html>