package com.booking;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateBookingServlet
 */
@WebServlet("/UpdateBookingServlet")
public class UpdateBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve booking details from request parameters
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String number = request.getParameter("number");
        String eventName = request.getParameter("eventName");
        String date = request.getParameter("date");
        String place = request.getParameter("place");
        String category = request.getParameter("category");
        String packageType = request.getParameter("packageType");
        String idea = request.getParameter("idea");

        // Create a BookingRequest object and set the retrieved values
        BookingRequest booking = new BookingRequest();
        booking.setId(id);
        booking.setName(name);
        booking.setEmail(email);
        booking.setNumber(number);
        booking.setEventName(eventName);
        booking.setDate(date);
        booking.setPlace(place);
        booking.setCategory(category);
        booking.setPackageType(packageType);
        booking.setIdea(idea);

        // Update the booking details in the database using BookingDBUtil
        boolean success = BookingDBUtil.updateBookingRequest(booking);
        
        if (success) {
            // Redirect to a success page or display a success message
            response.sendRedirect("Managebooking.jsp");
        } else {
            // Handle the case where the update operation fails
            response.sendRedirect("updateFailure.jsp");
        }
    }

}
