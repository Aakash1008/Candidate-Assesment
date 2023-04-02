package com.hirreng.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hirig.connection.ConnectDB;

/**
 * Servlet implementation class AddJob
 */
public class AddJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddJob() {
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
		String Desc = request.getParameter("Desc");
		String Salary = request.getParameter("Salary");
		String Qua = DataUser.setQualites(request.getParameter("ocean"));
		String Exe = request.getParameter("Exe");

		
		
		
		try 
		{
			Connection con = ConnectDB.getConnect();
			PreparedStatement ps1= con.prepareStatement("insert into job_tbl values(?,?,?,?,?,?)");
			ps1.setInt(1, 0);
			ps1.setString(2, name);
			ps1.setString(3, Desc);
			ps1.setString(4,Salary);
			ps1.setString(5,Qua);
			ps1.setString(6,Exe);
			
			int i = ps1.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("Viewjob.jsp");
			}
			else
			{
				response.sendRedirect("Addjob.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

	}

}
