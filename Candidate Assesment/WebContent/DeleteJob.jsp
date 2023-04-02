<%@ page import="com.hirig.connection.*" %>
<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete HR</title>
</head>
<body>
	<%
		int jno = Integer.parseInt(request.getParameter("id"));
	try
	{
		Connection con = ConnectDB.getConnect();
		PreparedStatement ps1 = con.prepareStatement("delete from job_tbl where Id=?");
		ps1.setInt(1, jno);
		int i= ps1.executeUpdate();
		if (i>0)
		{
			response.sendRedirect("Viewjob.jsp");
		}
		else
		{
			response.sendRedirect("Failed.html");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>

</body>
</html>