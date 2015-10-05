package com.dingdong.daoImp;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dingdong.dao.ItemMapper;
import com.dingdong.mybatis.MybatisUtil;
import com.dingdong.pojo.Item;

public class ItemMapperlmp implements ItemMapper {

	public int addItem(Item item) {
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		int lastID = 0;
		SqlSession session = sqlSessionFactory.openSession();
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		lastID = itemMapper.addItem(item);
		session.commit();
		session.close();
		return lastID;
	}

	public boolean updateItem(Item item) {
		boolean isUpdate = false;
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession session = sqlSessionFactory.openSession();
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		isUpdate = itemMapper.updateItem(item);
		session.commit();
		session.close();
		return isUpdate;
	}

	public boolean deleteItem(int id) {
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		boolean isdelete = false;
		SqlSession session = sqlSessionFactory.openSession();
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		isdelete = itemMapper.deleteItem(id);
		session.commit();
		session.close();
		return isdelete;
	}

	public Item findItemByID(int id) {
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		Item item = null;
		SqlSession session = sqlSessionFactory.openSession();
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		item = itemMapper.findItemByID(id);
		session.commit();
		session.close();
		return item;
	}

	public List<Item> findItemsByName(Map<String, Object> map) {
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		List<Item> itemList = new ArrayList<Item>();
		SqlSession session = sqlSessionFactory.openSession();
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		itemList = itemMapper.findItemsByName(map);
		session.commit();
		session.close();
		return itemList;
	}

	public List<Item> findItemsByClassifyID(Map<String, Object> map) {
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		List<Item> itemList = new ArrayList<Item>();
		SqlSession session = sqlSessionFactory.openSession();
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		itemList = itemMapper.findItemsByClassifyID(map);
		session.commit();
		session.close();
		return itemList;
	}

	// String name, String orderMethod 封装成list作为参数
	public List<Item> findItemsByNameByOrder(Map<String, Object> map) {
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		List<Item> itemList = new ArrayList<Item>();
		SqlSession session = sqlSessionFactory.openSession();
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		itemList = itemMapper.findItemsByNameByOrder(map);
		session.commit();
		session.close();
		return itemList;
	}

	public int countItem() {
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		int result = 0;
		SqlSession session = sqlSessionFactory.openSession();
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		result = itemMapper.countItem();
		session.commit();
		session.close();
		return result;
	}

	/**
	 * 查找所有的商品信息
	 * 
	 * @param map
	 * @return
	 */
	public List<Item> findAllItems(Map<String, Object> map) {
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		List<Item> itemList = new ArrayList<Item>();
		SqlSession session = sqlSessionFactory.openSession();
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		itemList = itemMapper.findAllItems(map);
		session.commit();
		session.close();
		return itemList;
	}

	@Override
	public int findLastID() {
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession session = sqlSessionFactory.openSession();
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		int lastID = itemMapper.findLastID();
		session.commit();
		session.close();
		return lastID;
	}

}
