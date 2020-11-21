package com.example.demo.db;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.Doc_CareerVo;
import com.example.demo.vo.Doc_EducationVo;
import com.example.demo.vo.Doc_ScheduleVo;
import com.example.demo.vo.DoctorVo;

public class DoctorManager {
	
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
	
	//doctor list
	public static List<DoctorVo> findAllDoc() {
		List<DoctorVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("doctor.selectAll");
		session.close();
		return list;
	}
	
	public static DoctorVo findByNoDoc(int doc_no) {
		DoctorVo d = null;
		SqlSession session = sqlSessionFactory.openSession();
		d = session.selectOne("doctor.selectByNo", doc_no);
		session.close();
		return d;
	}
	
	//doc-sche list
	public static List<Doc_ScheduleVo> findAllSche(int doc_no){
		List<Doc_ScheduleVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("sche.selectAll", doc_no);
		session.close();
		return list;
	}
	
	//doc-edu list
	public static List<Doc_EducationVo> findAllEdu(int doc_no){
		List<Doc_EducationVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("edu.selectAll", doc_no);
		session.close();
		return list;
	}
	
	//doc-car list
	public static List<Doc_CareerVo> findAllCar(int doc_no){
		List<Doc_CareerVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("car.selectAll", doc_no);
		session.close();
		return list;
	}
}
