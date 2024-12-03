package com.booking;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteBookingServlet
 */
@WebServlet("/DeleteBookingServlet")
public class DeleteBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the ID parameter from the request
        String id = request.getParameter("id");

        // Check if ID is not null and not empty
        if (id != null && !id.isEmpty()) {
            // Convert ID to integer (assuming ID is an integer)
            int bookingId = Integer.parseInt(id);

            // Delete the booking using BookingDBUtil or your database operations
            boolean deleted = BookingDBUtil.deleteBookingRequest(bookingId);

            if (deleted) {
                // Redirect to a success page or send a success message
                response.sendRedirect("Managebooking.jsp");
            } else {
                // Handle deletion failure, redirect to an error page or send an error message
                response.sendRedirect("error.jsp");
            }
        } else {
            // Handle missing or invalid ID parameter, redirect to an error page or send an error message
            response.sendRedirect("error.jsp");
        }
    }

}
