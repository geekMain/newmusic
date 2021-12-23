package com.music.service.serviceimpl;

import com.music.bean.Music;
import com.music.bean.Singer;
import com.music.dao.MusicDao;
import com.music.service.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class MusicServiceImpl implements MusicService {
    @Resource
    MusicDao musicDao;

    @Override
    public List<Music> queryAllSongs() {
        return musicDao.queryAllSongs();
    }

    @Override
    public List<Singer> queryAllSinger() {
        return musicDao.queryAllSinger();
    }

    @Override
    public int insertMusic(Map<String, Object> map) {
        return musicDao.insertMusic(map);
    }
}
