package com.suyeon.shopProject.board;

import com.suyeon.shopProject.comment.CommentDTO;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.suyeon.shopProject.comment.CommentService;


@RequestMapping("/board")
@Controller
public class BoardController {

	final BoardService boardService; 
	final CommentService commentService;

	public BoardController(BoardService boardService, CommentService commentService){
		this.boardService = boardService;
		this.commentService = commentService;
	}
	
	@GetMapping("/list")
	public String boardList(Model model) {
		List<BoardDTO> boardList = boardService.findAll();
		model.addAttribute("boardList", boardList);
		return "board/list";
	}
	
	@GetMapping("/create")
	public String createBoardForm() {
		return "board/create";
	}
	
	@PostMapping("/create")
	public String insertBoard(BoardDTO boardDTO) {
		boardService.insertBoard(boardDTO);
		return "redirect:/board/list";
	}
	
	@GetMapping("/detail/{id}")
	public String detailPage(@PathVariable("id") int id, Model model) {
	    // 게시글 조회
	    BoardDTO board = boardService.findById(id);
	    model.addAttribute("board", board);
	    
	    
		// 댓글 조회
	    List<CommentDTO> commentList = commentService.findByBoardId(id);
	    model.addAttribute("commentList", commentList);

	    return "board/detail";
	}

	@PostMapping("/delete/{id}")
	public String deleteBoard(@PathVariable("id") int id) {
		boardService.deleteBoard(id);
		return "redirect:/board/list";
	}
}
