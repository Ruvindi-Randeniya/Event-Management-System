<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        .card {
            margin: 20px;
            width: 18rem;
        }
    </style>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
   <a class="navbar-brand" href="#">
    <img src="images/111.png" width="100" class="d-inline-block align-top" alt="">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
                    <a class="nav-link" href="#">Home </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="events.jsp">Our Events</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="services.jsp">Services</a>
                </li>
      <li class="nav-item">
        <a class="nav-link btn btn-primary " href="admin.jsp">Admin</a>
      </li>
    </ul>
  </div>
 </nav>
    <div class="container mt-5">
        <div class="row">
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Manage Booking Requests</h5>
                        <p class="card-text">Click below to manage Booking Requests.</p>
                        <a href="Managebooking.jsp" class="btn btn-primary">Manage Bookings</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Manage Maintenance</h5>
                        <p class="card-text">Click below to manage maintenance.</p>
                        <a href="fetchMaintenance.jsp" class="btn btn-primary">Manage Maintenance</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Manage Events</h5>
                        <p class="card-text">Click below to manage events.</p>
                        <a href="fetchEvents.jsp" class="btn btn-primary">Manage Maintenance</a>
                    </div>
                </div>
            </div>
            <!-- Add more cards for other sections as needed -->
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-M48Z81K3pT2ldO8k+3l/rk5Z8r+YjJ5f/0pZl+p1bhj2EL0+6Z/qj5SkXn2l+P2P"
        crossorigin="anonymous"></script>
</body>

</html>
