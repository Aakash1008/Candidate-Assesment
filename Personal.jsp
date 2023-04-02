<%@page import="com.hirreng.project.DataUser"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Personal Detail </title>
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
   <!-- body -->
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
                              </ul>
                           </div>
                        </nav>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </header>
     <!-- Form Start -->
      <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <div class="col-sm-12 col-xl-6">
                        <div class="bg-light rounded h-100 p-4">
                            <h4 class="mb-4">Candidate Personal Info</h4>
                            <form action = "Personal" method = "post">
                               <div class="mb-3">
                                     <label for="exampleInputEmail1" class="form-label">Name</label>
                                       <input type="text" class="form-control"  name="name" id="exampleInputEmail1"
                                          aria-describedby="emailHelp">
                                     </div>
                                      <div class="mb-3">
                                     <label for="birthday">D.O.B</label>
									  <input type="date" id="birthday" name="date">
									  </div>
                               <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email</label>
                                    <input type="text" class="form-control" name="email" id="exampleInputEmail1"
                                        aria-describedby="emailHelp">
                                    </div>
                              <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Contact No</label>
                                    <input type="text" class="form-control" name = "mobile" id="exampleInputEmail1"
                                        aria-describedby="emailHelp">
                                    </div>
                              <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Address</label>
                                    <input type="Address" class="form-control" name = "Addr" id="exampleInputEmail1"
                                        aria-describedby="emailHelp">
                                    </div>
                               
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Qaulification</label>
                                    <input type="text" class="form-control" name="qual" id="exampleInputPassword1">
                                    </div>
                                <button type="submit" class="btn btn-primary">Take A Test</button>
         		                       <% 
											DataUser.setID((Integer.parseInt(request.getParameter("id")))); 

										%>
                            </form>
                        </div>
                    </div>
                    `            </div>
                    </div>
                           
                  
             <!-- Form End -->
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

</html>