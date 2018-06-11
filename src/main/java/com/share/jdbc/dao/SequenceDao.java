package com.share.jdbc.dao;

import com.share.jdbc.entity.Sequence;
import com.share.jdbc.mapper.SequenceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

@Repository
public class SequenceDao {

    @Autowired
    private SequenceMapper sequenceMapper;

    private AtomicLong value = new AtomicLong(1);

    private Lock reetLock = new ReentrantLock();


    public Long nextValue(String name) {
        reetLock.lock();
        try {
            Sequence sequence = sequenceMapper.findSequenceByName(name);
            if (null == sequence) {
                sequence = new Sequence();
                sequence.setGmt_modified(new Date());
                sequence.setName(name);
                sequence.setValue(value.incrementAndGet());
                sequenceMapper.insertSelective(sequence);
            }
            sequenceMapper.updateSequenceByName(name);
            return sequence.getValue()+1;
        } finally {
            reetLock.unlock();
        }
    }

}