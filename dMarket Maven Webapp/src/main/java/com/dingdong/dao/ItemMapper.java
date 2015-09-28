package com.dingdong.dao;

import java.util.List;
import java.util.Map;

import com.dingdong.pojo.Item;

public interface ItemMapper {
	public boolean addItem(Item item);
	

	public boolean updateItem(Item item);
	
	
	public boolean deleteItem(int id);
	
	public Item findItemByID(int id);
	
	public List<Item> findItemsByName(Map<String,Object> map);
	
	public List<Item> findItemsByClassifyID(Map<String,Object> map);
	
	public List<Item> findItemsByNameByOrder(Map<String,Object> map);
	
	public int countItem();
	
	public List<Item> findAllItems(Map<String,Object> map);
}