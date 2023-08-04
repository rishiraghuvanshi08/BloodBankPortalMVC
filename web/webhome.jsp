<%-- 
    Document   : webhome
    Created on : Oct 5, 2022, 10:18:49 AM
    Author     : Rishi Raghuvanshi <techie.420>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Blood Bank Home</title>
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
        
        <style>
            #mySelect {
                padding-top: 0.625rem;
            }
        </style>
    </head>
    <body>
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
                    <a href="webhome.jsp" class="nav-item nav-link active">Home</a>
                    <a href="donate.jsp" class="nav-item nav-link">Donate</a><!-- About Us -->
                    <a href="request.jsp" class="nav-item nav-link">Request</a><!-- Services -->
                    <a href="process.jsp" class="nav-item nav-link">Team</a>
                    <!-- <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Requests</a>
                        <div class="dropdown-menu border-0 rounded-0 rounded-bottom m-0">
                            <a href="donorsrequests.html" class="dropdown-item">Donors</a>
                            <a href="patientrequests.html" class="dropdown-item">Patients</a>
                        </div>
                    </div> -->
                    <a href="contact.jsp" class="nav-item nav-link">Contact Us</a>
                </div>
                <a href="login.jsp" class="btn btn-sm btn-light rounded-pill py-2 px-4 d-none d-lg-block">Log In</a>
            </div>
        </nav>
        <!-- Navbar End -->
        
        
        <%
            String c = (String)request.getAttribute("donorregistrationfailed");
            if(c != null)
            {
                %>
                    <div class="alert alert-danger alert-dismissible show wow fadeIn mb-0" data-wow-delay="0.1s" role="alert">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Registration Failed!</strong> Details Mismatch or User already registered.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                <%
            }
        %>


        <!-- Carousel Start -->
        <div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
            <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#header-carousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1">
                        <img class="img-fluid" src="img/carousel-1.jpg" alt="Image">
                    </button>
                    <button type="button" data-bs-target="#header-carousel" data-bs-slide-to="1" aria-label="Slide 2">
                        <img class="img-fluid" src="img/carousel-2.jpg" alt="Image">
                    </button>
                    <button type="button" data-bs-target="#header-carousel" data-bs-slide-to="2" aria-label="Slide 3">
                        <img class="img-fluid" src="img/carousel-3.jpg" alt="Image">
                    </button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="w-100" src="img/carousel-1.jpg" alt="Image">
                        <div class="carousel-caption">
                            <div class="p-3" style="max-width: 900px;">
                                <h4 class="text-white text-uppercase mb-4 animated zoomIn">Donate Blood</h4>
                                <h1 class="display-1 text-white mb-0 animated zoomIn">Be the reason for someone's heartbeat</h1>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="img/carousel-2.jpg" alt="Image">
                        <div class="carousel-caption">
                            <div class="p-3" style="max-width: 900px;">
                                <!-- <h4 class="text-white text-uppercase mb-4 animated zoomIn">Proud to be Blood Donor</h4>
                                <h1 class="display-1 text-white mb-0 animated zoomIn">You can become a superhero too.</h1> -->
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="img/carousel-3.jpg" alt="Image">
                        <div class="carousel-caption">
                            <div class="p-3" style="max-width: 900px;">
                                <!-- <h4 class="text-white text-uppercase mb-4 animated zoomIn">Save Life</h4>
                                <h1 class="display-1 text-white mb-0 animated zoomIn">The gift of blood is a gift to someone's life</h1> -->
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                        data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <!-- Carousel End -->


        <!-- Availability Start -->
        <!-- <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="fact-item bg-light rounded text-center h-100 p-5">
                            <img src="img/drop2.png" alt="" width="50px">
                            <h3 class="mb-3 mt-3">O+</h3>
                            <h1 class="display-5 mb-0" data-toggle="counter-up">1234</h1>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="fact-item bg-light rounded text-center h-100 p-5">
                            <img src="img/drop2.png" alt="" width="50px">
                            <h3 class="mb-3 mt-3">A+</h3>
                            <h1 class="display-5 mb-0" data-toggle="counter-up">1234</h1>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="fact-item bg-light rounded text-center h-100 p-5">
                            <img src="img/drop2.png" alt="" width="50px">
                            <h3 class="mb-3 mt-3">B+</h3>
                            <h1 class="display-5 mb-0" data-toggle="counter-up">1234</h1>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="fact-item bg-light rounded text-center h-100 p-5">
                            <img src="img/drop2.png" alt="" width="50px">
                            <h3 class="mb-3 mt-3">AB+</h3>
                            <h1 class="display-5 mb-0" data-toggle="counter-up">1234</h1>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.9s">
                        <div class="fact-item bg-light rounded text-center h-100 p-5">
                            <img src="img/drop2.png" alt="" width="50px">
                            <h3 class="mb-3 mt-3">O-</h3>
                            <h1 class="display-5 mb-0" data-toggle="counter-up">1234</h1>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="1.1s">
                        <div class="fact-item bg-light rounded text-center h-100 p-5">
                            <img src="img/drop2.png" alt="" width="50px">
                            <h3 class="mb-3 mt-3">A-</h3>
                            <h1 class="display-5 mb-0" data-toggle="counter-up">1234</h1>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="1.3s">
                        <div class="fact-item bg-light rounded text-center h-100 p-5">
                            <img src="img/drop2.png" alt="" width="50px">
                            <h3 class="mb-3 mt-3">B-</h3>
                            <h1 class="display-5 mb-0" data-toggle="counter-up">1234</h1>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="1.5s">
                        <div class="fact-item bg-light rounded text-center h-100 p-5">
                            <img src="img/drop2.png" alt="" width="50px">
                            <h3 class="mb-3 mt-3">AB-</h3>
                            <h1 class="display-5 mb-0" data-toggle="counter-up">1234</h1>
                        </div>
                    </div>
    
                </div>
            </div>
        </div> -->
        <!-- Availability End -->


        <!-- To Add Start -->
        <!-- <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h6 class="section-title bg-white text-center text-primary px-3 mb-4">To Add</h6>
                </div>
                <div class="row g-0 justify-content-center">
                    <div class="col-lg-8 wow fadeInUp" data-wow-delay="0.5s">
                        <form action="" method="">
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <select name="bgroup" class="form-control" id="mySelect">
                                            <option value="O+">O+</option>
                                            <option value="O-">O-</option>
                                            <option value="A+">A+</option>
                                            <option value="A-">A-</option>
                                            <option value="B+">B+</option>
                                            <option value="B-">B-</option>
                                            <option value="AB+">AB+</option>
                                            <option value="AB-">AB-</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="number" class="form-control" id="number" placeholder="Quantity">
                                        <label for="email">Quantity</label>
                                    </div>
                                </div>
                                <div class="col-12 text-center mt-4">
                                    <button class="btn btn-primary rounded-pill py-3 px-5" type="submit">Add</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- To Add End -->


        <!-- To Remove Start -->
        <!-- <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h6 class="section-title bg-white text-center text-primary px-3 mb-4">To Remove</h6>
                </div>
                <div class="row g-0 justify-content-center">
                    <div class="col-lg-8 wow fadeInUp" data-wow-delay="0.5s">
                        <form action="" method="">
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <select name="bgroup" class="form-control" id="mySelect">
                                            <option value="O+" class="form-control">O+</option>
                                            <option value="O-" class="form-control">O-</option>
                                            <option value="A+" class="form-control">A+</option>
                                            <option value="A-" class="form-control">A-</option>
                                            <option value="B+" class="form-control">B+</option>
                                            <option value="B-" class="form-control">B-</option>
                                            <option value="AB+" class="form-control">AB+</option>
                                            <option value="AB-" class="form-control">AB-</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="number" class="form-control" id="number" placeholder="Quantity">
                                        <label for="email">Quantity</label>
                                    </div>
                                </div>
                                <div class="col-12 text-center mt-4">
                                    <button class="btn btn-primary rounded-pill py-3 px-5" type="submit">Remove</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- To Remove End -->


        <!-- Benefits Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="img-border">
                            <img class="img-fluid" src="img/g5.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="h-100">
                            <h6 class="section-title bg-white text-start text-primary pe-3">Benefits</h6>
                            <h1 class="display-6 mb-4">Health benefits of donating blood</h1>
                            <p>Every day blood transfusions take place that saves lives of many people all over the world. About 5 million Americans need a blood transfusion. Donating blood is good for the health of donors as well as those who need it. It is important that blood donation takes place in a hospital, a clinic or a blood bank, in the presence of medical experts. Donors should ensure that they are in good health to avoid any health issues post-transfusion to those who use it. Donating blood can help in treating patients suffering from cancer, bleeding disorders, chronic anemia associated with cancer, sickle cell anemia, and other hereditary blood abnormalities. It is important to know that human blood cannot be manufactured, people are the only source of it and that is why it is important to donate blood and help those who need it. It is also possible to store your own blood for your future needs. Make sure the blood is stored at a good blood bank.</p>

                            <!-- <div class="d-flex align-items-center mb-4 pb-2"> -->
                            <!-- <img class="flex-shrink-0 rounded-circle" src="img/team-1.jpg" alt="" style="width: 50px; height: 50px;"> -->
                            <!-- <div class="ps-4">
                                <h6>RV Bank</h6>
                                <small>Founder</small>
                            </div> -->
                            <!-- </div> -->
                            <!-- <a class="btn btn-primary rounded-pill py-3 px-5" href="">Read More</a> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Benefits End -->


        <!-- Team Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-3 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h6 class="section-title bg-white text-center text-primary px-3">Team</h6>
                    <h1 class="display-6 mb-4">Team Members</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="service-item d-block rounded text-center h-100 p-4">
                            <img class="img-fluid rounded mb-4" src="img/doctor-1.jpg" alt="">
                            <h3 class="mb-0">Ayush Raghuvanshi</h3>
<!--                            <h4 class="mb-0">Neurologists</h4>-->
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="service-item d-block rounded text-center h-100 p-4">
                            <img class="img-fluid rounded mb-4" src="img/doctor-2.jpg" alt="">
                            <h3 class="mb-0">Rishi Raghuvanshi</h3>
                            <!--<h4 class="mb-0">Cardiologists</h4>-->
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="service-item d-block rounded text-center h-100 p-4">
                            <img class="img-fluid rounded mb-4" src="img/doctor-3.jpg" alt="">
                            <h3 class="mb-0">Vishal Patidar</h3>
<!--                            <h4 class="mb-0">Dermatologists</h4>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->


        <!-- Gallery Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h6 class="section-title bg-white text-center text-primary px-3">Gallery</h6>
                    <h1 class="display-6 mb-4">A Beautiful Gallery To Inspire You</h1>
                </div>
                <div class="owl-carousel project-carousel wow fadeInUp" data-wow-delay="0.1s">
                    <div class="project-item border rounded h-100 p-4" data-dot="01">
                        <div class="position-relative mb-4">
                            <img class="img-fluid rounded" src="img/g1.jpg" alt="">
                            <a href="img/g1.jpg" data-lightbox="project"><i class="fa fa-eye fa-2x"></i></a>
                        </div>
                    </div>
                    <div class="project-item border rounded h-100 p-4" data-dot="02">
                        <div class="position-relative mb-4">
                            <img class="img-fluid rounded" src="img/g2.jpg" alt="">
                            <a href="img/g2.jpg" data-lightbox="project"><i class="fa fa-eye fa-2x"></i></a>
                        </div>
                    </div>
                    <div class="project-item border rounded h-100 p-4" data-dot="03">
                        <div class="position-relative mb-4">
                            <img class="img-fluid rounded" src="img/g3.jpg" alt="">
                            <a href="img/g2.jpg" data-lightbox="project"><i class="fa fa-eye fa-2x"></i></a>
                        </div>
                    </div>
                    <div class="project-item border rounded h-100 p-4" data-dot="04">
                        <div class="position-relative mb-4">
                            <img class="img-fluid rounded" src="img/g4.jpg" alt="">
                            <a href="img/g4.jpg" data-lightbox="project"><i class="fa fa-eye fa-2x"></i></a>
                        </div>
                    </div>
                    <div class="project-item border rounded h-100 p-4" data-dot="05">
                        <div class="position-relative mb-4">
                            <img class="img-fluid rounded" src="img/g5.jpg" alt="">
                            <a href="img/g5.jpg" data-lightbox="project"><i class="fa fa-eye fa-2x"></i></a>
                        </div>
                    </div>
                    <div class="project-item border rounded h-100 p-4" data-dot="06">
                        <div class="position-relative mb-4">
                            <img class="img-fluid rounded" src="img/g6.jpg" alt="">
                            <a href="img/g6.jpg" data-lightbox="project"><i class="fa fa-eye fa-2x"></i></a>
                        </div>
                    </div>
                    <div class="project-item border rounded h-100 p-4" data-dot="07">
                        <div class="position-relative mb-4">
                            <img class="img-fluid rounded" src="img/g7.jpg" alt="">
                            <a href="img/g7.jpg" data-lightbox="project"><i class="fa fa-eye fa-2x"></i></a>
                        </div>
                    </div>
                    <div class="project-item border rounded h-100 p-4" data-dot="08">
                        <div class="position-relative mb-4">
                            <img class="img-fluid rounded" src="img/g8.jpg" alt="">
                            <a href="img/g7.jpg" data-lightbox="project"><i class="fa fa-eye fa-2x"></i></a>
                        </div>
                    </div>
                    <div class="project-item border rounded h-100 p-4" data-dot="09">
                        <div class="position-relative mb-4">
                            <img class="img-fluid rounded" src="img/g9.jpg" alt="">
                            <a href="img/g9.jpg" data-lightbox="project"><i class="fa fa-eye fa-2x"></i></a>
                        </div>
                    </div>
                    <div class="project-item border rounded h-100 p-4" data-dot="10">
                        <div class="position-relative mb-4">
                            <img class="img-fluid rounded" src="img/g10.jpg" alt="">
                            <a href="img/g10.jpg" data-lightbox="project"><i class="fa fa-eye fa-2x"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Gallery End -->


        <!-- To Donate Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-3 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h6 class="section-title bg-white text-center text-primary px-3">Form</h6>
                    <h1 class="display-6 mb-4">Fill the form to donate blood</h1>
                </div>
                <div class="row g-0 justify-content-center">
                    <div class="col-lg-8 wow fadeInUp" data-wow-delay="0.5s">
                        <form action="DonationReqChecker" method="post">
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <!--<input type="text" name="aadhar" class="form-control" id="aadhar" placeholder="Enter Aadhar" onkeypress="return onlyNumberKey(event)" maxlength="12" minlength="12" oninvalid="this.setCustomValidity('Please enter a valid Aadhar number')" oninput="this.setCustomValidity('')" required >-->
                                        <input type="text" pattern="[0-9]{12}" oninvalid="InvalidMsgAadhar(this);" maxlength="12" onkeypress="return onlyNumberKey(event)" name="aadhar" oninput="InvalidMsgAadhar(this);" class="form-control" id="aadhar" placeholder="Enter Aadhar" required />
                                        <!--<input type="text" name="aadhar" class="form-control" id="aadhar" placeholder="Enter Aadhar" onkeypress="return onlyNumberKey(event)" maxlength="12" minlength="12" oninvalid="InvalidMsg(this);" oninput="InvalidMsg(this);" required >-->
                                        <label for="aadhar">Enter Aadhar</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="text" name="username" class="form-control" id="name" placeholder="Enter Name" required>
                                        <label for="name">Enter Name</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <input type="number" name="age" class="form-control" id="age" placeholder="Age" max="150" min="18" oninvalid="this.setCustomValidity('Please enter age between 18-150.')" oninput="this.setCustomValidity('')" required>
                                        <label for="age">Age (Only 18+ allowed)</label>
                                    </div>
                                </div>
                                <div class="col-12">
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
                                <div class="col-12">
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
                                        <input type="text" name="address" class="form-control" id="address" maxlength="25" placeholder="Address" required>
                                        <label for="address">Address</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <input type="text" pattern="[0-9]{10}" oninvalid="InvalidMsgContact(this);" maxlength="10" onkeypress="return onlyNumberKey(event)" name="contact" oninput="InvalidMsgContact(this);" class="form-control" id="contact" placeholder="Contact" required />
                                        <label for="contact">Contact</label>
                                    </div>
                                </div>
                                <div class="col-12 text-center">
                                    <input class="btn btn-primary rounded-pill py-3 px-5 mx-1" type="submit" value="Register">
                                    <button class="btn btn-primary rounded-pill py-3 px-5 mx-1" type="reset">Reset</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- To Donate End -->


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
                        <a class="btn btn-link" href="webhome.jsp">Home</a>
                        <a class="btn btn-link" href="donate.jsp">Donate</a>
                        <a class="btn btn-link" href="request.jsp">Request</a>
                        <a class="btn btn-link" href="process.jsp">Team</a>
                        <a class="btn btn-link" href="login.jsp">Administrator Login</a>
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
            
//            function InvalidMsg(textbox) {
//                if (textbox.value === ''){
//                    textbox.setCustomValidity
//                        ('Please enter Aadhar Number');
//                } else if (textbox.length < 12) {
//                    textbox.setCustomValidity('Please enter a valid Aadhar Number');
//                } else {
//                    textbox.setCustomValidity('');
//                }
//                return true;
//            }
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
    </body>
</html>
