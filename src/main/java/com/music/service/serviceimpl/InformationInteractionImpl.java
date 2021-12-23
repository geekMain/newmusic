package com.music.service.serviceimpl;

import com.music.bean.InformationInteraction;
import com.music.dao.InformationInteractionDao;
import com.music.service.InformationInteractionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class InformationInteractionImpl implements InformationInteractionService {
  @Resource
  private InformationInteractionDao informationInteractionDao;

  @Override
  public List<InformationInteraction> queryAllInteraction() {
	return informationInteractionDao.queryAllInteraction();
  }

  @Override
  public List<InformationInteraction> queryInteraction(Map<String, Object> map) {
    return informationInteractionDao.queryInteraction(map);
  }
}
