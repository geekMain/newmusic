package com.music.service.serviceimpl;


import com.music.bean.SongList;
import com.music.dao.SongListDao;
import com.music.service.Songservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;
import java.util.Map;

@Controller
public class SongListServiceImpl implements Songservice {
    @Autowired
    private SongListDao songListDao;

    @Override
    public List<SongList> getSongListAll() {
        return songListDao.getSongListAll();
    }

    @Override
    public int insertSongList(Map<String, Object> map) {
        return songListDao.insertSongList(map);
    }
}
