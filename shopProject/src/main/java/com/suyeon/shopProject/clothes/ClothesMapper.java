package com.suyeon.shopProject.clothes;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ClothesMapper {
	
	ClothesDTO findByClothes(int id);

	List<ClothesDTO> findAll();
}
