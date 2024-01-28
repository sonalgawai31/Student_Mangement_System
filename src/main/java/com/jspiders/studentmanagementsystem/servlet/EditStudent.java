package com.jspiders.studentmanagementsystem.servlet;

import java.io.IOException;

import com.jspiders.studentmanagementsystem.jdbc.StudentJDBC;
import com.jspiders.studentmanagementsystem.object.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/edit_student")
public class EditStudent extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	StudentJDBC studentJDBC = new StudentJDBC();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		Student student = studentJDBC.getStudentById(id);
		req.setAttribute("student", student);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("update_student.jsp");
		requestDispatcher.forward(req, resp);
	}

}
