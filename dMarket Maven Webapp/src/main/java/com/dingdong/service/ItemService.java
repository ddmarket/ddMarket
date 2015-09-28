package com.dingdong.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import com.dingdong.daoImp.ItemMapperlmp;
import com.dingdong.pojo.Item;
import com.dingdong.pojo.Page;

public class ItemService {
	
	
	
	public boolean addItem(Item item){
		ItemMapperlmp itemMapper = new ItemMapperlmp();
		return itemMapper.addItem(item);
	}
	

	public boolean updateItem(Item item){
		ItemMapperlmp itemlmp = new ItemMapperlmp(); 
		return itemlmp.updateItem(item);
	}
	
	
	public boolean deleteItem(String idStr){
		int id = Integer.parseInt(idStr);
		ItemMapperlmp itemMapper = new ItemMapperlmp();
		return itemMapper.deleteItem(id);
	}
	
	
	//花式查询
	public Item findItemByID(String idStr){
		int id = Integer.parseInt(idStr);
		ItemMapperlmp itemMapper = new ItemMapperlmp();
		return itemMapper.findItemByID(id);
	}
	/*
	 * 根据名称查找商品并进行分页处理
	 */
	public List<Item> findItemsByName(String name,Page page){
		ItemMapperlmp itemMapper = new ItemMapperlmp();
		int totalNumber = itemMapper.countItem();
		page.setTotalNumber(totalNumber);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("itemName",name);
		map.put("page",page);
		return itemMapper.findItemsByName(map);
	}
	/**
	 * 通过分类ID来查找商品信息，并进行分页处理
	 * @param idStr
	 * @param page
	 * @return
	 */
	public List<Item> findItemsByClassifyID(String idStr,Page page){
		int id = Integer.parseInt(idStr);
		ItemMapperlmp itemMapper = new ItemMapperlmp();
		int totalNumber = itemMapper.countItem();
		page.setTotalNumber(totalNumber);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("ClassfyID",id);
		map.put("page",page);
		return itemMapper.findItemsByClassifyID(map);
	}
	/**
	 * 通过商品名查找商品信息再排序，排序后对结果进行分页处理
	 * @param name
	 * @param orderMethod
	 * @return
	 */
	public List<Item> findItemsByNameByOrder(String name,String orderMethod,Page page){
		ItemMapperlmp itemMapper = new ItemMapperlmp();
		int totalNumber = itemMapper.countItem();
		page.setTotalNumber(totalNumber);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("itemName",name);
		map.put("orderMethod",orderMethod);
		map.put("Page", page);
		return itemMapper.findItemsByNameByOrder(map);
	}
	public List<Item> findAllItems(Page page) {
		ItemMapperlmp itemMapper = new ItemMapperlmp();
		int totalNumber = itemMapper.countItem();
//		System.out.println("totalNumber = "+totalNumber);
		page.setTotalNumber(totalNumber);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("Page", page);
		return itemMapper.findAllItems(map);
	}
}
