package com.dingdong.service;

import java.util.List;

import com.dingdong.dao.ClassifyMapper;
import com.dingdong.daoImp.ClassifyMapperlmp;
import com.dingdong.pojo.Classify;

public class ClassifyService {

	public boolean addClassfy(Classify classsify){
		boolean isAdded = false;
		ClassifyMapper cm = new ClassifyMapperlmp();
		isAdded = cm.addClassify(classsify);
		return isAdded;
		
	}

	public List findAll( ){
		ClassifyMapper cm = new ClassifyMapperlmp();
		return cm.findAll();
	}
	
	public Classify findClassifyByID(String idStr){
		Classify classsify = null;
		ClassifyMapper cm = new ClassifyMapperlmp();
		int id = Integer.parseInt(idStr);
		classsify = cm.findClassifyByID(id);
		return classsify;
	}

}
