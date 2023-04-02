package com.hirreng.project;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hirig.connection.ConnectDB;

/**
 * Servlet implementation class Personal
 */
public class Personal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Personal() {
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
		int Jid = DataUser.getID();
		String name=DataUser.setName(request.getParameter("name"));
		String date= request.getParameter("date") ;
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String Addr = request.getParameter("Addr");
		String qual = request.getParameter("qual");
		String Status = "Pending";

		
		
		
		try 
		{
			Connection con = ConnectDB.getConnect();
			PreparedStatement ps1= con.prepareStatement("insert into personal_tbl values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps1.setInt(1, Jid);
			ps1.setInt(2, 0);
			ps1.setString(3, name);
			ps1.setString(4, date);
			ps1.setString(5, email);
			ps1.setString(6,mobile);
			ps1.setString(7,Addr);
			ps1.setString(8,qual);
			ps1.setInt(9, 0);
			ps1.setInt(10, 0);
			ps1.setInt(11, 0);
			ps1.setInt(12, 0);
			ps1.setInt(13, 0);
			ps1.setInt(14, 0);
			ps1.setString(15, Status);
			
			int i = ps1.executeUpdate();
			
			
	if(i>0)
	{
		
		response.sendRedirect("Test.jsp");
		
	}
	else
	{
		response.sendRedirect("Personal.jsp");
	
	}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
