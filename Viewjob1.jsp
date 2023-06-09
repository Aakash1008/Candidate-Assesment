<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.*"%>
<%@page import="com.hirig.connection.ConnectDB"%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
.main{
  width:90%;
  height: 100vh;
  margin:50px auto;
  padding:10px;
}
.table{
  width:100%;
  border-collapse:collapse;
}
.table thead tr th,
.table tbody tr td{
  padding:10px 25px;
  border:1px solid #eee;
  text-align:center;
}
.table tbody tr:nth-child(even){
  background-color:#7AD7FD;
}
.table thead{
  color:#fff;
  background-color:#7AD7FD;
}

/* Responsive */

@media only screen and (max-width: 600px) {
            .table thead{
            display:none;
            }
            .table, .table tbody, .table tbody tr, .table tbody tr td{
            display: block;
            }
            .table tr{
            margin-bottom: 20px;
            }
            .table tbody tr td{
            text-align:right;
            padding-left: 50%;
            padding-right:2px;
            position: relative;
            }
            .table tbody tr td::before{
            content: attr(data-label);
            position: absolute;
            left: 0;
            font-weight: bold;
            }
        }
</style>
<head>
 <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>View HR </title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#" /></div>
      </div>
      <!-- end loader -->
      <!-- header -->
      <header>
         <!-- header inner -->
         <div class="header">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                     <div class="full">
                        <div class="center-desk">
                           <div class="logo">
                              <a href="index.html"><img src="images/Logo.png" alt="#" /></a>
                           </div>
                        </div>
                     </div>
                  </div>
                 <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                     <div class="header_information">
                        <nav class="navigation navbar navbar-expand-md navbar-dark ">
                           <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                           <span class="navbar-toggler-icon"></span>
                           </button>
                           <div class="collapse navbar-collapse" id="navbarsExample04">
                              <ul class="navbar-nav mr-auto">
                              <li class="nav-item active">
                                    <a class="nav-link" href="index.html"> Home Page  </a>
                                 </li> 
               </div>
            </div>
         </div>
      </header>
     <!-- Table Start -->
    <center>
     <h1>View Job Table</h1>
             <table class="table">
             <thead>
				 <tr>
				 	<th>ID</th>
				 	<th>Name</th>
				 	<th>Descr</th>
				 	<th>Salary</th>
				 	<th>Action</th>
				 	
				 </tr>
				 </thead>
				 <%
				 try
				 {
					 Connection con = ConnectDB.getConnect();
					 PreparedStatement ps1 = con.prepareStatement("Select * From job_tbl");
					 ResultSet rs1 = ps1.executeQuery();
					 while(rs1.next())
					 {
				 %>	 
				 <tr>
				 <th scope="row"><%=rs1.getInt(1)%></th>
				 <td><%=rs1.getString(2) %>
				 <td><%=rs1.getString(3) %>
				 <td><%=rs1.getString(4) %> 
				 <td><button><a href="Personal.jsp?id=<%=rs1.getInt(1)%>">Apply</a></button></td>
				 </tr>
				 <%
					 }
				 }
				 catch(Exception e)
				 {
					 e.printStackTrace();
				 }
				 %>                       
       </table>
   </center>                           
                  
      <!-- Table End -->
      <!-- end header inner -->
      <!-- end header -->
      <!-- banner -->

      <!-- end banner -->
      <!-- about -->

      <!-- end about -->
      <!-- mobile -->
      
      <!-- end mobile -->
      <!-- clients -->
      
      <!-- end clients -->
      <!--  contact -->
     
      <!-- end contact -->
      <!--  footer -->
     
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
    
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
   </body>	
</body>
</html>