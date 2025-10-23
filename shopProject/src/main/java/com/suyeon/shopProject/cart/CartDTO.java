package com.suyeon.shopProject.cart;

public class CartDTO {
	
	int cartId;
	int userId;
	int productId;
	int quantity;
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	@Override
	public String toString() {
		return "CartDTO [cartId=" + cartId + ", userId=" + userId + ", productId=" + productId + ", quantity="
				+ quantity + "]";
	}
	
	

}
