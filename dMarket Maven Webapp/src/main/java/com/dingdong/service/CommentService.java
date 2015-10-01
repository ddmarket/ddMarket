package com.dingdong.service;

import java.util.List;

import com.dingdong.dao.CommentMapper;
import com.dingdong.daoImp.CommentMapperlmp;
import com.dingdong.pojo.Comment;
import com.dingdong.pojo.Item;

public class CommentService {

	public boolean addComment(Comment comment) {
		CommentMapper cm = new CommentMapperlmp();
		return cm.addComment(comment);
	}

	public boolean updateComment(Comment comment) {
		CommentMapper cm = new CommentMapperlmp();
		return cm.updateComment(comment);
	}

	// 花式查询
	public Item findCommentByID(String idStr) {
		CommentMapper cm = new CommentMapperlmp();
		int id = Integer.parseInt(idStr);
		return cm.findCommentByID(id);
	}

	public List findCommentsByItemID(String itemID) {
		CommentMapper cm = new CommentMapperlmp();
		int id = Integer.parseInt(itemID);
		return cm.findCommentsByItemID(id);
	}

	public List findCommentsByUserID(String userID) {
		CommentMapper cm = new CommentMapperlmp();
		int id = Integer.parseInt(userID);
		return cm.findCommentsByItemID(id);
	}
}
