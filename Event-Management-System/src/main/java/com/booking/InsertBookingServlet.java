package com.booking;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertBookingServlet
 */
@WebServlet("/InsertBookingServlet")
public class InsertBookingServlet extends HttpServlet {
	 private static final long serialVersionUID = 1L;

	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        // Retrieve form data
	        String name = request.getParameter("name");
	        String email = request.getParameter("email");
	        String number = request.getParameter("number");
	        String eventName = request.getParameter("eventName");
	        String date = request.getParameter("date");
	        String place = request.getParameter("place");
	        String category = request.getParameter("category");
	        String packageType = request.getParameter("packageType");
	        String idea = request.getParameter("idea");

	        // Create a BookingRequest object
	        BookingRequest bookingRequest = new BookingRequest();
	        bookingRequest.setName(name);
	        bookingRequest.setEmail(email);
	        bookingRequest.setNumber(number);
	        bookingRequest.setEventName(eventName);
	        bookingRequest.setDate(date);
	        bookingRequest.setPlace(place);
	        bookingRequest.setCategory(category);
	        bookingRequest.setPackageType(packageType);
	        bookingRequest.setIdea(idea);

	        // Call BookingDBUtil to insert the booking request
	        boolean isSuccess = BookingDBUtil.insertBookingRequest(bookingRequest);

	        if (isSuccess) {
	            // Insertion successful
	            response.getWriter().println("<script type='text/javascript'>alert('Booking request added successfully');</script>");
	            response.sendRedirect("admin.jsp"); // Redirect to a success page
	        } else {
	            // Insertion failed
	            response.getWriter().println("<script type='text/javascript'>alert('Failed to add booking request. Please try again later.');</script>");
	            request.getRequestDispatcher("connect.jsp").include(request, response);
	        }
	    }

}
