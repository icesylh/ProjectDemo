package com.xxx.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.xxx.common.R;
import com.xxx.entity.Booking;
import com.xxx.service.BookingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("booking")
@CrossOrigin
public class BookingController {

    @Autowired
    BookingService service;

    @GetMapping("/list")
    public R list(@RequestParam(value="username",required = false) String username) {
        List<Booking> user = service.list(username);
        if (user == null) {
            user = new ArrayList<>();
        }
        return R.success(user);
    }

    @PostMapping("/delete")
    public R deleteById(@RequestBody String str) {
        JSONObject obj = JSON.parseObject(str);
        int id = obj.getInteger("id");
        return R.success(service.deleteBookingById(id));
    }

    @PostMapping("/add")
    public R addBooking(@RequestBody Booking booking) {
        booking.setIsDelete(0);
        booking.setIsDone(0);
        booking.setCreateTime(new Date());
        return R.success(service.addBooking(booking));
    }

    @PostMapping("/update")
    public R updateBooking(@RequestBody Booking booking) {
        booking.setIsDelete(0);

        return R.success(service.updateBooking(booking));
    }

}
