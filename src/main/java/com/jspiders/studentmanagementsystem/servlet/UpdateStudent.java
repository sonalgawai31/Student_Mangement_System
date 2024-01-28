package com.jspiders.studentmanagementsystem.servlet;

import java.io.IOException;
import java.util.List;

import com.jspiders.studentmanagementsystem.jdbc.StudentJDBC;
import com.jspiders.studentmanagementsystem.object.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/update_student")
public class UpdateStudent extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	StudentJDBC studentJDBC = new StudentJDBC();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		long mobile = Long.parseLong(req.getParameter("mobile"));
		
		studentJDBC.updateStudent(id, name, email, mobile);
		List<Student> students = studentJDBC.getAllStudents();
		req.setAttribute("students", students);
		req.setAttribute("message", "student updated.");
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("get_students.jsp");
		requestDispatcher.forward(req, resp);
	}

}
