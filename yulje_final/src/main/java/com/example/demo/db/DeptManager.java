package com.example.demo.db;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.DepartmentVo;
import com.example.demo.vo.DoctorVo;

public class DeptManager {

	private static SqlSessionFactory sqlSessionFactory;

	static {
		try {
			String resource = "com/example/demo/db/sqlMapConfig.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("manager:" + e.getMessage());
		}
	}

	// 모든목록 출력
	public static List<DepartmentVo> findAll() {
		List<DepartmentVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("department.selectAll");
		session.close();
		return list;
	}

	public static List<DoctorVo> findByDept(HashMap map) {
		List<DoctorVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("department.selectByNo", map);
		session.close();
		return list;
	}

	// 가나다순 정렬.
	public static List<DepartmentVo> findAllSort() {
		List<DepartmentVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("department.selectAllSort");
		session.close();
		return list;
	}

	// 의료과 상세.
	public static DepartmentVo findByNoDept(int dept_no) {
		DepartmentVo d = null;
		SqlSession session = sqlSessionFactory.openSession();
		d = session.selectOne("department.selectByNo", dept_no);
		session.close();
		return d;
	}

}