package com.music.service.serviceimpl;


import com.music.bean.SongList;
import com.music.bean.User;
import com.music.dao.SongListDao;
import com.music.service.Songservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SongListServiceImpl implements Songservice {
    @Autowired
    private SongListDao songListDao;

    @Override
    public List<SongList> getSongListAll() {
        return songListDao.getSongListAll();
    }

    @Override
    public SongList getSongAll(int songId) {
        return songListDao.getSongAll(songId);
    }


}
