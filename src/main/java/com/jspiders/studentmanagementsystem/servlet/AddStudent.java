package com.jspiders.studentmanagementsystem.servlet;

import java.io.IOException;

import com.jspiders.studentmanagementsystem.jdbc.StudentJDBC;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/add_student")
public class AddStudent extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	StudentJDBC studentJDBC = new StudentJDBC();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		long mobile = Long.parseLong(req.getParameter("mobile"));
		studentJDBC.addStudent(id, name, email, mobile);
		req.setAttribute("message", "Student Added.");
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("add_student.jsp");
		requestDispatcher.forward(req, resp);
		
	}

}
