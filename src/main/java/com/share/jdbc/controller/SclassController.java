package com.share.jdbc.controller;

import com.share.jdbc.entity.Course;
import com.share.jdbc.entity.Sclass;
import com.share.jdbc.service.CourseService;
import com.share.jdbc.service.SclassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/sclass")
public class SclassController {
    @Autowired
    private SclassService sclassService;


    @PostMapping("selectAll")
    public List<Sclass> selectAll() {
        return sclassService.selectAll();
    }

    @PostMapping("insert")
    public Integer insert(@RequestBody Sclass sclass) {
        return sclassService.insert(sclass);
    }

    @PostMapping("update")
    public Integer update(@RequestBody Sclass sclass) {
        return sclassService.update(sclass);
    }


}