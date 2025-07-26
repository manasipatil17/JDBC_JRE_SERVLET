package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dao.DBconnection;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Admin_dashboard")
public class Admin_dashboard extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		List<Map<String, Object>> feedbackList = new ArrayList<>();
		
		Connection c=DBconnection.conn();
		try {
		PreparedStatement ps= c.prepareStatement("SELECT f.id, s.name, s.email, f.feedback_text, f.date_submitted, s.profile_photo FROM feedback f JOIN students s ON f.student_id = s.id ORDER BY f.date_submitted DESC");
		ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Map<String, Object> feedback = new HashMap<>();
                feedback.put("id", rs.getInt("id"));
                feedback.put("name", rs.getString("name"));
                feedback.put("email", rs.getString("email"));
                feedback.put("feedback_text", rs.getString("feedback_text"));
                feedback.put("date_submitted", rs.getTimestamp("date_submitted"));
                feedback.put("profile_photo", rs.getString("profile_photo"));
                feedbackList.add(feedback);
                
                System.out.println("Number of feedbacks fetched: " + feedbackList.size());
            }

            req.setAttribute("feedbackList", feedbackList);
            RequestDispatcher rd = req.getRequestDispatcher("Admin_dashboard.jsp");
            rd.forward(req, resp);
		} catch (SQLException e) {

			e.printStackTrace();
			resp.sendRedirect("Admin_dashboard.jsp?msg=db_error");
		}
		
}}