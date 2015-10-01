package com.dingdong.dao;

import java.util.List;

import com.dingdong.pojo.Classify;

public interface ClassifyMapper {

	public boolean addClassify(Classify classsify);

	public Classify findClassifyByID(int id);

	public List findAll();
}