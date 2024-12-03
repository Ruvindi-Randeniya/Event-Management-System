<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.booking.BookingRequest" %>
<%@ page import="com.booking.BookingDBUtil" %>
<%
    // Retrieve booking details from request parameters
    BookingRequest booking = new BookingRequest();
booking.setId(Integer.parseInt(request.getParameter("id")));
    booking.setName(request.getParameter("name"));
    booking.setEmail(request.getParameter("email"));
    booking.setNumber(request.getParameter("number"));
    booking.setEventName(request.getParameter("eventName"));
    booking.setDate(request.getParameter("date"));
    booking.setPlace(request.getParameter("place"));
    booking.setCategory(request.getParameter("category"));
    booking.setPackageType(request.getParameter("packageType"));
    booking.setIdea(request.getParameter("idea"));
    // Set the booking object in the request scope for use in the JSP
    request.setAttribute("booking", booking);
%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel ="stylesheet" href ="styles/connect.css">
    <title>Update Booking</title>
</head>
<body>


    <div class="container">
        <header class="header">
            <h1 id="title" class="text-center">Update Booking</h1>
            <p id="description" class="text-center">
                YOU CAN DREAM IT. WE CAN MAKE IT!!!
            </p>
        </header>
        <div class="form-wrap">
            <form id="update-form" action="updateBooking" method="post">
            <input type="hidden" name="id" value="<%= booking.getId() %>">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label id="name-label" for="name"><b>Name</b></label>
                            <input type="text" name="name" id="name" class="form-control" value="<%= booking.getName() %>" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label id="email-label" for="email"><b>Email</b></label>
                            <input type="email" name="email" id="email" class="form-control" value="<%= booking.getEmail() %>" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label id="number-label" for="number"><b>Contact Number</b></label>
                            <input type="number" name="number" id="number" class="form-control" value="<%= booking.getNumber() %>" placeholder="Enter your contact number">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label id="eventName-label" for="eventName"><b>Event Name</b></label>
                            <input type="text" name="eventName" id="eventName" class="form-control" value="<%= booking.getEventName() %>" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label id="date-label" for="date"><b>Date</b></label>
                            <input type="date" name="date" id="date" class="form-control" value="<%= booking.getDate() %>" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label id="place-label" for="place"><b>Event Place</b></label>
                            <input type="text" name="place" id="place" class="form-control" value="<%= booking.getPlace() %>" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label id="category-label" for="category"><b>Event Category</b></label>
                            <select id="category" name="category" class="form-control" required>
                                <option value="none">Select</option>
                                <option value="Government & Corporate" <%= booking.getCategory().equals("Government & Corporate") ? "selected" : "" %>>Government & Corporate</option>
                                <option value="Seminars & Conferences" <%= booking.getCategory().equals("Seminars & Conferences") ? "selected" : "" %>>Seminars & Conferences</option>
                                <option value="Celebrations" <%= booking.getCategory().equals("Celebrations") ? "selected" : "" %>>Celebrations</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label id="package-label" for="packageType"><b>Package</b></label>
                            <select id="packageType" name="packageType" class="form-control" required>
                                <option value="none">Select</option>
                                <option value="funBlaster" <%= booking.getPackageType().equals("funBlaster") ? "selected" : "" %>>Fun blaster</option>
                                <option value="profCombo" <%= booking.getPackageType().equals("profCombo") ? "selected" : "" %>>Prof Combo</option>
                                <option value="booster" <%= booking.getPackageType().equals("booster") ? "selected" : "" %>>Booster</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label id="idea-label" for="idea"><b>Idea</b></label>
                            <textarea id="idea" name="idea" class="form-control" placeholder="Drop your idea here..."><%= booking.getIdea() %></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <button type="submit" id="submit" class="btn btn-primary btn-block"><b>Update</b></button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
