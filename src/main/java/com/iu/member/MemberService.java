package com.iu.member;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class MemberService {
@Inject
private MemberDAO memberDAO;
public MemberDTO memberLogin(MemberDTO memberDTO)throws Exception{
	MemberDAO memberDAO = new MemberDAO();
	return memberDAO.MemberLogin(memberDTO);
}
public int memberJoin(MemberDTO memberDTO)throws Exception{
	MemberDAO memberDAO = new MemberDAO();
	return memberDAO.MemberJoin(memberDTO);
}
public int update(MemberDTO memberDTO)throws Exception{
	MemberDAO memberDAO = new MemberDAO();
	return memberDAO.update(memberDTO);
	
}
public int delete(MemberDTO memberDTO)throws Exception{
	MemberDAO memberDAO = new MemberDAO();
	return memberDAO.delete(memberDTO);
}
}
