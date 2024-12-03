<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.booking.BookingRequest" %>
<%@ page import="com.booking.BookingDBUtil" %>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Managebooking</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../styles/Managebooking.css"> 
</head>
<body>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2><b>Manage Booking Requests</b></h2>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Event</th>
            <th>Date</th>
            <th>Number</th>
            <th>Place</th>
            <th>Category</th>
            <th>Package</th>
            <th>Idea</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
    <%
        List<BookingRequest> bookings = BookingDBUtil.getAllBookingRequests();
        request.setAttribute("bookings", bookings);
        for (BookingRequest bookingRequest : bookings) {
    %>
    <tr>
        <td><%= bookingRequest.getId() %></td>
        <td><%= bookingRequest.getName() %></td>
        <td><%= bookingRequest.getEmail() %></td>
        <td><%= bookingRequest.getEventName() %></td>
        <td><%= bookingRequest.getDate() %></td>
        <td><%= bookingRequest.getNumber() %></td>
        <td><%= bookingRequest.getPlace() %></td>
        <td><%= bookingRequest.getCategory() %></td>
        <td><%= bookingRequest.getPackageType() %></td>
        <td><%= bookingRequest.getIdea() %></td>
        <td>
            <c:url value="/updateBooking.jsp" var="bookingUpdateUrl">
    <c:param name="id" value="<%= String.valueOf(bookingRequest.getId()) %>" />
            <c:param name="name" value="<%= bookingRequest.getName() %>" />
            <c:param name="email" value="<%= bookingRequest.getEmail() %>" />
            <c:param name="eventName" value="<%= bookingRequest.getEventName() %>" />
            <c:param name="date" value="<%= bookingRequest.getDate() %>" />
            <c:param name="number" value="<%= bookingRequest.getNumber() %>" />
            <c:param name="place" value="<%= bookingRequest.getPlace() %>" />
            <c:param name="category" value="<%= bookingRequest.getCategory() %>" />
            <c:param name="packageType" value="<%= bookingRequest.getPackageType() %>" />
            <c:param name="idea" value="<%= bookingRequest.getIdea() %>" />
</c:url>
            <a href="${bookingUpdateUrl}" class="btn btn-success">
                <i class="material-icons">&#xE147;</i> <span>Update</span>
            </a>
            <button class="btn btn-danger delete-btn" onclick="deleteClicked(<%= bookingRequest.getId() %>)">
                <i class="material-icons">&#xE15C;</i> <span>Delete</span>
            </button>
        </td>
    </tr>
    <%
        }
    %>
</tbody>

</table>

        </div>
    </div>
    <!-- Include your JavaScript code here -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    function deleteClicked(bookingId) {
        var confirmation = confirm("Are you sure you want to delete this Booking Request (ID: " + bookingId + ")?");

        if (confirmation) {
            $.ajax({
                url: 'deleteBooking',
                type: 'POST',
                data: {
                    id: bookingId
                },
                success: function (response) {
                    // Handle success, for example, remove the deleted row from the table
                    console.log('Booking deleted successfully');
                    // Refresh the page or remove the deleted row from the UI
                    location.reload(); // or $('#row-' + bookingId).remove(); if you want to remove the row without refreshing
                },
                error: function (error) {
                    // Handle error
                    console.error('Error deleting booking: ' + error.responseText);
                }
            });
        }
    }
</script>

</body>
</html>
