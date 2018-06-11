package com.share.jdbc.service;

import com.share.jdbc.dao.SequenceDao;
import com.share.jdbc.entity.Sclass;
import com.share.jdbc.mapper.SclassMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SclassService  {
    @Autowired
    private SclassMapper sclassMapper;
    @Autowired
    private SequenceDao sequenceDao;
    private static final String name = "sclass";

    public List<Sclass> selectAll(){
        return sclassMapper.selectAll();
    }

    public Integer insert(Sclass sclass){
        sclass.setClassId(sequenceDao.nextValue(name));
        return sclassMapper.insert(sclass);
    }
    public Integer update(Sclass sclass){
        return sclassMapper.updateByPrimaryKeySelective(sclass);
    }
}