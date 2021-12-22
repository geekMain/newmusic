package com.music.controller;

import com.music.bean.Album;
import com.music.service.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/albumPage")
public class AlbumController {
    @Autowired
    AlbumService albumService;
    //根据id查询album
    @RequestMapping("/findalbum")
    public String findalbum(Integer albumId, Model model){
        Album album = albumService.getAlbumOne(albumId);
        List<Album> albums = new ArrayList<>();
        albums.add(album);
        model.addAttribute("albumlist",albums);
        System.out.println(albumService.getAlbumOne(albumId));
        return "mainBody/albumMana";
    }
    //添加专辑
    @RequestMapping("/insertAlbum")
    public String insertalbum(Album album,Model model){
        albumService.insertAlbum(album);
        model.addAttribute("albumlist",albumService.getAlbumAll());
        return "mainBody/albumMana";
    }
    //根据id删除专辑
    @RequestMapping("/deleteAlbum/{albumId}")
    public String deleteAlbum(@PathVariable int albumId, Model model) {
        albumService.deleteAlbum(albumId);
        model.addAttribute("albumlist",albumService.getAlbumAll());
        return "mainBody/albumMana";
    }
    //修改album
    @RequestMapping("/updateAlbum/{albumId}")
    public String updateAlbum(@PathVariable int albumId,Album album,Model model) {
        System.out.println("11111111111111111");
        album.setAlbumId(albumId);
        Map<String,Object> map = new HashMap<>();
        map.put("albumName",album.getAlbumName());
        /*map.put("albumSingerId",album.getAlbumSingerId());
        map.put("issuingReleaseTime",album.getIssuingReleaseTime());
        map.put("companyId",album.getCompanyId());
        map.put("introduce",album.getIntroduce());*/
        albumService.updateAlbum(map);
        model.addAttribute("albumlist",albumService.getAlbumAll());
        System.out.println("album="+album);
        return "mainBody/albumMana";
    }
}
