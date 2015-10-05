package com.dingdong.daoImp;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dingdong.dao.OrderMapper;
import com.dingdong.mybatis.MybatisUtil;
import com.dingdong.pojo.Order;

public class OrderMapperlmp {

	public int createOrder(Order Order) {
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		int lastID = orderMapper.createOrder(Order);
		sqlSession.commit();
		sqlSession.close();
		return lastID;
	}

	public boolean updateOrder(Order Order) {
		boolean isUpdate = false;
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		isUpdate = orderMapper.updateOrder(Order);
		sqlSession.commit();
		sqlSession.close();
		return isUpdate;
	}

	public boolean deleteOrder(int id) {
		boolean isDeleted = false;
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		isDeleted = orderMapper.deleteOrder(id);
		sqlSession.commit();
		sqlSession.close();
		return isDeleted;
	}

	/**
	 * 通过订单号查找订单信息
	 * 
	 * @param id
	 * @return
	 */
	public Order findOrderByID(int id) {
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		Order order = orderMapper.findOrderByID(id);
		sqlSession.commit();
		sqlSession.close();
		return order;
	}

	// FDFyg
	/**
	 * 通过用户id查找订单信息
	 * 
	 * @param userID
	 * @return
	 */
	public List<Order> findOrdersByUserID(int userID) {
		List<Order> list = new ArrayList<Order>();
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		list = orderMapper.findOrdersByUserID(userID);
		sqlSession.commit();
		sqlSession.close();
		return list;
	}

	public List<Order> findOrdersByUserIdAndDate(Map<String, String> map) {
		List<Order> list = new ArrayList<Order>();
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		list = orderMapper.findOrdersByUserIdAndDate(map);
		sqlSession.commit();
		sqlSession.close();
		return list;
	}

	public List<Order> findOrdersByDate(Date date) {
		// TODO Auto-generated method stub
		return null;
	}

}
