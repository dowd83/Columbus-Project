<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Project Columbus</title>

    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/profilecss.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
</head>

<body id="page-top" class="index">
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index2.jsp">Project Columbus</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    
                    <li class="page-scroll">
                        <a href="about.jsp">About</a>
                    </li>
                    <li class="page-scroll">
                        <a href="companies.jsp">Companies</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    
    <!-- Company Info -->
    <section id="portfolio">
        <%
                String companyName= request.getParameter("id");
                
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/prototype columbus","root","sesame");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select *  from Company where companyName='"+companyName+"'");
                while(rs.next())
                {
                 String CompanyId=rs.getString("companyid");
                 String CompanyName=rs.getString("companyName");
                 String CompanyAddress=rs.getString("companyAddress");
                 int Rating =rs.getInt("rating");
                 
                 
         %>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <br>
                    <!--Have to use jdbc in order to get the company name and other data-->
                    <h2><%=CompanyName%></h2>
                    <hr class="star-primary">
                    <h3>Company Rating: <%=Rating%></h3>
                    <h4>Company Address: <a href="<%=CompanyAddress%>">Go to page</a></h4>
                    
                <%
                }
                %>
                </div>
            </div>
            
            <table align="center">
                <tr>
                    <th width="30%">Position name</th>
                    <th width="30%">Description</th>
                    <th width="30%">Salary</th>
                    <th width="30%">Rating</th>
                </tr>
                <%
                
                ResultSet rs1=stmt.executeQuery("select * from Position");
                while(rs1.next())
                {
                 String PositionID=rs1.getString("positionid");
                 String PositionName=rs1.getString("positionName");
                 String PositionDescription=rs1.getString("positionDesc");
                 int Salary =rs1.getInt("salary");
                 int Rating =rs1.getInt("rating");
                 
                 
                %>
                <tr>
                    <td width="30%"><%=PositionName%></td>
                    <td width="30%"><%=PositionDescription%></td>
                    <td width="30%"><%=Salary%></td>
                    <td width="30%" align="center"><%=Rating%></td>
                </tr>
                <%
                }
                %>
            </table>
        </div>
    </section>
    <section>
                <div class="container">
                    <div class="row">
                <div class="col-lg-12 text-center">
                    <br>
                    <!--Have to use jdbc in order to get the company name and other data-->
                    <h2>Comments</h2>
                </div>
            </div>
                    <table>
                        <!--to do-->
                    </table>
                    <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Message</label>
                                <textarea rows="5" class="form-control" placeholder="Message" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button type="submit" class="btn btn-success btn-lg">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
    </section>
    

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Location</h3>
                        <p>1855 Broadway<br>New York, NY 10023</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Around the Web</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Extra Footer</h3>
                        <p>This is an extra footer to be used at a later time.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; Project Columbus 2015
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visible-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

</body>

</html>
