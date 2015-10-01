package com.dingdong.daoImp;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dingdong.dao.CommentMapper;
import com.dingdong.mybatis.MybatisUtil;
import com.dingdong.pojo.Comment;
import com.dingdong.pojo.Item;

public class CommentMapperlmp implements CommentMapper {
	private SqlSessionFactory sqlSessionFactory = MybatisUtil
			.getSessionFactory();

	@Override
	public boolean addComment(Comment comment) {
		boolean isAdded = false;
		SqlSession session = sqlSessionFactory.openSession();
		CommentMapper commentMapper = session.getMapper(CommentMapper.class);
		isAdded = commentMapper.addComment(comment);
		session.commit();
		session.close();
		return isAdded;
	}

	@Override
	public boolean updateComment(Comment comment) {
		boolean isUpdate = false;
		SqlSession session = sqlSessionFactory.openSession();
		CommentMapper commentMapper = session.getMapper(CommentMapper.class);
		isUpdate = commentMapper.updateComment(comment);
		session.commit();
		session.close();
		return isUpdate;
	}

	@Override
	public Item findCommentByID(int id) {
		Item item = null;
		SqlSession session = sqlSessionFactory.openSession();
		CommentMapper commentMapper = session.getMapper(CommentMapper.class);
		item = commentMapper.findCommentByID(id);
		session.commit();
		session.close();
		return item;
	}

	@Override
	public List<Comment> findCommentsByItemID(int itemID) {
		List<Comment> commentList = new ArrayList<Comment>();
		SqlSession session = sqlSessionFactory.openSession();
		CommentMapper commentMapper = session.getMapper(CommentMapper.class);
		commentList = commentMapper.findCommentsByItemID(itemID);
		session.commit();
		session.close();
		return commentList;
	}

	@Override
	public List<Comment> findCommentsByUserID(int userID) {
		List<Comment> commentList = new ArrayList<Comment>();
		SqlSession session = sqlSessionFactory.openSession();
		CommentMapper commentMapper = session.getMapper(CommentMapper.class);
		commentList = commentMapper.findCommentsByUserID(userID);
		session.commit();
		session.close();
		return commentList;
	}

}
