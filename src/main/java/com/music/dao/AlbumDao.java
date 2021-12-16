package com.music.dao;

import com.music.bean.User;
import com.music.bean.Album;

import java.util.List;

public interface AlbumDao {
    public List<Album> getAlbumAll();
    int insertAlbum();
}
