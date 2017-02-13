package com.start4321.web.mybatis;

import java.io.Reader; 

import javax.servlet.http.HttpServletRequest;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.web.util.WebUtils;

import com.start4321.web.model.Member;



public class memberManager {
	private static SqlSessionFactory sqlSessionFactory;
	
	static{
		try{
			// XML의 파일을 읽어 들여야 함.
			Reader reader = 
					Resources.getResourceAsReader("com/start4321/web/mybatis/mybatis_config.xml");
			// 초기화 작업
			sqlSessionFactory =
					new SqlSessionFactoryBuilder().build(reader);
		}
		catch(Exception err){
			throw new RuntimeException("SqlSessionFactory 인스턴스 생성 실패 : " + err);
		}
	}
	
	public static Member select(Member res){
		Member mem = null;
		SqlSession session = sqlSessionFactory.openSession();
		
		mem = session.selectOne("select", res);
		
		
		if(mem != null){
			// spring에서 제공하는 세션 저장 방식
			return mem;	
		}
		else{
			return null;
		}
	}
	
	public static void insert(Member res){
		SqlSession session = sqlSessionFactory.openSession();

		session.insert("insert", res);
		session.commit();
		
	}
	
	
	public static Member getIdPw(Member member ,  HttpServletRequest req){
		Member mem = null;
		// session을 열어 주어야 함.
		SqlSession session = sqlSessionFactory.openSession();

		// 전체 회원을 조회하는 select한 결과값을 담아줌.
		mem = session.selectOne("getIdPw", member);
		
		if(mem != null){
			// spring에서 제공하는 세션 저장 방식
			WebUtils.setSessionAttribute(req, "USER_NAME", mem.getName());
		
			return mem;	
		}
		else{
			return null;
		}
	}
}
	
