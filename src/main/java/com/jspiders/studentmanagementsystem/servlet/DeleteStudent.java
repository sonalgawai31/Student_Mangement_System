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

@WebServlet("/delete_student")
public class DeleteStudent extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	StudentJDBC studentJDBC = new StudentJDBC();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		studentJDBC.deleteStudent(id);
		req.setAttribute("message", "student deleted");
		List<Student> students = studentJDBC.getAllStudents();
		req.setAttribute("students", students);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("get_students.jsp");
		requestDispatcher.forward(req, resp);
	}

}
