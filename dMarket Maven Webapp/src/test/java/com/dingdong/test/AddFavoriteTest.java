package com.dingdong.test;

import java.util.Date;

import org.junit.Test;

import com.dingdong.pojo.Favorite;
import com.dingdong.service.FavoriteService;

public class AddFavoriteTest {
	@Test
	//
	public void addFavoriteTest() {
		Favorite favorite = new Favorite();
		favorite.setFavortime(new Date());
		favorite.setItem_id(1);
		favorite.setUser_id(1);
		FavoriteService favoriteService = new FavoriteService();
		favoriteService.addFavorite(favorite);
	}

	@Test
	public void deleteFavoriteByIDTest() {
		FavoriteService favoriteService = new FavoriteService();
		favoriteService.deleteFavoriteByID("1");
	}

	@Test
	public void updateTest() {
		Favorite favorite = new Favorite();
		favorite.setFavortime(new Date());
		favorite.setItem_id(1);
		favorite.setUser_id(2);
		favorite.setFavorite_id(2);
		FavoriteService favoriteService = new FavoriteService();
		favoriteService.update(favorite);
	}
}
