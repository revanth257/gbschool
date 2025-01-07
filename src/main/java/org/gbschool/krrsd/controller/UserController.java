package org.gbschool.krrsd.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import org.gbschool.krrsd.dao.UserDAO;
import org.gbschool.krrsd.dto.UserDetailsDTO;
import org.gbschool.krrsd.utils.DatabaseUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/user")
public class UserController extends HttpServlet {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		logger.info("Received action: {}", action);
		
		if("register".equals(action)) {
			handleRegister(req,resp);
		}else if ("login".equals(action)) {
            handleLogin(req, resp);
        } else if ("updateProfile".equals(action)) {
            handleProfileUpdate(req, resp);
        }else{
        	logger.warn("Unknown action: {}", action);
        }
		
	}

	private void handleRegister(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    // Retrieve form parameters sent via the request
	    String name = req.getParameter("name");
	    String phone = req.getParameter("phone");
	    String email = req.getParameter("email");
	    String password = req.getParameter("password");
	    String userType = req.getParameter("user_type");

	    // Establish a connection to the database and perform registration
	    try (Connection connection = DatabaseUtil.getConnection()) {
	        // Create an instance of DAO and DTO to handle user data
	        UserDAO userDAO = new UserDAO(connection);
	        UserDetailsDTO userDetails = new UserDetailsDTO();

	        // Populate the UserDetailsDTO object with the form data
	        userDetails.setName(name);
	        userDetails.setPhoneno(phone);
	        userDetails.setEmail(email);
	        userDetails.setUser_type(userType != null ? userType : "CUST"); // Default to "CUST" if not provided
	        userDetails.setUsername(email); // Set username to email as per design
	        userDetails.setPassword(password); // Assuming password is handled as plain text (consider hashing)

	        // Attempt to register the user in the database
	        boolean isRegistered = userDAO.registerUser(userDetails);

	        // Redirect based on registration success or failure
	        if (isRegistered) {
	            // Registration successful; redirect to login page with a success message
	            resp.sendRedirect("login.jsp?message=Registration successful! Now log in.");
	        } else {
	            // Registration failed; redirect to registration page with a failure message
	            resp.sendRedirect("register.jsp?message=Registration failed. Please try again.");
	        }
	    } catch (SQLException e) {
	    	logger.error("Error processing action: {}",  e);
	        // Handle database exceptions and provide meaningful feedback
	        throw new ServletException("Database error during registration", e);
	    }
	}


	private void handleProfileUpdate(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub

	}

	private void handleLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");

		try (Connection connection = DatabaseUtil.getConnection()) {
			UserDAO userDAO = new UserDAO(connection);
			UserDetailsDTO user = userDAO.authenticate(username, password);
			if (user != null) {
				HttpSession session = req.getSession();
				session.setAttribute("user", user);
				resp.sendRedirect(req.getContextPath() + "/public/jsp/screens/profile.jsp");
			} else {
				req.setAttribute("error", "Invalid Username or password");
				req.getRequestDispatcher("/public/jsp/screens/login.jsp").forward(req, resp);

			}

		} catch (SQLException e) {
			throw new ServletException("Database error during login", e);
		}

	}

}
