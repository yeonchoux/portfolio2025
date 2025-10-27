package com.suyeon.shopProject.cart;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class CartService {
	
	final CartMapper cartMapper;
	
	public CartService(CartMapper cartMapper) {
		this.cartMapper = cartMapper;
	}
	
	public CartDTO findBycartList(int id) {
		return cartMapper.findBycartList(id);
	}
	
	
	public List<CartDTO> findAll(int id) {
		return cartMapper.findAll(id);
	}
	
	public void cartAdd(CartDTO cartDTO) {
		cartMapper.addInCart(cartDTO);
	}
	
	public void updateQuantity(CartDTO cartDTO) {
		cartMapper.updateCart(cartDTO);
	}
	
	public void deleteItem(int cartID) {
		cartMapper.deleteItem(cartID);
	}

}
