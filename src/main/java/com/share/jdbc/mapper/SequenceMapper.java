package com.share.jdbc.mapper;

import com.share.jdbc.entity.Sequence;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import tk.mybatis.mapper.common.Mapper;

public interface SequenceMapper extends Mapper<Sequence> {


    @Select("select * from sequence where name = #{name}")
    public Sequence findSequenceByName(@Param("name") String name);

    @Update("update  sequence set value = value + 1 ,gmt_modified = now() where name = #{name}")
    public Integer updateSequenceByName(@Param("name") String name);

}