package com.prj.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.prj.pojo.Corporate_culture;
@Service
public interface CorporateCultureMapper {

	public void update(Corporate_culture cc);

	public List<Corporate_culture> findAll();
}
