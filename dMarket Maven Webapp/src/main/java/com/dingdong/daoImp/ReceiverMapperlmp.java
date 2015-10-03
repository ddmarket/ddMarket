package com.dingdong.daoImp;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dingdong.dao.ReceiverMapper;
import com.dingdong.mybatis.MybatisUtil;
import com.dingdong.pojo.Receiver;

public class ReceiverMapperlmp implements ReceiverMapper {

	@Override
	public boolean addReceiver(Receiver receiver) {
		boolean isAdd = false;
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		ReceiverMapper receiverMapper = sqlSession
				.getMapper(ReceiverMapper.class);
		isAdd = receiverMapper.addReceiver(receiver);
		sqlSession.commit();
		sqlSession.close();
		return isAdd;
	}

	@Override
	public boolean update(Receiver receiver) {
		boolean isUpdate = false;
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		ReceiverMapper receiverMapper = sqlSession
				.getMapper(ReceiverMapper.class);
		isUpdate = receiverMapper.update(receiver);
		sqlSession.commit();
		sqlSession.close();
		return isUpdate;
	}

	@Override
	public boolean deleteReceiverByID(int id) {
		boolean isDelete = false;
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		ReceiverMapper receiverMapper = sqlSession
				.getMapper(ReceiverMapper.class);
		isDelete = receiverMapper.deleteReceiverByID(id);
		sqlSession.commit();
		sqlSession.close();
		return isDelete;
	}

	@Override
	public List<Receiver> selectByUserID(int uid) {
		List<Receiver> receiverList = null;
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		ReceiverMapper receiverMapper = sqlSession
				.getMapper(ReceiverMapper.class);
		receiverList = receiverMapper.selectByUserID(uid);
		sqlSession.commit();
		sqlSession.close();
		return receiverList;
	}

}
