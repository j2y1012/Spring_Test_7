package com.iu.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
@Repository
public class MemberDAO {
@Inject
private SqlSession sqlSession;
private final String NAMESPACE="MemberMapper.";
public int MemberJoin(MemberDTO memberDTO)throws Exception{
	return sqlSession.insert(NAMESPACE+"Join",memberDTO);
}
public MemberDTO MemberLogin(MemberDTO memberDTO)throws Exception{
	return sqlSession.selectOne(NAMESPACE+"Login", memberDTO);
}
public int update(MemberDTO memberDTO)throws Exception{
	return sqlSession.update(NAMESPACE+"update",memberDTO);
}
public int delete(MemberDTO memberDTO)throws Exception{
	return sqlSession.delete(NAMESPACE+"delete",memberDTO);
}
}
