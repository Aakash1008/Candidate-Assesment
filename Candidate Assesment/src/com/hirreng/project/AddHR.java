package com.hirreng.project;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hirig.connection.ConnectDB;

/**
 * Servlet implementation class AddHR
 */
public class AddHR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddHR() {
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
		
		String name=(request.getParameter("name"));
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String Pass = request.getParameter("Pass");
		String Deg = request.getParameter("Deg");

		
		
		
		try 
		{
			Connection con = ConnectDB.getConnect();
			PreparedStatement ps1= con.prepareStatement("insert into hr_tbl values(?,?,?,?,?,?)");
			ps1.setInt(1, 0);
			ps1.setString(2, name);
			ps1.setString(3, email);
			ps1.setString(4,mobile);
			ps1.setString(5,Pass);
			ps1.setString(6,Deg);
			
			int i = ps1.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("View.jsp");
			}
			else
			{
				response.sendRedirect("AddHR.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
