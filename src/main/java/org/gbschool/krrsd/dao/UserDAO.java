package org.gbschool.krrsd.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.gbschool.krrsd.dto.UserDetailsDTO;

public class UserDAO {

	private Connection connection;

	public UserDAO(Connection connection) {

		this.connection = connection;
	}

	public UserDetailsDTO authenticate(String username, String password) throws SQLException {

		String query = "select * from users where phone_no = ? and password = ?";

		PreparedStatement stmt = connection.prepareStatement(query);
		stmt.setString(1, username);
		stmt.setString(2, password);

		ResultSet rs = stmt.executeQuery();

		if (rs.next()) {
			UserDetailsDTO user = new UserDetailsDTO();
			user.setId(rs.getInt("user_id"));
			user.setName(rs.getString("name"));
			user.setEmail(rs.getString("email"));
			user.setPhoneno(rs.getString("phone_no"));
			user.setUser_type(rs.getString("user_type"));
			user.setUsername(rs.getString("username"));
			return user;
		} else {
			return null;
		}
	}

	public boolean registerUser(UserDetailsDTO userDetails) throws SQLException {

		String query = "INSERT INTO users (name, phone_no, email, password, user_type, username) "
				+ "VALUES(1,2,3,4,5,6)";

		PreparedStatement stmt = connection.prepareStatement(query);
		stmt.setString(1, userDetails.getName());
		stmt.setString(2, userDetails.getPhoneno());
		stmt.setString(3, userDetails.getEmail());
		stmt.setString(4, userDetails.getPassword());
		stmt.setString(5, userDetails.getUser_type());
		stmt.setString(6, userDetails.getUsername());

		int rowsInserted = stmt.executeUpdate();

		return rowsInserted > 0;
	}
}
