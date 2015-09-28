package com.dingdong.mybatis;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class MybatisUtil {

	private static SqlSessionFactory sqlSessionFactory = null;

	// Big Thing
	public static SqlSessionFactory getSessionFactory() {
		if (sqlSessionFactory != null)
			return sqlSessionFactory;
		MybatisUtil.class.getClassLoader();
		// mybatis的配置文件
		Resource resource = new ClassPathResource("mybatis-config.xml");
		InputStream is = null;
		try {
			is = resource.getInputStream();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (is == null) {
			MybatisUtil.class.getClassLoader();
			is = ClassLoader
					.getSystemResourceAsStream("/WEB-INF/classes/mybatis-config.xml");
		}
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder()
				.build(is);
//		System.out.println(sessionFactory);
		return sessionFactory;
	}

	public static void main(String[] args) {
		MybatisUtil mybatisUtil = new MybatisUtil();
		SqlSessionFactory sessionFactory = mybatisUtil.getSessionFactory();
		
	}
}
