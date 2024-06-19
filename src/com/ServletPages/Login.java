package com.ServletPages;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String mobileNo = request.getParameter("mobile_no");
		String password = request.getParameter("pswd");
		try {
            Connection con = DBConnection.connection();
            Statement st = con.createStatement();
            ResultSet res = st.executeQuery("select * from users where mobile_no='" + mobileNo + "'");

            if (res.next()) {
                String passwordRes = res.getString("password").trim();
//                String name = res.getString("name").trim();

                if (password.equals(passwordRes)) {
                	response.setContentType("text/html"); 
                	PrintWriter out = response.getWriter(); 
                	out.println("<script type=\"text/javascript\">"); 
                	out.println("alert('Login Successfull');"); 
                	out.println("</script>"); 
                    
//                	redirect

                } else {
                	response.setContentType("text/html"); 
                	PrintWriter out = response.getWriter(); 
                	out.println("<script type=\"text/javascript\">"); 
                	out.println("alert('Invalid Credentials');"); 
                	out.println("</script>");
//                	response.sendRedirect("http://localhost:8080/MessManagement/JSP_Pages/RegisterPage.jsp");
                }
            }else{
            	
            	response.setContentType("text/html"); 
            	PrintWriter out = response.getWriter(); 
            	out.println("<script type=\"text/javascript\">"); 
            	out.println("alert('Phone no does not exist.');"); 
            	out.println("</script>");
//            	response.sendRedirect("http://localhost:8080/MessManagement/JSP_Pages/RegisterPage.jsp");
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
	}

}
