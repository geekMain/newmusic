package com.music.dao;

import com.music.bean.User;
import com.music.bean.Album;

import java.util.List;
import java.util.Map;

public interface AlbumDao {
    public List<Album> getAlbumAll();
    Album getAlbumOne(Integer albumId);
    int insertAlbum(Album album);
    int deleteAlbum(Integer albumId);
    int updateAlbum(Map<String,Object> map);
}
