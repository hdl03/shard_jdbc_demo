package com.share.jdbc.mapper;

import com.share.jdbc.core.CommonMapper;
import com.share.jdbc.entity.Student;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface StudentMapper extends CommonMapper<Student> {

    @Select("select * from student where sId >= id")
    public List<Student> selectMoreThanId(@Param("id") Long id);

}