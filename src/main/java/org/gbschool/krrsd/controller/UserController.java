package org.gbschool.krrsd.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import org.gbschool.krrsd.dao.UserDAO;
import org.gbschool.krrsd.dto.UserDetailsDTO;
import org.gbschool.krrsd.utils.DatabaseUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/user")
public class UserController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		
		if ("login".equals(action)) {
            handleLogin(req, resp);
        } else if ("updateProfile".equals(action)) {
            handleProfileUpdate(req, resp);
        }
		
	}

	private void handleProfileUpdate(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		
	}

	private void handleLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		try (Connection connection = DatabaseUtil.getConnection()){
			UserDAO userDAO = new UserDAO(connection);
			UserDetailsDTO user =  userDAO.authenticate(username, password);
			if(user != null) {
				HttpSession session = req.getSession();
				session.setAttribute("user", user);
				resp.sendRedirect(req.getContextPath()+"/public/jsp/screens/profile.jsp");
			}else {
				req.setAttribute("error", "Invalid Username or password");
				req.getRequestDispatcher("/public/jsp/screens/login.jsp").forward(req, resp);
				
			}
			
			
		} catch (SQLException e) {
			throw new ServletException("Database error during login", e);
		}
		
	}
	
}
