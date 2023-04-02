package com.hirreng.project;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hirig.connection.ConnectDB;

/**
 * Servlet implementation class HRLogin
 */
public class HRLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HRLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		try
		{
			
		String Email = request.getParameter("username"); 
		String Pass = request.getParameter("pass");
		Connection con = ConnectDB.getConnect();
		 PreparedStatement ps1 = con.prepareStatement("Select * From hr_tbl where Hemail=? and Hpass=?");
		 ps1.setString(1, Email);
		 ps1.setString(2, Pass);
		 ResultSet rs1 = ps1.executeQuery();
		 if(rs1.next())
		 {
			 response.sendRedirect("Addjob.html");
		 }
		 else
		 {
			 response.sendRedirect("HRlogin.html");
		 }
	
	}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
