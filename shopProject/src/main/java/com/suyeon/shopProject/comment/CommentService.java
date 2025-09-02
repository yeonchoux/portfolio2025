package com.suyeon.shopProject.comment;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class CommentService {
	
	final CommentMapper commentMapper;
	
	public CommentService(CommentMapper commentMapper) {
		this.commentMapper = commentMapper;
	}
	
	public void insertComment(CommentDTO commentDTO) {
		commentMapper.insertComment(commentDTO);	
		}

	public List<CommentDTO> findByBoardId(int boardId) {
        return commentMapper.findByBoardId(boardId);
    }
}
