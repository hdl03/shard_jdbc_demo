package com.share.jdbc.controller;

import com.share.jdbc.entity.Broadcast;
import com.share.jdbc.entity.Student;
import com.share.jdbc.service.BroadcastService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/broadcast")
public class BroadcastController {
    @Autowired
    private BroadcastService broadcastService;


    @PostMapping("selectAll")
    public List<Broadcast> selectAll() {
        return broadcastService.selectAll();
    }

    @PostMapping("insert")
    public Integer insert(@RequestBody Broadcast broadcast) {
        return broadcastService.insert(broadcast);
    }

    @PostMapping("update")
    public Integer update(@RequestBody Broadcast broadcast) {
        return broadcastService.update(broadcast);
    }


}