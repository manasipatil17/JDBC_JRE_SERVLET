package com.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String Uname = req.getParameter("username");
		String pass = req.getParameter("password");
		PrintWriter out = resp.getWriter();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3360/tka227", "root", "root");
			PreparedStatement ps = c.prepareStatement("select * from student where email=? AND password =?");
			ps.setString(1, Uname);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				out.print("<h1>" + "LOGIN Successfully..." + "</h1>");
				HttpSession session= req.getSession();
				
				session.setAttribute("sname", rs.getString(1));
				session.setAttribute("email", rs.getString(2));
				session.setAttribute("MobNo", rs.getString(4));
				
				RequestDispatcher rd = req.getRequestDispatcher("/Profile.jsp");
				rd.include(req, resp);
			} else {
				out.print("<h1>" + "INVALID CREDENTIALS..." + "</h1>");
				RequestDispatcher rd = req.getRequestDispatcher("/Register.html");
				rd.include(req, resp);
			}
			c.close();

		} catch (Exception e) {

		}
	}
}