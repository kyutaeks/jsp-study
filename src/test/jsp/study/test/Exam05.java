package test.jsp.study.test;

import java.util.HashMap;
import java.util.Map;

public class Exam05 {
	public static void main(String[] args) {
		String[] strs = new String[3];
		strs[0] = "a";
		strs[1] = "b";
		strs[2] = "c";
		System.out.println(strs[0]==null);
		Map<String,String[]> map = new HashMap<>();
		map.put("id", strs);
	}
}
