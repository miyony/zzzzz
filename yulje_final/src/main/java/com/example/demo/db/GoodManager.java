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

import com.example.demo.vo.Good_BoardVo;


public class GoodManager {

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

	public static List<Good_BoardVo> findAll(HashMap map) {
		List<Good_BoardVo> list = null;

		SqlSession session = sqlSessionFactory.openSession();
		// sql세션에 접근하기위해서 생성
		list = session.selectList("good.selectAll", map);
		// dept라는 namespace에 selectAll
		session.close();

		return list;
	}

	public static int insert(Good_BoardVo gb) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);

		re = session.insert("good.insert", gb);

		session.close();

		return re;
	}

	public static Good_BoardVo findByNo(int no) {
		Good_BoardVo gb = null;
		SqlSession session = sqlSessionFactory.openSession();

		gb = session.selectOne("good.selectByNo", no);
		System.out.println("객체정보...............................");
		System.out.println(gb);
		System.out.println("-------------------------------------");
		session.close();

		return gb;
	}

	public static int updateStep(HashMap map) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);

		re = session.update("good.updateStep", map);

		session.close();

		return re;
	}

	public static int getNextNo() {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession();

		re = session.selectOne("good.nextNo");

		session.close();

		return re;
	}

	public static int update(Good_BoardVo gb) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);

		re = session.update("good.update", gb);

		session.close();

		return re;
	}

	public static int delete(HashMap map) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);

		re = session.delete("good.delete", map);

		session.close();

		return re;
	}

	public static int getTotalCount() {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession();

		re = session.selectOne("good.selectCount");

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
