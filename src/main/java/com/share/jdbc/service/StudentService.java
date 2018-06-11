package com.share.jdbc.service;

import com.share.jdbc.dao.SequenceDao;
import com.share.jdbc.entity.Student;
import com.share.jdbc.mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {
    @Autowired
    private StudentMapper studentMapper;
    @Autowired
    private SequenceDao sequenceDao;

    private static final String name = "student";

    public List<Student> selectAll() {
        return studentMapper.selectAll();
    }

    public Integer insert(Student student) {
        student.setsId(sequenceDao.nextValue(name));
        return studentMapper.insert(student);
    }

    public Integer update(Student student) {
        return studentMapper.updateByPrimaryKeySelective(student);
    }

    public List<Student> selectMoreThan(Long id) {
        return studentMapper.selectMoreThanId(id);
    }

}