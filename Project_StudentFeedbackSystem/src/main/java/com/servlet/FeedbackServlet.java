package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dao.DBconnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Feedback")
public class FeedbackServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	HttpSession session=req.getSession();
	
	Integer sid = (Integer) session.getAttribute("id");
		String feedback =req.getParameter("feedback");
        Date date = new Date(System.currentTimeMillis()); // get current date

		Connection c=DBconnection.conn();
		try {
		PreparedStatement ps= c.prepareStatement("insert into feedback ( student_id ,feedback_text,date_submitted) values (?,?,?)");
		ps.setInt(1, sid);
		ps.setString(2, feedback);
		ps.setDate(3, date);
		int i=ps.executeUpdate();
		if (i > 0) {
            resp.sendRedirect("Student_dashboard.jsp?msg=feedback_success");
        } else {
            resp.sendRedirect("feedback.jsp?msg=error");
        }

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
