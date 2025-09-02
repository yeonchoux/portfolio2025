package com.suyeon.shopProject.clothes;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class ClothesService {
	
	final ClothesMapper clothesMapper;
	
	public ClothesService(ClothesMapper clothesMapper) {
		this.clothesMapper = clothesMapper;
	}
	
	public ClothesDTO findByClothes(int id) {
		return clothesMapper.findByClothes(id);
	}
	
	public List<ClothesDTO> findAll() {
		return clothesMapper.findAll();
	}
}
