package com.ServletPages;

import java.sql.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String username = request.getParameter("userName");
		String phone = request.getParameter("mobileNo");
		String mail = request.getParameter("email");
		String pass = request.getParameter("pswd");

		try {
			Connection con = DBConnection.connection();
			Statement st = con.createStatement();
			st.executeUpdate("insert into userdata (name, mobile_no, "
					+ "email, password) values ('" + username + "', '" + phone
					+ "', '" + mail + "', '" + pass + "' )");
			
			st.close();
			con.close();
			response.setContentType("text/html"); 
        	PrintWriter out = response.getWriter(); 
        	out.println("<script type=\"text/javascript\">"); 
        	out.println("alert('Data Saved Successfull');"); 
        	out.println("</script>");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
