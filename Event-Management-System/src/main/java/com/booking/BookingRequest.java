package com.booking;

public class BookingRequest {
    private int id; // New field for the booking request ID
    private String name;
    private String email;
    private String number;
    private String eventName;
    private String date;
    private String place;
    private String category;
    private String packageType;
    private String idea;

    public BookingRequest() {
        // Default constructor
    }

    // Getters and setters for each field
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPackageType() {
        return packageType;
    }

    public void setPackageType(String packageType) {
        this.packageType = packageType;
    }

    public String getIdea() {
        return idea;
    }

    public void setIdea(String idea) {
        this.idea = idea;
    }

    @Override
    public String toString() {
        return "BookingRequest{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", number='" + number + '\'' +
                ", eventName='" + eventName + '\'' +
                ", date='" + date + '\'' +
                ", place='" + place + '\'' +
                ", category='" + category + '\'' +
                ", packageType='" + packageType + '\'' +
                ", idea='" + idea + '\'' +
                '}';
    }
}
