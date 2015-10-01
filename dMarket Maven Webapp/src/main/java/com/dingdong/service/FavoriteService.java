package com.dingdong.service;

import com.dingdong.daoImp.FavoriteMapperlmp;
import com.dingdong.pojo.Favorite;

public class FavoriteService {

	public boolean addFavorite(Favorite favorite) {
		FavoriteMapperlmp favoriteMapper = new FavoriteMapperlmp();
		return favoriteMapper.addFavorite(favorite);
	}

	public boolean deleteFavoriteByID(String idStr) {
		int id = Integer.parseInt(idStr);
		FavoriteMapperlmp favoriteMapper = new FavoriteMapperlmp();
		return favoriteMapper.deleteFavoriteByID(id);
	}

	public boolean update(Favorite favorite) {
		FavoriteMapperlmp favoriteMapper = new FavoriteMapperlmp();
		return favoriteMapper.update(favorite);
	}

}
