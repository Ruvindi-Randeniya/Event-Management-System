package com.booking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookingDBUtil {
    public static boolean insertBookingRequest(BookingRequest bookingRequest) {
        boolean isSuccess = false;
        Connection con = null;
        PreparedStatement preparedStatement = null;

        try {
            con = DBConnect.getConnection();
            String sql = "INSERT INTO booking_requests (name, email, number, event_name, date, place, category, package_type, idea) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, bookingRequest.getName());
            preparedStatement.setString(2, bookingRequest.getEmail());
            preparedStatement.setString(3, bookingRequest.getNumber());
            preparedStatement.setString(4, bookingRequest.getEventName());
            preparedStatement.setString(5, bookingRequest.getDate());
            preparedStatement.setString(6, bookingRequest.getPlace());
            preparedStatement.setString(7, bookingRequest.getCategory());
            preparedStatement.setString(8, bookingRequest.getPackageType());
            preparedStatement.setString(9, bookingRequest.getIdea());

            int rowsAffected = preparedStatement.executeUpdate();
            isSuccess = rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return isSuccess;
    }
    public static boolean updateBookingRequest(BookingRequest bookingRequest) {
        boolean isSuccess = false;
        Connection con = null;
        PreparedStatement preparedStatement = null;

        try {
            con = DBConnect.getConnection();
            String sql = "UPDATE booking_requests SET name=?, email=?, number=?, event_name=?, date=?, place=?, category=?, package_type=?, idea=? " +
                    "WHERE id=?";
            preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, bookingRequest.getName());
            preparedStatement.setString(2, bookingRequest.getEmail());
            preparedStatement.setString(3, bookingRequest.getNumber());
            preparedStatement.setString(4, bookingRequest.getEventName());
            preparedStatement.setString(5, bookingRequest.getDate());
            preparedStatement.setString(6, bookingRequest.getPlace());
            preparedStatement.setString(7, bookingRequest.getCategory());
            preparedStatement.setString(8, bookingRequest.getPackageType());
            preparedStatement.setString(9, bookingRequest.getIdea());
            preparedStatement.setInt(10, bookingRequest.getId());

            int rowsAffected = preparedStatement.executeUpdate();
            isSuccess = rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return isSuccess;
    }

    public static boolean deleteBookingRequest(int bookingRequestId) {
        boolean isSuccess = false;
        Connection con = null;
        PreparedStatement preparedStatement = null;

        try {
            con = DBConnect.getConnection();
            String sql = "DELETE FROM booking_requests WHERE id=?";
            preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, bookingRequestId);

            int rowsAffected = preparedStatement.executeUpdate();
            isSuccess = rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return isSuccess;
    }

    public static List<BookingRequest> getAllBookingRequests() {
        List<BookingRequest> bookingRequestList = new ArrayList<>();
        Connection con = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            con = DBConnect.getConnection();
            String sql = "SELECT * FROM booking_requests";
            preparedStatement = con.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String number = resultSet.getString("number");
                String eventName = resultSet.getString("event_name");
                String date = resultSet.getString("date");
                String place = resultSet.getString("place");
                String category = resultSet.getString("category");
                String packageType = resultSet.getString("package_type");
                String idea = resultSet.getString("idea");

                BookingRequest bookingRequest = new BookingRequest();
                bookingRequest.setId(id);
                bookingRequest.setName(name);
                bookingRequest.setEmail(email);
                bookingRequest.setNumber(number);
                bookingRequest.setEventName(eventName);
                bookingRequest.setDate(date);
                bookingRequest.setPlace(place);
                bookingRequest.setCategory(category);
                bookingRequest.setPackageType(packageType);
                bookingRequest.setIdea(idea);

                bookingRequestList.add(bookingRequest);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return bookingRequestList;
    }
    
    public static BookingRequest getBookingById(String id) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        BookingRequest booking = null;

        try {
            conn = DBConnect.getConnection();
            String sql = "SELECT * FROM booking_requests WHERE id = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                booking = new BookingRequest();
                booking.setName(rs.getString("name"));
                booking.setEmail(rs.getString("email"));
                booking.setNumber(rs.getString("number"));
                booking.setEventName(rs.getString("event_name"));
                booking.setDate(rs.getString("date"));
                booking.setPlace(rs.getString("place"));
                booking.setCategory(rs.getString("category"));
                booking.setPackageType(rs.getString("package_type"));
                booking.setIdea(rs.getString("idea"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return booking;
    }
}
