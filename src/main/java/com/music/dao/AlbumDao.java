package com.music.dao;

import com.music.bean.User;
import com.music.bean.Album;

import java.util.List;
import java.util.Map;

public interface AlbumDao {
    /*获取album全部*/
    public List<Album> getAlbumAll();
    /*根据id获取单个album*/
    Album getAlbumOne(Integer albumId);
    /*添加album*/
    int insertAlbum(Album album);
    /*根据id删除单个album*/
    int deleteAlbum(Integer albumId);
    /*修改单个album*/
    int updateAlbum(Map<String,Object> map);
}
