package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dao.DBconnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	 String email=	req.getParameter("email");
	 String password=	req.getParameter("pass");
	 
	 Connection c=DBconnection.conn();
	 try {
	PreparedStatement ps=	c.prepareStatement("select * from students where email=? and password=?");
	ps.setString(1, email);
	ps.setString(2, password);
	ResultSet rs=ps.executeQuery();
	
	if (rs.next()) {
        HttpSession session = req.getSession();
        session.setAttribute("id", rs.getInt("id"));
        session.setAttribute("name", rs.getString("name"));
        session.setAttribute("course", rs.getString("course"));
        session.setAttribute("gender", rs.getString("gender"));
        session.setAttribute("phone", rs.getLong("phone"));
        session.setAttribute("email", rs.getString("email"));
        session.setAttribute("photo", rs.getString("profile_photo"));
        resp.sendRedirect("Student_dashboard.jsp");
    } else {
        // Check admin login
    	PreparedStatement  ps1 = c.prepareStatement("SELECT * FROM admin WHERE username = ? AND password = ?");
        ps1.setString(1, email);
        ps1.setString(2, password);
        rs = ps1.executeQuery();
        if (rs.next()) {
            HttpSession session = req.getSession();
            session.setAttribute("admin", true);
            resp.sendRedirect("admin_dashboard.jsp");
        } else {
        	req.setAttribute("errorMsg", "Invalid credentials, Register here first");
        	req.getRequestDispatcher("Register.jsp").forward(req, resp);

        }
    }

} catch (Exception e) {
    e.printStackTrace();
}
}
}
