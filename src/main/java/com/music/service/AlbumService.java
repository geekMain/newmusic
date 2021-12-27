package com.music.service;

import com.music.bean.Album;

import java.util.List;
import java.util.Map;

public interface AlbumService {
    /*获取album全部*/
    List<Album> getAlbumAll();
    /*根据专辑名获取单个album*/
    Album getAlbumOne(Integer albumId);
    /*添加album*/
    int insertAlbum(Album album);
    /*根据id删除单个album*/
    int deleteAlbum(Integer albumId);
    /*修改单个album*/
    int updateAlbum(Album album);
}
