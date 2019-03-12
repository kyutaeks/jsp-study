package test.jsp.study.test;

public class Exam {

	public static void main(String[] args) {
		String str = "12345465465465465465465465465456";
		System.out.println(str.substring(str.length()-1));
		
		for(int i=1;i<=100;i++) {
			String numStr = i+"";
			numStr = numStr.substring(numStr.length()-1);
			int num = Integer.parseInt(numStr);
			if(num!=0 && num%3==0) {
				System.out.print("짝"+",");
			}else {
				System.out.print(i+",");
			}
			if(i%10==0) {
				System.out.println();
			}
		}
	}
}
