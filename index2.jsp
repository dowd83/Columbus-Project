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
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

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

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-text">
                        <span class="name">Project Columbus</span>
                        <hr class="star-light">
                        <span class="skills">Tech Jobs - Interviews - Salaries</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Portfolio Grid Section -->
    <section id="companies">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Companies</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class ="row">
                <table align = "center" class="PerformanceTable">
                <tr>
                    <th width="20%">Company Page</th>
                    <th width="20%">Company Name</th>
                    <th width="20%">Company Rating</th>
                </tr>
                <%
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/prototype columbus","root","sesame");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("SELECT * FROM company ORDER BY RAND() LIMIT 6");
                while(rs.next())
                {
                 String CompanyId=rs.getString("companyid");
                 String CompanyName=rs.getString("companyName");
                 String CompanyAddress=rs.getString("companyAddress");
                 int Rating =rs.getInt("rating");
                 
                 
                %>
                <tr>
                    <td class="big"><a href='company.jsp?id=<%=CompanyName%>'>Go To Page</a></td>
                    <td class ="big"><%=CompanyName%></td>
                    <td align="center"><%=Rating%></td>
                </tr>
                <%
                }
                %>
            </table>
            </div>
        </div>
    </section>
    <section id="profiles">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>User Profiles</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class ="row">
                <table align = "center" class="PerformanceTable">
                <tr>
                    <th width="20%">Profile Page</th>
                    <th width="20%">Profile Name</th>
                    <th width="20%">Profile Rating</th>
                </tr>
                <%
                ResultSet rs1=stmt.executeQuery("SELECT * FROM user ORDER BY RAND() LIMIT 6");
                while(rs1.next())
                {
                 String ProfileId=rs1.getString("userid");
                 String ProfileFirstName=rs1.getString("firstName");
                 String ProfileLastName=rs1.getString("lastName");
                 String ProfileAddress=rs1.getString("email");
                 int Trust =rs1.getInt("trust");
                 
                 
                %>
                <tr>
                    <td class="big"><a href='profile.jsp?id=<%=ProfileFirstName%>'>Go To Page</a></td>
                    <td class ="big"><%=ProfileFirstName%> <%=ProfileLastName%></td>
                    <td align="center"><%=Trust%></td>
                </tr>
                <%
                }
                %>
            </table>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contact Us</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Name</label>
                                <input type="text" class="form-control" placeholder="Name" id="name" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Email Address</label>
                                <input type="email" class="form-control" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Phone Number</label>
                                <input type="tel" class="form-control" placeholder="Phone Number" id="phone" required data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
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

    <!-- Portfolio Modals -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Google</h2>
                            <hr class="star-primary">
                            <img src="img/portfolio/google-logo.jpg" class="img-responsive img-centered" alt="">
                            <p>Google description <a href="https://www.google.com">Google</a> Description</p>
                            <ul class="list-inline item-details">
                                <li>Company:
                                    <strong><a href="https://www.google.com">Google</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="https://www.google.com">MM/DD/YYYY</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="https://www.google.com">Company's services</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Apple</h2>
                            <hr class="star-primary">
                            <img src="img/portfolio/apple-logo.jpg" class="img-responsive img-centered" alt="">
                            <p>Apple description <a href="https://www.apple.com">Apple.com</a> company description</p>
                            <ul class="list-inline item-details">
                                <li>Company:
                                    <strong><a href="https://www.apple.com">Apple</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="https://www.apple.com">MM/DD/YYY</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="https://www.apple.com">Company's services</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Facebook</h2>
                            <hr class="star-primary">
                            <img src="img/portfolio/facebook-logo.png" class="img-responsive img-centered" alt="">
                            <p>Facebook description <a href="https://www.facebook.com">Facebook.com</a> Facebook Description</p>
                            <ul class="list-inline item-details">
                                <li>Company:
                                    <strong><a href="https://www.facebook.com">Facebook</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="https://www.facebook.com">MM/DD/YYYY</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="https://www.facebook.com">Company's Services</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Amazon</h2>
                            <hr class="star-primary">
                            <img src="img/portfolio/amazon-logo.jpg" class="img-responsive img-centered" alt="">
                            <p>Amazon Description <a href="https://www.amazon.com">Amazon.com</a> Amazon Description</p>
                            <ul class="list-inline item-details">
                                <li>Company:
                                    <strong><a href="https://www.amazon.com">Amazon</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="https://www.amazon.com">MM/DD/YYYY</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="https://www.amazon.com">Company's Services</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Microsoft</h2>
                            <hr class="star-primary">
                            <img src="img/portfolio/microsoft-logo.png" class="img-responsive img-centered" alt="">
                            <p>Microsoft Description <a href="microsoft.com">Microsoft</a> Microsoft Description</p>
                            <ul class="list-inline item-details">
                                <li>Company:
                                    <strong><a href="https://www.microsoft.com">Microsoft</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="https://www.microsoft.com">MM/DD/YYYY</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="https://www.microsoft.com">Company's Services/a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Yahoo</h2>
                            <hr class="star-primary">
                            <img src="img/portfolio/yahoo-logo.jpg" class="img-responsive img-centered" alt="">
                            <p>Yahoo Description <a href="https://www.yahoo.com">Yahoo</a> Yahoo Description</p>
                            <ul class="list-inline item-details">
                                <li>Company:
                                    <strong><a href="https://www.yahoo.com">Yahoo</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="https://www.yahoo.com">MM/DD/YYYY</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="https://www.yahoo.com">Company's Services/a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/freelancer.js"></script>

</body>

</html>

