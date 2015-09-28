package com.dingdong.daoImp;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dingdong.dao.ReceiverMapper;
import com.dingdong.mybatis.MybatisUtil;
import com.dingdong.pojo.Receiver;

public class ReceiverMapperlmp {

	public boolean addReceiver(Receiver receiver) {
		boolean isAdd = false;
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		ReceiverMapper receiverMapper = sqlSession.getMapper(ReceiverMapper.class);
		isAdd = receiverMapper.addReceiver(receiver);
		sqlSession.commit();
		sqlSession.close();
		return isAdd;
	}
	public boolean update(Receiver receiver) {
		boolean isUpdate = false;
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		ReceiverMapper receiverMapper = sqlSession.getMapper(ReceiverMapper.class);
		isUpdate = receiverMapper.update(receiver);
		sqlSession.commit();
		sqlSession.close();
		return isUpdate;
	}

	public boolean deleteReceiverByID(int id) {
		boolean isDelete= false;
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		ReceiverMapper receiverMapper = sqlSession.getMapper(ReceiverMapper.class);
		isDelete = receiverMapper.deleteReceiverByID(id);
		sqlSession.commit();
		sqlSession.close();
		return isDelete;
	}

}
