package com.dingdong.service;

import java.util.List;

import com.dingdong.daoImp.ItemPicMapperlmp;
import com.dingdong.pojo.ItemPic;

public class ItemPicService {
	

	/**
	 * 增加图片
	 * @param itemPic
	 * @return
	 */
	public boolean addItemPic(ItemPic itemPic){
		ItemPicMapperlmp itemPicMapperlmp = new ItemPicMapperlmp();
		return itemPicMapperlmp.addItemPic(itemPic);
	}
	

	public boolean updateOrderDetail(ItemPic itemPic){
		return false;
	}
	
	/**
	 * 通过商品id查找图片
	 * @param id
	 * @return
	 */
	public List<ItemPic> findItemPicsByItemID(String id){
		ItemPicMapperlmp itemPicMapperlmp = new ItemPicMapperlmp();
		return itemPicMapperlmp.findItemPicsByItemID(Integer.parseInt(id));
	}

}
