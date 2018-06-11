package com.share.jdbc.controller;

import com.share.jdbc.entity.Sclass;
import com.share.jdbc.entity.Student;
import com.share.jdbc.service.SclassService;
import com.share.jdbc.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/student")
public class StudentController {
    @Autowired
    private StudentService studentService;


    @PostMapping("selectAll")
    public List<Student> selectAll() {
        return studentService.selectAll();
    }

    @PostMapping("insert")
    public Integer insert(@RequestBody Student student) {
        return studentService.insert(student);
    }

    @PostMapping("update")
    public Integer update(@RequestBody Student student) {
        return studentService.update(student);
    }


    @PostMapping("selectMore/{id}")
    public List<Student> selectMoreThan(@PathVariable("id") Long id) {
        return studentService.selectMoreThan(id);
    }

}