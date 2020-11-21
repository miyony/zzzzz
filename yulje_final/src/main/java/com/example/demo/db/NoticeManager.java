package com.example.demo.db;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.Notice_BoardVo;

public class NoticeManager {
	
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		try {
			String resource = "com/example/demo/db/sqlMapConfig.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory =
			  new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("manager:"+e.getMessage());
		}
	}
	
	//공지사항
	public static List<Notice_BoardVo> findAllNotice(HashMap map) {
		List<Notice_BoardVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("notice.selectAll", map);
		session.close();
		return list;
	}
	
	public static Notice_BoardVo findByNo(int no) {
		Notice_BoardVo n = null;
		SqlSession session = sqlSessionFactory.openSession();
		n = session.selectOne("notice.selectByNo", no);
		session.close();
		return n;
	}
	
	public static int getNextNo() {
		int re = 0;
		SqlSession session = sqlSessionFactory.openSession();
		re = session.selectOne("notice.getNextNo");
		session.close();
		return re;
	}
	
	public static int getTotalCount() {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession();
		re = session.selectOne("notice.getTotalCount");
		session.close();
		return re;
	}
	
	public static int updateHit(int no) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);
		re = session.update("notice.updateHit", no);
		session.close();
		return re;
	}
	
	public static int insert(Notice_BoardVo n) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);
		re = session.insert("notice.insert", n);
		session.close();
		return re;
	}
	
	public static int update(Notice_BoardVo n) {
		
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);
		re= session.update("notice.update", n);
		session.close();
		
		return re;
		
	}
	
	public static int delete(int no) {
		int re = -1;
		
		SqlSession session = sqlSessionFactory.openSession(true);
		
		re = session.delete("notice.delete", no);
		
		session.close();
		
		return re;
		
	}
	
	
}
