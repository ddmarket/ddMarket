package com.dingdong.daoImp;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dingdong.dao.ItemPicMapper;
import com.dingdong.mybatis.MybatisUtil;
import com.dingdong.pojo.ItemPic;

public class ItemPicMapperlmp {

	public boolean addItemPic(ItemPic itemPic) {
		boolean isAdd = false;
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		ItemPicMapper itemPicMapper = sqlSession.getMapper(ItemPicMapper.class);
		isAdd = itemPicMapper.addItemPic(itemPic);
		sqlSession.commit();
		sqlSession.close();
		return isAdd;
	}

	public boolean updateOrderDetail(ItemPic itemPic) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<ItemPic> findItemPicsByItemID(int id) {
		List<ItemPic> list = new ArrayList<ItemPic>();
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		ItemPicMapper itemPicMapper = sqlSession.getMapper(ItemPicMapper.class);
		list = itemPicMapper.findItemPicsByItemID(id);
		sqlSession.commit();
		sqlSession.close();
		return list;
	}

}
