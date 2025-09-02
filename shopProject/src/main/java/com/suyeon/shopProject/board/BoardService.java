package com.suyeon.shopProject.board;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class BoardService {
	
	final BoardMapper boardMapper;
	
	public BoardService(BoardMapper boardMapper) {
		this.boardMapper = boardMapper;
	}
	
	public List<BoardDTO> findAll(){
		return boardMapper.findAll();
	}
	
	public BoardDTO findById(int id) {
		return boardMapper.findById(id);
	}
	
	public void insertBoard(BoardDTO boardDTO) {
		boardMapper.insertBoard(boardDTO);
	}
	
	public void deleteBoard(int id) {
		boardMapper.deleteBoard(id);
	}



}
