package com.music.service.serviceimpl;

import com.music.bean.Album;
import com.music.dao.AlbumDao;
import com.music.service.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class AlbumServiceImpl implements AlbumService {
    @Autowired
    AlbumDao albumDao;

    @Override
    public List<Album> getAlbumAll() {
        return albumDao.getAlbumAll();
    }

    @Override
    public Album getAlbumOne(Integer albumId) {
        return albumDao.getAlbumOne(albumId);
    }

    @Override
    public int insertAlbum(Album album) {
        return albumDao.insertAlbum(album);
    }

    @Override
    public int deleteAlbum(Integer albumId) {
        return albumDao.deleteAlbum(albumId);
    }

    @Override
    public int updateAlbum(Map<String, Object> map) {
        return albumDao.updateAlbum(map);
    }


}
