package com.dingdong.daoImp;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dingdong.dao.UserMapper;
import com.dingdong.mybatis.MybatisUtil;
import com.dingdong.pojo.User;
import com.dingdong.util.MD5Util;

public class UserMapperlmp implements UserMapper {

	@Override
	public User login(String userName, String password) {
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);

		// 使用MD5加密密码
		password = MD5Util.GetMD5Code(password);
		User user = userMapper.login(userName, password);
		sqlSession.commit();
		sqlSession.close();
		return user;
	}

	@Override
	public int insert(User u) {
		// 更改为MD5 Password
		String mdPassword = MD5Util.GetMD5Code(u.getPassword());
		u.setPassword(mdPassword);

		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		int result = userMapper.insert(u);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}

	@Override
	public int update(User u) {
		// 更改为MD5 Password
		String mdPassword = MD5Util.GetMD5Code(u.getPassword());
		u.setPassword(mdPassword);

		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		int result = userMapper.update(u);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}

	@Override
	public List<User> findAllUsers() {
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		List userList = userMapper.findAllUsers();
		sqlSession.commit();
		sqlSession.close();
		return userList;
	}

	@Override
	public boolean delete(int id) {
		SqlSessionFactory sqlSessionFactory = MybatisUtil.getSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		boolean result = userMapper.delete(id);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}

}
