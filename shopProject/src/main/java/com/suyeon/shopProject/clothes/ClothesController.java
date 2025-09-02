package com.suyeon.shopProject.clothes;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/clothes")
@Controller
public class ClothesController {
	
	private final ClothesService clothesService;
	
	public ClothesController(ClothesService clothesService) {
		this.clothesService = clothesService;
	}
	
	@GetMapping("/list")
	public String clothesPage(Model model) {
	    List<ClothesDTO> clothesList = clothesService.findAll();
	    model.addAttribute("clothesList", clothesList);
	    return "clothes/clothesList";
	}

	@GetMapping("/{id}")
	public String clothesDetail(@PathVariable("id") int id, Model model) {
	    ClothesDTO clothesDTO = clothesService.findByClothes(id);
	    model.addAttribute("clothes", clothesDTO);
	    return "clothes/clothesDetail";
	}
	
}
