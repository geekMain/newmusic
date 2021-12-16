package com.music.service.serviceimpl;

import com.music.bean.Album;
import com.music.dao.AlbumDao;
import com.music.service.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AlbumServiceImpl implements AlbumService {
    @Autowired
    AlbumDao albumDao;

    @Override
    public List<Album> getAlbumAll() {
        return albumDao.getAlbumAll();
    }

    @Override
    public int insertAlbum() {
        return albumDao.insertAlbum();
    }
}
