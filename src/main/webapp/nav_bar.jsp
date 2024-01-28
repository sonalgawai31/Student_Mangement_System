<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nav Bar</title>
<style type="text/css">
	body{
	margin: 0px;
	padding: 0px;
	font-family: Arial,sans-serif;
	}
	nav{
		background-color: gray;
		color: white;
		text-align: right;
		padding: 15px
	}
	nav a{
		color: white;
		text-decoration: none;
		font-size:15px;
		padding: 15px;
		margin: 0 10px;
		display: inline-block;
	}
	nav a:hover{
		background: white;
		color: black;
		border-radius: 30px;
	}
	
</style>
</head>
<body>
	<nav>
		<a href="home.jsp">Home</a>
		<a href="add_student.jsp">Add</a>
		<a href="get_students">Student List</a>
	</nav>
</body>
</html>