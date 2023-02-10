package com.xxx.service;

import com.xxx.entity.Booking;
import com.xxx.entity.BookingExample;
import com.xxx.mapper.BookingMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class BookingServiceImpl implements BookingService {
    @Autowired
    BookingMapper mapper;

    @Override
    public List<Booking> list(String username) {
        BookingExample example = new BookingExample();
        BookingExample.Criteria criteria = example.createCriteria().andIsDeleteEqualTo(0);
        if (!StringUtils.isEmpty(username)) {
            criteria
                    .andNameEqualTo(username);
        }

        return mapper.selectByExample(example);
    }


    @Override
    public int deleteBookingById(int id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int addBooking(Booking booking) {
        return mapper.insert(booking);
    }

    @Override
    public int updateBooking(Booking booking) {
        BookingExample example = new BookingExample();
        example.createCriteria().andIdEqualTo(booking.getId());
        return mapper.updateByExample(booking, example);
    }
}
