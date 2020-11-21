package com.example.demo.db;

import java.io.InputStream;
import java.sql.Connection;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.session.TransactionIsolationLevel;

import com.example.demo.vo.Faq_BoardVo;




public class FaqManager {

	public static SqlSessionFactory sqlSessionFactory;

	static {
		try {

			String resource = "com/example/demo/db/sqlMapConfig.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			System.out.println("static" + e.getMessage());
		}
	}

	public static List<Faq_BoardVo> findAll(HashMap map) {
		List<Faq_BoardVo> list = null;

		SqlSession session = sqlSessionFactory.openSession();
		// sql세션에 접근하기위해서 생성
		list = session.selectList("faq.selectAll", map);
		// dept라는 namespace에 selectAll
		session.close();

		return list;
	}

	public static int insert(Faq_BoardVo fb) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);

		re = session.insert("faq.insert", fb);

		session.close();

		return re;
	}
	
	public static int updateHit(int no) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);
		re = session.update("faq.updateHit", no);
		session.close();
		return re;
	}

	public static Faq_BoardVo findByNo(int no) {
		Faq_BoardVo fb = null;
		SqlSession session = sqlSessionFactory.openSession();

		fb = session.selectOne("faq.selectByNo", no);
		System.out.println("객체정보...............................");
		System.out.println(fb);
		System.out.println("-------------------------------------");
		session.close();

		return fb;
	}

	public static int getNextNo() {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession();

		re = session.selectOne("faq.nextNo");

		session.close();

		return re;
	}

	public static int update(Faq_BoardVo fb) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);

		re = session.update("faq.update", fb);

		session.close();

		return re;
	}

	public static int delete(int no) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);

		re = session.delete("faq.delete", no);

		session.close();

		return re;
	}

	public static int getTotalCount() {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession();

		re = session.selectOne("faq.selectCount");

		session.close();

		return re;
	}

//		public static boolean isMember(String id, String pwd) {
//	
//			boolean re = false;
//	
//			SqlSession session = sqlSessionFactory.openSession();
//	
//			re = session.selectOne("member.login");
//	
//			session.close();
//	
//			return re;
//	
//		}

}
