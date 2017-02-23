package com.start4321.web.mybatis;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.start4321.web.model.item;

public class itemManager {
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
	
	public static List getList(item items){
		
		System.out.println(items.getItem_kind());
		System.out.println(items.getUSER_NAME());
		List list = null;
		SqlSession session = sqlSessionFactory.openSession();

	
			list = session.selectList("getSearchList", items);
	
		return list;
	}
	
	public static void item_insert(item items){
		SqlSession session = sqlSessionFactory.openSession();

		session.insert("item_insert", items);
		session.commit();
		
	}
	
	
	
}
	
