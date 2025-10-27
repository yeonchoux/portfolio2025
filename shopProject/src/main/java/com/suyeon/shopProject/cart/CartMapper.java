package com.suyeon.shopProject.cart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartMapper {
	
	CartDTO findBycartList(int cartId);
	
	List<CartDTO> findAll(int id);
	
	int addInCart(CartDTO cartDTO);
	
	int updateCart(CartDTO cartDTO);
	
	int deleteItem(int cartID);

}
