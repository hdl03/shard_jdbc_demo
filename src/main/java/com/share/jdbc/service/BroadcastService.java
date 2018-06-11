package com.share.jdbc.service;

import com.share.jdbc.dao.SequenceDao;
import com.share.jdbc.entity.Broadcast;
import com.share.jdbc.mapper.BroadcastMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BroadcastService  {
    @Autowired
    private BroadcastMapper broadcastMapper;

    @Autowired
    private SequenceDao sequenceDao;
    private final static String name = "broad";


    public List<Broadcast> selectAll(){
        return  broadcastMapper.selectAll();
    }

    public Integer insert(Broadcast broadcast){
        broadcast.setId(sequenceDao.nextValue(name));
        return  broadcastMapper.insertSelective(broadcast);
    }


    public Integer update(Broadcast broadcast){
        return  broadcastMapper.updateByPrimaryKeySelective(broadcast);
    }


}