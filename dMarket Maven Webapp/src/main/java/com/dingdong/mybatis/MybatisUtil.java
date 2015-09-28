package com.dingdong.mybatis;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisUtil  {
	
    private  static SqlSessionFactory sqlSessionFactory = null;

    //Big Thing
    public static SqlSessionFactory getSessionFactory() {
    	  if(sqlSessionFactory != null)
    		  return sqlSessionFactory;

    	  
    	 
//			TODO 如何优雅地读取配置文件    	
//  	    String file = MybatisUtil.class.getClassLoader().getResource("mybatis-config.xml").getFile();
//  	    String path = MybatisUtil.class.getClassLoader().getResource("mybatis-config.xml").getPath();
//  	    String sysF = MybatisUtil.class.getClassLoader().getSystemResource("mybatis-config.xml").getFile();
//  	    System.out.println(file);
  	    
  	    //mybatis的配置文件
    	@SuppressWarnings("static-access")
		InputStream is  =  MybatisUtil.class.getClassLoader().getSystemResourceAsStream("mybatis-config.xml");
  	    if (is == null) {
			is = MybatisUtil.class.getClassLoader().getSystemResourceAsStream("/WEB-INF/classes/mybatis-config.xml");
		}
  	    System.out.println("is还是空的吗？");
  	    System.out.println(is);
  	    
  	    SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(is);
  		return sessionFactory;
    }
    
}
