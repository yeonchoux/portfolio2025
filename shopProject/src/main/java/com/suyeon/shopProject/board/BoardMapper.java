package com.suyeon.shopProject.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
	
	List<BoardDTO> findAll();
	
	BoardDTO findById(int id);
	
	void insertBoard(BoardDTO boardDTO);
	
	void deleteBoard(int id);
	

}
