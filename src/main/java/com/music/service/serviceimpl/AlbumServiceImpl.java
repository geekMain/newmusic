package com.music.service.serviceimpl;

import com.music.bean.Album;
import com.music.dao.AlbumDao;
import com.music.service.AlbumService;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class AlbumServiceImpl implements AlbumService {
    /**
     *import org.springframework.beans.factory.annotation.Autowired;
     * import javax.annotation.Resource;
     * 功能一样
     * @Autowired注解是按照类型（byType）装配依赖对象，默认情况下它要求依赖对象必须存在，
     * 如果允许null值，可以设置它的required属性为false。如果我们想使用按照名称（byName）来装配，
     * 可以结合@Qualifier注解一起使用。(通过类型匹配找到多个candidate,在没有@Qualifier、@Primary注解的情况下，
     * 会使用对象名作为最后的fallback匹配)
     *
     * @Resource默认按照ByName自动注入，由J2EE提供，需要导入包javax.annotation.Resource。
     * @Resource有两个重要的属性：name和type，而Spring将@Resource注解的name属性解析为bean的名字
     * ，而type属性则解析为bean的类型。所以，如果使用name属性，则使用byName的自动注入策略，而使用type属性时则使用byType自动注入策略。
     * 如果既不制定name也不制定type属性，
     * 这时将通过反射机制使用byName自动注入策略。
     *
     * Resource的作用相当于@Autowired，只不过@Autowired按照byType自动注入。
     * */
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
