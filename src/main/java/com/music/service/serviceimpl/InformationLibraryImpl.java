package com.music.service.serviceimpl;

import com.music.bean.InformationLibrary;
import com.music.dao.InformationLibraryDao;
import com.music.service.InformationLibraryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class InformationLibraryImpl implements InformationLibraryService {
  @Resource
  private InformationLibraryDao informationLibraryDao;

  @Override
  public List<InformationLibrary> queryAllLibrary() {
	return informationLibraryDao.queryAllLibrary();
  }
}
