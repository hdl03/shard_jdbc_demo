package com.share.jdbc.controller;

import com.share.jdbc.entity.Student;
import com.share.jdbc.entity.StudentCourse;
import com.share.jdbc.service.StudentCourseService;
import com.share.jdbc.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/studentCourse")
public class StudentCourseController {
    @Autowired
    private StudentCourseService studentCourseService;


    @PostMapping("selectAll")
    public List<StudentCourse> selectAll() {
        return studentCourseService.selectAll();
    }

    @PostMapping("insert")
    public Integer insert(@RequestBody StudentCourse studentCourse) {
        return studentCourseService.insert(studentCourse);
    }

    @PostMapping("update")
    public Integer update(@RequestBody StudentCourse studentCourse) {
        return studentCourseService.update(studentCourse);
    }

    @PostMapping("select/{id}")
    public StudentCourse select(@PathVariable("id")Long id) {
        return studentCourseService.select(id);
    }


}