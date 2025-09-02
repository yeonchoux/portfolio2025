package com.suyeon.shopProject.comment;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CommentMapper {

	void insertComment(CommentDTO commentDTO); 
		
	List<CommentDTO> findByBoardId(int id);
	
	
}
