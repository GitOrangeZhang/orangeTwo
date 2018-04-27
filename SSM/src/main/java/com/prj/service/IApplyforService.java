package com.prj.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.prj.pojo.Applyfor;
@Service
public interface IApplyforService {
	public void save(Applyfor applyfor);

	public void del(int id);

	public void update(Applyfor applyfor);

	public Applyfor findById(int id);

	public List<Applyfor> findAll();
}
