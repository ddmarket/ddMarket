package com.dingdong.test;

import java.util.Date;

import org.junit.Test;

import com.dingdong.pojo.Comment;
import com.dingdong.service.CommentService;

public class CommentTest {
	@Test
	public void addCommentTest() {
		CommentService commentService = new CommentService();
		Comment comment = new Comment();
		comment.setCommenttime(new Date());
		comment.setContent("fsdf");
		comment.setItem_id(2);
		comment.setLevel(3);
		comment.setUser_id(2);
		commentService.addComment(comment);
	}

	@Test
	public void updateCommentTest() {
		CommentService commentService = new CommentService();
		Comment comment = new Comment();
		comment.setCommenttime(new Date());
		comment.setContent("fsdfsddddddddf");
		comment.setItem_id(2);
		comment.setLevel(3);
		comment.setUser_id(2);
		comment.setComment_id(1);
		commentService.updateComment(comment);
	}

	@Test
	public void findCommentsByItemIDTest() {
		CommentService commentService = new CommentService();
		commentService.findCommentsByItemID("2");
	}

	@Test
	public void findCommentsByUserID() {
		CommentService commentService = new CommentService();
		commentService.findCommentsByUserID("2");
	}
}
