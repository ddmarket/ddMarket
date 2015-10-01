package com.dingdong.daoImp;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dingdong.dao.FavoriteMapper;
import com.dingdong.mybatis.MybatisUtil;
import com.dingdong.pojo.Favorite;

public class FavoriteMapperlmp {

	private SqlSessionFactory sqlSessionFactory = MybatisUtil
			.getSessionFactory();

	public boolean addFavorite(Favorite favorite) {
		boolean isAdded = false;
		SqlSession session = sqlSessionFactory.openSession();
		FavoriteMapper favoriteMapper = session.getMapper(FavoriteMapper.class);
		isAdded = favoriteMapper.addFavorite(favorite);
		session.commit();
		session.close();
		return isAdded;
	}

	public boolean deleteFavoriteByID(int id) {
		boolean isDeleted = false;
		SqlSession session = sqlSessionFactory.openSession();
		FavoriteMapper favoriteMapper = session.getMapper(FavoriteMapper.class);
		isDeleted = favoriteMapper.deleteFavoriteByID(id);
		session.commit();
		session.close();
		return isDeleted;
	}

	public boolean update(Favorite favorite) {
		boolean isUpdate = false;
		SqlSession session = sqlSessionFactory.openSession();
		FavoriteMapper favoriteMapper = session.getMapper(FavoriteMapper.class);
		isUpdate = favoriteMapper.update(favorite);
		session.commit();
		session.close();
		return isUpdate;
	}

}
