<%@ page import="java.net.URLDecoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MOVIE GO</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/style.css" />
    <link rel="stylesheet" href="styles/feedback.css" />
</head>

<body>
    <div class="window container-fluid">

        

        <div class="main" role="main" style="min-height: 1000px;">
  <% 
        String id = request.getParameter("id");
        String firstName = URLDecoder.decode(request.getParameter("firstName"), "UTF-8");
        String lastName = URLDecoder.decode(request.getParameter("lastName"), "UTF-8");
        String email = URLDecoder.decode(request.getParameter("email"), "UTF-8");
        String message = request.getParameter("message");
    %>


            <div class="movie-list">
                <div class="title-bar">
                    <div class="left col-12">
                        <p class="bold">Give Us your Feedack</p>
                    </div>
                    <div>
                        <div class="content">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-md-10">
                                        <div class="row align-items-center">
                                            <div class="col-lg-7 mb-5 mb-lg-0">
                                                <h2 class="mb-5">Fill this Form <br> It's easy.</h2>
                                                <form action="updatefeedback"
                                                    class="border-right pr-5 mb-5" method="post" id="contactForm"
                                                    name="contactForm">
                                                    <div class="row my-2">
                                                    <div class="col-md-12 form-group">
                                                            <input type="text" class="form-control" name="id" value="<%= id%>"
                                                                id="fname" placeholder="Id"readonly>
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <input type="text" class="form-control" name="fname" value="<%= firstName %>"
                                                                id="fname" placeholder="First name">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <input type="text" class="form-control" name="lname" value="<%= lastName %>"
                                                                id="lname" placeholder="Last name">
                                                        </div>
                                                    </div>
                                                    <div class="row my-2">
                                                        <div class="col-md-12 form-group">
                                                            <input type="text" class="form-control" name="email"value="<%= email %>"
                                                                id="email" placeholder="Email">
                                                        </div>
                                                    </div>
                                                    <div class="row my-2">
                                                        <div class="col-md-12 form-group">
                                                            <input type="text" class="form-control" name="message" id="message" value="<%= message %>"
                                                                placeholder="Write your message">
                                                        </div>
                                                    </div>
                                                    <div class="row my-2">
                                                        <div class="col-md-12">
                                                            <input type="submit" value="Send Message"
                                                                class="btn btn-primary rounded-0 py-2 px-4">
                                                            <span class="submitting"></span>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="col-lg-4 ml-auto">
                                                <h3 class="mb-4">Welcome to our Discussion Space!</h3>
                                                <p>
                                                    Let's talk about everything. Share your thoughts, ideas, and
                                                    opinions in this open forum. Whether it's about movies, technology,
                                                    science, or any topic under the sun, this space is yours to explore.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>


        </div>

    </div> <!-- window -->
    <script src="scripts/scipt.js"></script>
</body>

</html>