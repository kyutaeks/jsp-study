package test.jsp.study.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import test.jsp.study.dao.UserDAO;
import test.jsp.study.dao.impl.UserDAOImpl;
import test.jsp.study.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDAO udao = new UserDAOImpl();
	
	@Override
	public List<Map<String, String>> selectUserList(Map<String, String> user) {
		// TODO Auto-generated method stub
		return udao.selectUserList(user);
	}

	@Override
	public Map<String, String> selectUser(Map<String, String> user) {
		// TODO Auto-generated method stub
		return udao.selectUser(user);
	}

	@Override
	public int insertUser(Map<String, String> user) {
		return udao.insertUser(user);
	}

	@Override
	public int updateUser(Map<String, String> user) {
		// TODO Auto-generated method stub
		return udao.updateUser(user);
	}

	@Override
	public int deleteUser(Map<String, String> user) {
		// TODO Auto-generated method stub
		return udao.deleteUser(user);
	}

	public static void main(String[] args) {
		UserService us = new UserServiceImpl();
		Map<String, String> user = new HashMap<>();
		System.out.println(us.selectUserList(user));
		
//		user.put("ui_num", "44");
//		System.out.println(us.selectUser(user));
		
//		user.put("ui_name","가나다");
//		user.put("ui_age","10");
//		user.put("ui_id","asd22");
//		user.put("ui_etc","기타");
//		System.out.println(us.insertUser(user));
//		
//		user.put("ui_num", "44");
//		user.put("ui_name", "수정확인하겠습니다.");
//		user.put("ui_age", "20");
//		user.put("ui_id", "asd33");
//		user.put("ui_etc", "기타");
//		System.out.println(us.updateUser(user));
//		
//		user.put("ui_num", "47");
//		System.out.println(us.deleteUser(user));
		
		
		
	}
}
