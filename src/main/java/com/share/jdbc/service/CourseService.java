package com.share.jdbc.service;

import com.share.jdbc.dao.SequenceDao;
import com.share.jdbc.entity.Course;
import com.share.jdbc.mapper.CourseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService {
    @Autowired
    private CourseMapper courseMapper;
    @Autowired
    private SequenceDao sequenceDao;
    private static final String name = "course";

    public List<Course> selectAll(){
        return courseMapper.selectAll();
    }

    public Integer insert(Course course){
        course.setcId(sequenceDao.nextValue(name));
        return courseMapper.insert(course);
    }

    public Integer update(Course course){
        return courseMapper.updateByPrimaryKeySelective(course);
    }
}