package com.share.jdbc.controller;

import com.share.jdbc.entity.Broadcast;
import com.share.jdbc.entity.Course;
import com.share.jdbc.service.BroadcastService;
import com.share.jdbc.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/course")
public class CourseController {
    @Autowired
    private CourseService courseService;


    @PostMapping("selectAll")
    public List<Course> selectAll() {
        return courseService.selectAll();
    }

    @PostMapping("insert")
    public Integer insert(@RequestBody Course course) {
        return courseService.insert(course);
    }

    @PostMapping("update")
    public Integer update(@RequestBody Course course) {
        return courseService.update(course);
    }


}