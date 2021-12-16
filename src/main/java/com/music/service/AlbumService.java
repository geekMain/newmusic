package com.music.service;

import com.music.bean.Album;

import java.util.List;

public interface AlbumService {
    public List<Album> getAlbumAll();
    public int insertAlbum();

}
