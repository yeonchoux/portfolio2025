package com.suyeon.shopProject.cart;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suyeon.shopProject.clothes.ClothesDTO;
import com.suyeon.shopProject.member.MemberDTO;

import jakarta.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RequestMapping("/cart")
@Controller
public class CartController {
	
	public final CartService cartSerivce;
	
	public CartController(CartService cartSerivce) {
		this.cartSerivce = cartSerivce;
	}
	
	@GetMapping("/cartList")
	public String cartView( Model model, HttpSession session) {
		

		MemberDTO member =(MemberDTO)session.getAttribute("loginUser");
		if (member == null) {
			session.setAttribute("targeturl", "redirect:/cart/cartList");
			return "member/login";
		}
		
		int id = member.getId();
		
		List<CartDTO> cartList = cartSerivce.findAll(id);
		model.addAttribute("cartList", cartList);
		return "cart/cartList";
	}

	
	@PostMapping("/add")
	public String cartAdd(CartDTO cartDTO, HttpSession session) {
		
		MemberDTO member =(MemberDTO)session.getAttribute("loginUser");
		int id = member.getId();
		cartDTO.setUserId(id);
		cartSerivce.cartAdd(cartDTO);
		
		return "redirect:/cart/cartList";
	}
	
	@PostMapping("/update")
	public String updateQuantity(CartDTO cartDTO) {
		cartSerivce.updateQuantity(cartDTO);
		return "redirect:/cart/cartList";
	}
	
	@PostMapping("/delete")
	public String deleteItem(@RequestParam("cartId") int cartId) {
		cartSerivce.deleteItem(cartId);
		return "redirect:/cart/cartList";
	}
	

}
