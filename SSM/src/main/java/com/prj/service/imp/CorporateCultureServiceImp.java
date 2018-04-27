package com.prj.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.CorporateCultureMapper;
import com.prj.pojo.Corporate_culture;
import com.prj.service.ICorporateCultureService;
@Service
public class CorporateCultureServiceImp implements ICorporateCultureService {
	@Resource
	private CorporateCultureMapper mapper;

	@Override
	public void update(Corporate_culture cc) {
		mapper.update(cc);
	}

	@Override
	public Corporate_culture findAll() {
		List<Corporate_culture> ccs = mapper.findAll();
		if (ccs == null||ccs.size()==0) {
			return null;
		}
		Corporate_culture cc = ccs.get(0);
		return cc;
	}

}
