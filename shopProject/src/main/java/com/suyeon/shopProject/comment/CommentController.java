package com.suyeon.shopProject.comment;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/comment")
@Controller
public class CommentController {
	
	final CommentService commentService;
	
	public CommentController(CommentService commentService) {
		this.commentService = commentService;
	}
	
	@PostMapping("/create")
	public String createComment(CommentDTO commentDTO) {
		
		commentService.insertComment(commentDTO);
		
		return "redirect:/board/detail/" + commentDTO.getBoardId();
	}
	
	
}
