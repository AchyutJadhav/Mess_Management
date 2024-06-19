package com.ServletPages;

import java.io.IOException;
import java.sql.Connection;
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
 * Servlet implementation class Order
 */
@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Order() {
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
		// TODO Auto-generated method stub'
		String bhaji1=request.getParameter("bhaji1");
		String bhaji2=request.getParameter("bhaji2");
		String roti=request.getParameter("roti");
		String rice=request.getParameter("rice");
		String sweet=request.getParameter("sweet");
		String quantity=request.getParameter("quantity");
		
		
		try {
            Connection con = DBConnection.connection();
            Statement st = con.createStatement();

            String orderFrom="Achyut";
                
                st.executeUpdate("insert into orders (orderfrom, bhaji1, bhaji2, "
                        + "roti, rice, sweet, quantity, price) values ('" + orderFrom + "', "
                        + "'" + bhaji1 + "', '"
                        + bhaji2 + "', '" + roti + "', '"
                        + rice + "', '" + sweet + "', '" + quantity+"', '500')");
                
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Order.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Order.class.getName()).log(Level.SEVERE, null, ex);
        }
	}

}
