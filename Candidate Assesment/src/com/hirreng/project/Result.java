 package com.hirreng.project;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.hirig.connection.ConnectDB;/**
 * Servlet implementation class Result
 */
public class Result extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Result() {
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
		
			String cname=DataUser.getName();
			String Qual = DataUser.getQualites();
			int id = DataUser.getID();
			String status = "ShortList";
			int O1= Integer.parseInt(request.getParameter("O1"));
			int O2= Integer.parseInt(request.getParameter("O2"));
			int O3= Integer.parseInt(request.getParameter("O3"));
			int O4= Integer.parseInt(request.getParameter("O4"));
			int O5= Integer.parseInt(request.getParameter("O5"));
			
			int O=O1+O2+O3+O4+O5;
			
			int C1= Integer.parseInt(request.getParameter("C1"));
			int C2= Integer.parseInt(request.getParameter("C2"));
			int C3= Integer.parseInt(request.getParameter("C3"));
			int C4= Integer.parseInt(request.getParameter("C4"));
			int C5= Integer.parseInt(request.getParameter("C5"));
			
			int C=C1+C2+C3+C4+C5;
			
			int E1= Integer.parseInt(request.getParameter("E1"));
			int E2= Integer.parseInt(request.getParameter("E2"));
			int E3= Integer.parseInt(request.getParameter("E3"));
			int E4= Integer.parseInt(request.getParameter("E4"));
			int E5= Integer.parseInt(request.getParameter("E5"));
			
			int E=E1+E2+E3+E4+E5;
			
			int A1= Integer.parseInt(request.getParameter("A1"));
			int A2= Integer.parseInt(request.getParameter("A2"));
			int A3= Integer.parseInt(request.getParameter("A3"));
			int A4= Integer.parseInt(request.getParameter("A4"));
			int A5= Integer.parseInt(request.getParameter("A5"));
			
			int A=A1+A2+A3+A4+A5;
			
			int N1= Integer.parseInt(request.getParameter("N1"));
			int N2= Integer.parseInt(request.getParameter("N2"));
			int N3= Integer.parseInt(request.getParameter("N3"));
			int N4= Integer.parseInt(request.getParameter("N4"));
			int N5= Integer.parseInt(request.getParameter("N5"));
			
			int N=N1+N2+N3+N4+N5;
			
			int R= O+C+E+A+N;
			try
			{
			Connection con=ConnectDB.getConnect();
			 
			 PreparedStatement ps1 = con.prepareStatement("update personal_tbl set O=?,C=?,E=?,A=?,N=? where Name=?");
			ps1.setInt(1, O);
			ps1.setInt(2, C);
			ps1.setInt(3, E);
			ps1.setInt(4, A);
			ps1.setInt(5, N);
			ps1.setString(6, cname);
			ps1.executeUpdate();
			
			PreparedStatement ps = con.prepareStatement("select * from job_tbl where Id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				
				Qual = rs.getString(5);
				
			}
			if(Qual.equals("Extraversion"))
			{
				R=E;
			
				if (R>10)
				{
					PreparedStatement ps2 = con.prepareStatement("update personal_tbl set Result=?, Status=? where Name=? ");
					ps2.setInt(1, R);
					ps2.setString(2, status);
					ps2.setString(3, cname);
					int i = ps1.executeUpdate();
					if(i>0)
					{					
						response.sendRedirect("Shortlisted.html");
					}
					else
					{
						response.sendRedirect("Failed.html");
					}
				}
				else
				{
					response.sendRedirect("Failed.html");
				}
			}
			else if(Qual.equals("Agreeableness"))
			{
				R=A;
				if(R > 10)
				{
					
					PreparedStatement ps3 = con.prepareStatement("update personal_tbl set Result=?, Status=? where Name=? ");
					ps3.setInt(1, R);
					ps3.setString(2, status);
					ps3.setString(3, cname);
					int i = ps3.executeUpdate();
					if(i>0)
					{					
						response.sendRedirect("Shortlisted.html");
					}
					else
					{
						response.sendRedirect("Failed.html");
					}	
					
				}
				else
				{
					response.sendRedirect("Failed.html");
				}
			}
			else if(Qual.equals("Conscientiousness"))
			{
				R=N;
				if(R > 10)
				{
					
					PreparedStatement ps4 = con.prepareStatement("update personal_tbl set Result=?, Status=? where Name=? ");
					ps4.setInt(1, R);
					ps4.setString(2, status);
					ps4.setString(3, cname);
					int i = ps4.executeUpdate();
					if(i>0)
					{					
						response.sendRedirect("Shortlisted.html");
					}
					else
					{
						response.sendRedirect("Failed.html");
					}	
					
				}
				else
				{
					response.sendRedirect("Failed.html");
				}
			}
			else if(Qual.equals("Neuroticism"))
			{
				R=N;
				if(R > 10)
				{
					
					PreparedStatement ps5 = con.prepareStatement("update personal_tbl set Result=?, Status=? where Name=? ");
					ps5.setInt(1, R);
					ps5.setString(2, status);
					ps5.setString(3, cname);
					int i = ps5.executeUpdate();
					if(i>0)
					{					
						response.sendRedirect("Shortlisted.html");
					}
					else
					{
						response.sendRedirect("Failed.html");
					}	
					
				}
				else
				{
					response.sendRedirect("Failed.html");
				}
			}
			else if(Qual.equals("Openness"))
			{
				R=O;
				if(R > 10)
				{
					
					PreparedStatement ps6 = con.prepareStatement("update personal_tbl set Result=?, Status=? where Name=? ");
					ps6.setInt(1, R);
					ps6.setString(2, status);
					ps6.setString(3, cname);
					int i = ps6.executeUpdate();
					if(i>0)
					{					
						response.sendRedirect("Shortlisted.html");
					}
					else
					{
						response.sendRedirect("Failed.html");
					}	
					
				}
				else
				{
					response.sendRedirect("Failed.html");
				}
			}
			else
			{
				response.sendRedirect("Failed.html");
			}
		} 
			catch (SQLException e) 
		{
			e.printStackTrace();	
		}
			}

}
