package com.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/submitform")
public class Student extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname=request.getParameter("fullname");
		String email =request.getParameter("email");
		String uname=request.getParameter("username");
		String pass=request.getParameter("password");
		//String mobNo=request.getParameter("phone");
		long phoneNo=Long.parseLong(request.getParameter("phone"));
		
		System.out.println(fname);
		System.out.println(email);
		System.out.println(uname);
		System.out.println(pass);
		System.out.println(phoneNo);
		
		PrintWriter out= response.getWriter();
		out.println("<h1>"+fname+"</h1>");
		out.println("<h1>"+email+"</h1>");
		out.println("<h1>"+uname+"</h1>");
		out.println("<h1>"+pass+"</h1>");
		out.println("<h1>"+phoneNo+"</h1>");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3360/tka227","root","root");
		    PreparedStatement ps= c.prepareStatement("insert into studentinfo(name, email, username, password, phone_no) values(?,?,?,?,?)");
		    ps.setString(1, fname);
		    ps.setString(2, email);
		    ps.setString(3, uname);
		    ps.setString(4, pass);
		    ps.setLong(5, phoneNo);
	        ps.executeUpdate();
	      
	        c.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}
	
}
