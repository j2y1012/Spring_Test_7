package com.iu.s7;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iu.member.MemberDTO;
import com.iu.member.MemberService;

@Controller
@RequestMapping(value="/member/**")
public class MemberController {
@Inject
private MemberService memberService;
@RequestMapping(value="memberJoin",method=RequestMethod.GET)
public void memberJoin(){
	
}
@RequestMapping(value="memberJoin",method=RequestMethod.POST)
public String memberJoin(MemberDTO memberDTO){
	return "/WEB-INF/views/home";
}

}
