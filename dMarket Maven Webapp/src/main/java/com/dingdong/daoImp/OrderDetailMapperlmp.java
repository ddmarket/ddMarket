package com.dingdong.daoImp;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dingdong.dao.OrderDetailMapper;
import com.dingdong.mybatis.MybatisUtil;
import com.dingdong.pojo.OrderDetail;

public class OrderDetailMapperlmp {

	public boolean createOrderDetail(OrderDetail OrderDetail) {
		boolean isAdd = false;
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		OrderDetailMapper orderDetailMapper = sqlSession.getMapper(OrderDetailMapper.class);
		isAdd = orderDetailMapper.createOrderDetail(OrderDetail);
		sqlSession.commit();
		sqlSession.close();
		return isAdd;
	}

	public boolean updateOrderDetail(OrderDetail OrderDetail) {
		// TODO Auto-generated method stub
		return false;
	}

	public OrderDetail findOrderDetailByID(int id) {
		OrderDetail orderDetail = new OrderDetail();
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		OrderDetailMapper orderDetailMapper = sqlSession.getMapper(OrderDetailMapper.class);
		orderDetail = orderDetailMapper.findOrderDetailByID(id);
		sqlSession.commit();
		sqlSession.close();
		return orderDetail;
	}

	public List<OrderDetail> findOrderDetailsByOrderID(int orderID) {
		List<OrderDetail> list = new ArrayList<OrderDetail>();
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		OrderDetailMapper orderDetailMapper = sqlSession.getMapper(OrderDetailMapper.class);
		list = orderDetailMapper.findOrderDetailsByOrderID(orderID);
		sqlSession.commit();
		sqlSession.close();
		return list;
	}

	public int findSalesByItemID(String itemID, Date startDate) {
		// TODO Auto-generated method stub
		return 0;
	}

}
