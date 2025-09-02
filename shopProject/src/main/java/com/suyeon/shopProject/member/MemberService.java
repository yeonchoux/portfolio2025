package com.suyeon.shopProject.member;

import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	final MemberMapper memberMapper;
	
	public MemberService(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	};
	
	public void insertMember(MemberDTO memberDTO) {
		memberMapper.insertMember(memberDTO);
	}
	
	public MemberDTO findByMember(String email) {
		return memberMapper.findByMember(email);
	}
	
	
	
}

