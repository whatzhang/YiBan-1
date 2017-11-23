package sust.util;

import java.util.ArrayList;
import java.util.List;

public class Test {

	private WordUtil wu = new WordUtil();
	private NameFirst nf = new NameFirst();
	
	@org.junit.Test
	public void test() {
		 /*List<String> filelist = new ArrayList<String>();
		 filelist=wu.getDowenIfo("C:\\Users\\Zhang\\Desktop\\易班项目\\表原件\\2017年电信学院国家励志、助学金工作通知\\2017年电信学院国家励志、助学金工作通知\\附件\\");
	     for (String string : filelist) {
			System.out.println(string);
		}
		 for (int i = 0; i < filelist.size(); i++) {
				System.out.println(filelist.get(i));

		}*/
		
		
		String as = "附件5：《2017-2018学年陕西省高校其他家庭经济困难学生电子档案》.doc";
	    String aa = as.split("：")[0];
	    System.out.println(as.contains(aa));
	}

}
