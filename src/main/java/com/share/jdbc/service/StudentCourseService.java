package com.share.jdbc.service;

import com.share.jdbc.dao.SequenceDao;
import com.share.jdbc.entity.StudentCourse;
import com.share.jdbc.mapper.StudentCourseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentCourseService {
    @Autowired
    private StudentCourseMapper studentCourseMapper;
    @Autowired
    private SequenceDao sequenceDao;
    private static final String name = "studentCourse";

    public List<StudentCourse> selectAll(){
        return studentCourseMapper.selectAll();
    }
    public Integer insert(StudentCourse studentCourse){
        studentCourse.setScId(sequenceDao.nextValue(name));
        return studentCourseMapper.insert(studentCourse);
    }
    public Integer update(StudentCourse studentCourse){
        return studentCourseMapper.updateByPrimaryKeySelective(studentCourse);
    }

    public StudentCourse select(Long id){
        StudentCourse studentCourse = new StudentCourse();
        studentCourse.setScId(id);
        return studentCourseMapper.selectOne(studentCourse);
    }
}