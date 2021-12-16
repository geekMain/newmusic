package com.music.service;

import com.music.bean.Music;
import com.music.bean.Singer;

import java.util.List;

public interface MusicService {

    List<Music> queryAllSongs();

    List<Singer> queryAllSinger();
}
