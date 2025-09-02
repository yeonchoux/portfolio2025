package com.suyeon.shopProject.board;

import java.sql.Timestamp;

public class BoardDTO {
	
	int id;
	String name;
	String content;
	Timestamp createdAt;
	String comment;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public Timestamp getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [id=" + id + ", name=" + name + ", content=" + content + ", createdAt=" + createdAt
				+ ", comment=" + comment + "]";
	}

	
}
