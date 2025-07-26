package com.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dao.DBconnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/registerForm")
@MultipartConfig
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String name=req.getParameter("name");
		String course=req.getParameter("course");
		String gender=req.getParameter("gender");
		long phone= Long.parseLong(req.getParameter("phone"));
		String email=req.getParameter("email");
		String password=req.getParameter("pass");
		
		Part part=req.getPart("photo");
		String fileName=Paths.get(part.getSubmittedFileName()).getFileName().toString();
		String uploadPath=getServletContext().getRealPath("/images");
		part.write(uploadPath+ File.separator + fileName);
		String photoPath="images/" +fileName;
		
	System.out.println(name);
	System.out.println(course);
	System.out.println(gender);
	System.out.println(phone);
	System.out.println(email);
	System.out.println(password);
	System.out.println(photoPath);
	
	
		try {
			Connection c = DBconnection.conn();
			PreparedStatement ps=c.prepareStatement("insert into students(name, course, gender, phone, email, password, profile_photo) values(?,?,?,?,?,?,?)");
		    ps.setString(1, name);
		    ps.setString(2, course);
		    ps.setString(3, gender);
		    ps.setLong(4, phone);
		    ps.setString(5, email);
		    ps.setString(6, password);
		    ps.setString(7, photoPath);
		    ps.executeUpdate();
		    
		    
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
	
}
