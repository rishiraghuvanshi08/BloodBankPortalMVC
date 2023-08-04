<%-- 
    Document   : receivers
    Created on : Aug 14, 2022, 9:46:21 PM
    Author     : Rishi Raghuvanshi <techie.420>
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Receivers</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">

        <!-- Table Style -->
        <link rel="stylesheet" href="style.css">

        <style>
            .my-button{
                font-size: small;
                line-height: normal;
                background: white;
            }
            .tb_search {
                width: 150px;
            }
        </style>
    </head>

    <body>
        <%
            String username = (String) session.getAttribute("username");
            if (username == null || username.trim().equals("")) {
                response.sendRedirect("login.jsp");
            }
        %>

        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border position-relative text-primary" style="width: 6rem; height: 6rem;" role="status"></div>
            <img src="img/drop2.png" class="text-primary position-absolute top-50 start-50 translate-middle" alt="" width="35px">
        </div>
        <!-- Spinner End -->


        <!-- Topbar Start -->
        <!-- <div class="container-fluid bg-light px-0 wow fadeIn" data-wow-delay="0.1s">
            <div class="row gx-0 align-items-center d-none d-lg-flex">
                <div class="col-lg-6 px-5 text-start">
                    <ol class="breadcrumb mb-0">
                        <li class="breadcrumb-item"><a class="small text-secondary" href="#">Home</a></li>
                        <li class="breadcrumb-item"><a class="small text-secondary" href="#">Career</a></li>
                        <li class="breadcrumb-item"><a class="small text-secondary" href="#">Terms</a></li>
                        <li class="breadcrumb-item"><a class="small text-secondary" href="#">Privacy</a></li>
                    </ol>
                </div>
                <div class="col-lg-6 px-5 text-end">
                    <small>Follow us:</small>
                    <div class="h-100 d-inline-flex align-items-center">
                        <a class="btn-square text-primary border-end rounded-0" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn-square text-primary border-end rounded-0" href=""><i class="fab fa-twitter"></i></a>
                        <a class="btn-square text-primary border-end rounded-0" href=""><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn-square text-primary pe-0" href=""><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- Topbar End -->


        <!-- Brand & Contact Start -->
        <div class="container-fluid py-4 px-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="row align-items-center top-bar">
                <div class="col-lg-4 col-md-12 text-center text-lg-start">
                    <a href="" class="navbar-brand m-0 p-0">
                        <h1 class="fw-bold text-primary m-0"><img src="img/drop2.png" alt="" width="35px"></i> Blood Bank
                        </h1>
                        <!-- <img src="img/logo.png" alt="Logo"> -->
                    </a>
                </div>
                <div class="col-lg-8 col-md-7 d-none d-lg-block">
                    <div class="row">
                        <div class="col-4">
                            <div class="d-flex align-items-center justify-content-end">
                                <div class="flex-shrink-0 btn-lg-square border rounded-circle">
                                    <i class="far fa-clock text-primary"></i>
                                </div>
                                <div class="ps-3">
                                    <p class="mb-2">Opening Hour</p>
                                    <h6 class="mb-0">Mon - Sat, 8:00 - 9:00</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="d-flex align-items-center justify-content-end">
                                <div class="flex-shrink-0 btn-lg-square border rounded-circle">
                                    <i class="fa fa-phone text-primary"></i>
                                </div>
                                <div class="ps-3">
                                    <p class="mb-2">Call Us</p>
                                    <h6 class="mb-0">+91 87706 69245</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="d-flex align-items-center justify-content-end">
                                <div class="flex-shrink-0 btn-lg-square border rounded-circle">
                                    <i class="far fa-envelope text-primary"></i>
                                </div>
                                <div class="ps-3">
                                    <p class="mb-2">Email Us</p>
                                    <h6 class="mb-0">bloodbank@gmail.com</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Brand & Contact End -->


        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-primary navbar-dark sticky-top py-lg-0 px-lg-5 wow fadeIn"
             data-wow-delay="0.1s">
            <a href="#" class="navbar-brand ms-3 d-lg-none">MENU</a>
            <button type="button" class="navbar-toggler me-3" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav me-auto p-3 p-lg-0">
                    <a href="adminhome.jsp" class="nav-item nav-link">Dashboard</a>
                    <a href="donors.jsp" class="nav-item nav-link">Donors</a>
                    <a href="receivers.jsp" class="nav-item nav-link active">Receivers</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Requests</a><!-- Pages -->
                        <div class="dropdown-menu border-0 rounded-0 rounded-bottom m-0">
                            <a href="donorsrequests.jsp" class="dropdown-item">Donors</a><!-- Features -->
                            <a href="patientrequests.jsp" class="dropdown-item">Patients</a><!-- Our Team -->
                            <!-- <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            <a href="404.html" class="dropdown-item">404 Page</a> -->
                        </div>
                    </div>
                    <a href="bbhistory.jsp" class="nav-item nav-link">History</a>
                    <!--<a href="contact.html" class="nav-item nav-link">Contact Us</a>-->
                </div>
                <a href="logout.jsp" class="btn btn-sm btn-light rounded-pill py-2 px-4 d-none d-lg-block">Log Out</a>
            </div>
        </nav>
        <!-- Navbar End -->


        <%
            String a = (String) request.getAttribute("receiveradditionfailed");
            if (a != null) {
        %>
        <div class="alert alert-danger alert-dismissible show wow fadeIn mb-0" data-wow-delay="0.1s" role="alert">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Receiver Addition Failed!</strong> Fill the details correctly.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <%
            }
        %>


        <%
            String b = (String) request.getAttribute("receiveradditionsuccess");
            if (b != null) {
        %>
        <div class="alert alert-success alert-dismissible show wow fadeIn mb-0" data-wow-delay="0.1s" role="alert">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Receiver is added to the list successfully!</strong>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <%
            }
        %>


        <%
            String c = (String) request.getAttribute("receiverdeletionsuccess");
            if (c != null) {
        %>
        <div class="alert alert-success alert-dismissible show wow fadeIn mb-0" data-wow-delay="0.1s" role="alert">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Receiver is deleted successfully!</strong>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <%
            }
        %>


        <%
            String d = (String) request.getAttribute("receiverdeletionfailed");
            if (d != null) {
        %>
        <div class="alert alert-danger alert-dismissible show wow fadeIn mb-0" data-wow-delay="0.1s" role="alert">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Receiver deletion failed!</strong>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <%
            }
        %>


        <!-- Page Header Start -->
        <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container text-center py-5">
                <h1 class="display-4 text-white animated slideInDown mb-3">Receivers</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb justify-content-center mb-0">
                        <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                        <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                        <li class="breadcrumb-item text-primary active" aria-current="page">Receivers</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Page Header End -->
        
        
        <!-- List Heading Start -->
        <div class="container-xxl pt-2">
            <div class="container">
                <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h6 class="section-title bg-white text-center text-primary px-3 mb-4">List of Receivers</h6>
                    <!-- <h1 class="display-6 mb-4">If You Have Any Query, Please Feel Free Contact Us</h1> -->
                </div>
            </div>
        </div>
        <!-- List Heading End -->


        <!--Pagination Table Start-->
        <div class="container wow fadeInUp" data-wow-delay="0.1s">
            <div class=" header_wrap mt-0">
                <div class="num_rows">

                    <div class="form-group">
                        <!--		Show Numbers Of Rows 		-->
                        <select class="form-control" name="state" id="maxRows">


                            <option value="10">10 Rows</option>
                            <option value="15">15 Rows</option>
                            <option value="20">20 Rows</option>
                            <option value="50">50 Rows</option>
                            <option value="70">70 Rows</option>
                            <option value="100">100 Rows</option>
                            <option value="5000">Show ALL Rows</option>
                        </select>

                    </div>
                </div>
                <div class="tb_search">
                    <!-- Icon trigger modal -->
                    <a href="#" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        + Add Receiver
                    </a>
                </div>
                <div class="tb_search-2">
                    <input type="text" id="search_input_all" onkeyup="FilterkeyWord_all_table()" placeholder="Search.."
                           class="form-control">
                </div>
            </div>
            <div class="container col-lg-12 px-0 my-4">
                <table class="table table-striped table-class" id="table-id">
                    <thead>
                        <tr>
                            <th scope="col" class="col-lg-1">ID</th>
                            <th scope="col" class="col-lg-1">Aadhar</th>
                            <th scope="col" class="col-lg-2">Name</th>
                            <th scope="col" class="col-lg-1">Age</th>
                            <th scope="col" class="col-lg-1">Gender</th>
                            <th scope="col" class="col-lg-1">Blood Group</th>
                            <th scope="col" class="col-lg-1">Address</th>
                            <th scope="col" class="col-lg-1">Contact</th>
                            <th scope="col" class="col-lg-1">Units Required</th>
                            <th scope="col" class="col-lg-1">Units Provided</th>
                            <th scope="col" class="col-lg-1">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            try {
                                Statement st = DBConnector.getStatement();

                                String query = "Select pid,aadhar,name,age,gender,blood_group,address,contact,units_req,units_given from request_completed";

                                ResultSet rs = st.executeQuery(query);

                                while (rs.next()) {
                        %>
                        <tr>
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><%=rs.getString(7)%></td>
                            <td><%=rs.getString(8)%></td>
                            <td><%=rs.getString(9)%></td>
                            <td><%=rs.getString(10)%></td>
                            <td>
                                <form action="DeleteReceiverChecker" method="post">
                                    <input type="hidden" name="pid" value="<%=rs.getString(1)%>" >
                                    <button class="my-button"><i class="fa fa-trash text-primary"></i></button>
                                </form>
                            </td>
                        </tr>
                        <%
                                }
                            } catch (SQLException e) {
                                System.out.println(e);
                            }
                        %>
                    <tbody>
                </table>
            </div>
        </div> <!-- End of Container -->

        <div class="container-xxl pb-5 wow fadeInUp" data-wow-delay="0.2s">
            <div class='pagination-container'>
                <nav>
                    <ul class="pagination mb-5">
                        <!--	Here the JS Function Will Add the Rows -->
                    </ul>
                </nav>
            </div>
            <div class="rows_count">Showing 11 to 20 of 91 entries</div>
        </div>
        <!--Pagination Table End-->


        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Receiver Record Insertion
                        </h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <form action="ReceiverRecordChecker" method="post">
                        <div class="modal-body">
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="text" pattern="[0-9]{12}" oninvalid="InvalidMsgAadhar(this);" maxlength="12" onkeypress="return onlyNumberKey(event)" name="aadhar" oninput="InvalidMsgAadhar(this);" class="form-control" id="aadhar" placeholder="Enter Aadhar" required />
                                        <label for="aadhar">Enter Aadhar</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="text" name="username" class="form-control" id="name"
                                               placeholder="Enter Name" required>
                                        <label for="name">Enter Name</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="number" name="age" class="form-control" id="age" placeholder="Age" max="150" min="1" oninvalid="this.setCustomValidity('Please enter age between 1-150.')" oninput="this.setCustomValidity('')" required>
                                        <label for="age">Age</label>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-floating">
                                        <select name="gender" class="form-control" id="gender">
                                            <option value="Male">Male
                                            </option>
                                            <option value="Female">Female
                                            </option>
                                        </select>
                                        <label for="gender">Gender</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <select name="bgroup" class="form-control" id="bgroup">
                                            <option value="O+">O+
                                            </option>
                                            <option value="O-">O-
                                            </option>
                                            <option value="A+">A+
                                            </option>
                                            <option value="A-">A-
                                            </option>
                                            <option value="B+">B+
                                            </option>
                                            <option value="B-">B-
                                            </option>
                                            <option value="AB+">AB+
                                            </option>
                                            <option value="AB-">AB-
                                            </option>
                                        </select>
                                        <label for="bgroup">Blood Group</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <input type="text" name="address" class="form-control" id="address" placeholder="Address" required>
                                        <label for="address">Address</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <input type="text" pattern="[0-9]{10}" oninvalid="InvalidMsgContact(this);" maxlength="10" onkeypress="return onlyNumberKey(event)" name="contact" oninput="InvalidMsgContact(this);" class="form-control" id="contact" placeholder="Contact" required />
                                        <label for="contact">Contact</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="number" name="units_req" class="form-control" id="units_required" placeholder="Units Required" max="100" min="1" oninvalid="this.setCustomValidity('Please enter units between 1-100.')" oninput="this.setCustomValidity('')" required>
                                        <label for="units_required">Units Required</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="number" name="units_given" class="form-control" id="units_given" placeholder="Units Given" max="100" min="1" oninvalid="this.setCustomValidity('Please enter units between 1-100.')" oninput="this.setCustomValidity('')" required>
                                        <label for="units_given">Units Given</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
                            <button class="btn btn-light" type="reset">Reset</button>
                            <button type="submit" class="btn btn-primary">Insert Record</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--Modal End-->


        <!-- Service Start -->
        <!-- <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h6 class="section-title bg-white text-center text-primary px-3">Services</h6>
                    <h1 class="display-6 mb-4">We Focuse On Making The Best In All Sectors</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a class="service-item d-block rounded text-center h-100 p-4" href="">
                            <img class="img-fluid rounded mb-4" src="img/service-1.jpg" alt="">
                            <h4 class="mb-0">Web Design</h4>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <a class="service-item d-block rounded text-center h-100 p-4" href="">
                            <img class="img-fluid rounded mb-4" src="img/service-2.jpg" alt="">
                            <h4 class="mb-0">App Development</h4>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <a class="service-item d-block rounded text-center h-100 p-4" href="">
                            <img class="img-fluid rounded mb-4" src="img/service-3.jpg" alt="">
                            <h4 class="mb-0">SEO Optimization</h4>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a class="service-item d-block rounded text-center h-100 p-4" href="">
                            <img class="img-fluid rounded mb-4" src="img/service-4.jpg" alt="">
                            <h4 class="mb-0">Social Marketing</h4>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <a class="service-item d-block rounded text-center h-100 p-4" href="">
                            <img class="img-fluid rounded mb-4" src="img/service-5.jpg" alt="">
                            <h4 class="mb-0">Email Marketing</h4>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <a class="service-item d-block rounded text-center h-100 p-4" href="">
                            <img class="img-fluid rounded mb-4" src="img/service-6.jpg" alt="">
                            <h4 class="mb-0">PPC Advertising</h4>
                        </a>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- Service End -->


        <!-- Testimonial Start -->
        <!-- <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h6 class="section-title bg-white text-center text-primary px-3">Testimonial</h6>
                    <h1 class="display-6 mb-4">What Our Clients Say!</h1>
                </div>
                <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                    <div class="testimonial-item bg-light rounded p-4">
                        <div class="d-flex align-items-center mb-4">
                            <img class="flex-shrink-0 rounded-circle border p-1" src="img/testimonial-1.jpg" alt="">
                            <div class="ms-4">
                                <h5 class="mb-1">Client Name</h5>
                                <span>Profession</span>
                            </div>
                        </div>
                        <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    </div>
                    <div class="testimonial-item bg-light rounded p-4">
                        <div class="d-flex align-items-center mb-4">
                            <img class="flex-shrink-0 rounded-circle border p-1" src="img/testimonial-2.jpg" alt="">
                            <div class="ms-4">
                                <h5 class="mb-1">Client Name</h5>
                                <span>Profession</span>
                            </div>
                        </div>
                        <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    </div>
                    <div class="testimonial-item bg-light rounded p-4">
                        <div class="d-flex align-items-center mb-4">
                            <img class="flex-shrink-0 rounded-circle border p-1" src="img/testimonial-3.jpg" alt="">
                            <div class="ms-4">
                                <h5 class="mb-1">Client Name</h5>
                                <span>Profession</span>
                            </div>
                        </div>
                        <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    </div>
                    <div class="testimonial-item bg-light rounded p-4">
                        <div class="d-flex align-items-center mb-4">
                            <img class="flex-shrink-0 rounded-circle border p-1" src="img/testimonial-4.jpg" alt="">
                            <div class="ms-4">
                                <h5 class="mb-1">Client Name</h5>
                                <span>Profession</span>
                            </div>
                        </div>
                        <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- Testimonial End -->


        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-body footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-4 col-md-6">
                        <h5 class="text-light mb-4">Address</h5>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Thakur Colony, Rangwasa (Near Petrol Pump)</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 87706 69245</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>bloodbank@gmail.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-square btn-outline-secondary rounded-circle me-1" ><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square btn-outline-secondary rounded-circle me-1" ><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square btn-outline-secondary rounded-circle me-1" ><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-square btn-outline-secondary rounded-circle me-0" ><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-light mb-4">Quick Links</h5>
                        <a class="btn btn-link" href="adminhome.jsp">Dashboard</a>
                        <a class="btn btn-link" href="donors.jsp">Donors</a>
                        <a class="btn btn-link" href="receivers.jsp">Receivers</a>
                        <a class="btn btn-link" href="donorsrequests.jsp">Donors Requests</a>
                        <a class="btn btn-link" href="patientrequests.jsp">Patient Requests</a>
                        <a class="btn btn-link" href="bbhistory.jsp">History</a>
                    </div>
                    <div class="col-lg-5 col-md-">
                        <h5 class="text-light mb-4">Gallery</h5>
                        <div class="row g-2">
                            <div class="col-4">
                                <img class="img-fluid rounded" src="img/g1.jpg" alt="Image">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded" src="img/g2.jpg" alt="Image">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded" src="img/g3.jpg" alt="Image">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded" src="img/g4.jpg" alt="Image">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded" src="img/g5.jpg" alt="Image">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded" src="img/g6.jpg" alt="Image">
                            </div>
                        </div>
                    </div>
                    <!-- <div class="col-lg-3 col-md-6">
                        <h5 class="text-light mb-4">Newsletter</h5>
                        <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                        <div class="position-relative mx-auto" style="max-width: 400px;">
                            <input class="form-control bg-transparent border-secondary w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                            <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                        </div>
                    </div> -->
                </div>
            </div>
            <div class="container-fluid copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a href="#">Blood Bank Management Interface</a>, All Right Reserved.
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                            Designed By <a href="https://htmlcodex.com">HTML Codex</a>
                            <br>Distributed By: <a class="border-bottom" href="https://themewagon.com"
                                                   target="_blank">ThemeWagon</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i
                class="bi bi-arrow-up"></i></a>

                
        <!--My JS-->
        <script>
            function onlyNumberKey(evt) {
                var ASCIICode = (evt.which) ? evt.which : evt.keyCode
                if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57))
                    return false;
                return true;
            }
            
            function InvalidMsgAadhar(textbox) {
                if (textbox.validity.patternMismatch){
                    textbox.setCustomValidity
                        ('Please enter 12 digit Aadhar Number');
                } else {
                    textbox.setCustomValidity('');
                }
                return true;
            }
            
            function InvalidMsgContact(textbox) {
                if (textbox.validity.patternMismatch){
                    textbox.setCustomValidity
                        ('Please enter 10 digit Mobile Number');
                } else {
                    textbox.setCustomValidity('');
                }
                return true;
            }
        </script>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>

        <!--Table JS-->
        <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
        <script src='//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js'></script>
        <script src="./script.js"></script>

    </body>
</html>
