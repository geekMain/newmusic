package com.music.service;

import com.music.bean.Album;

import java.util.List;
import java.util.Map;

public interface AlbumService {
    List<Album> getAlbumAll();
    Album getAlbumOne(Integer albumId);
    int insertAlbum(Album album);
    int deleteAlbum(Integer albumId);
    int updateAlbum(Map<String,Object> map);

}
