package com.dingdong.dao;


import java.util.List;

import com.dingdong.pojo.Comment;
import com.dingdong.pojo.Item;

public interface CommentMapper {
	public boolean addComment(Comment comment);
	

	public boolean updateComment(Comment comment);
	//花式查询
	public Item findCommentByID(int id);
	
	public List findCommentsByItemID(int itemID);
	
	public List findCommentsByUserID(int userID);
}