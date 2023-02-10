package com.xxx.service;

import com.xxx.entity.Booking;

import java.util.List;

public interface BookingService {
    List<Booking> list(String username);
    int deleteBookingById(int id);
    int addBooking(Booking booking);
    int updateBooking(Booking booking);
}
