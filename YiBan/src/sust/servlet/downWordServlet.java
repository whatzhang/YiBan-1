package sust.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class downWordServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String fileName = request.getParameter("filename");
		String type = request.getParameter("ty");
		fileName = getAllName(fileName, request);
		
		String filePath = request.getSession().getServletContext().getRealPath("/template/DownFile/")+fileName;
		
		System.out.println("1.文件名：" + fileName + "\n2.文件路径：" + filePath);
		
		response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
		try {
			FileInputStream fis = new FileInputStream(new File(filePath));
			byte[] b = new byte[1024];
			int length;
			OutputStream out = response.getOutputStream();
			while ((length = fis.read(b)) > 0) {
				out.write(b, 0, length);
			}

			out.flush();
			out.close();
			fis.close();
			    
		} catch (Exception e) {
			System.out.println("下载出错！");
		}
	}

	private String getAllName(String fileName,HttpServletRequest request) {
        
		String re = null;
		
		List<String> filelist = (List<String>) request.getSession().getAttribute("DownInf");
		/*for (int i = 0; i < filelist.size(); i++) {
		  if(filelist.get(i).contains(fileName)){
			  System.out.println(filelist.get(i));
			  re = filelist.get(i);
			  break;
		  }
			System.out.println(filelist.get(i));
	    }*/
		re = filelist.get(Integer.parseInt(fileName));
		return re;
	}

}
