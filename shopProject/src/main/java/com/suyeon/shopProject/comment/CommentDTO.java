package com.suyeon.shopProject.comment;

public class CommentDTO {
	
	int id;
	int boardId;
	String name;
	String content;
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "CommentDTO [id=" + id + ", boardId=" + boardId + ", name=" + name + ", content=" + content + "]";
	}
	
	
}
