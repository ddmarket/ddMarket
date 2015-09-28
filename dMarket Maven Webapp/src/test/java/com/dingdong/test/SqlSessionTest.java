package com.dingdong.test;

import org.apache.ibatis.session.SqlSessionFactory;

import com.dingdong.mybatis.MybatisUtil;

public class SqlSessionTest {
	public static void main(String[] args) {
		MybatisUtil mybatisUtil = new MybatisUtil();
		SqlSessionFactory SqlSession = MybatisUtil.getSessionFactory();
		System.out.println("SqlSession = " + SqlSession);
	}
}
