package com.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.InsertClass;
import com.util.FileByUrl;

public class UrlUploadImg extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// 上传文件存储目录
	private static final String UPLOAD_DIRECTORY = "D:\\apache-tomcat-9.0.13\\upload\\img\\";
	//private static final String UPLOAD_DIRECTORY = "C:\\workspace\\apache-tomcat-9.0.13\\upload\\img\\";

	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
        String strCurrentTime = df.format(new Date());
        String url = request.getParameter("url");
        System.out.println(url);
        request.setCharacterEncoding("GBK");
        response.setContentType("text/html;charset=GBK");//解决中文乱码
		String imgName = username+strCurrentTime+".jpg";
		String filePath = UPLOAD_DIRECTORY+username + File.separator + imgName;
		FileByUrl fbu=new FileByUrl();
		boolean flag = fbu.saveToFile(url, filePath);//保存图片
		String sql="insert into imginfo(path,username) values(\'"+filePath+"\',\'"+username+"\')";
		InsertClass insert=new InsertClass();
		boolean insertFlag=insert.doInsert(sql);
		if(flag&&insertFlag) {
			System.out.println("保存成功");
		    Runtime run = Runtime.getRuntime();   
		    String command="F:\\practice\\caffe\\caffe-master\\caffe-master\\Build\\x64\\Release\\classification.exe F:\\practice\\SRC\\recognition\\deploy.prototxt F:\\practice\\SRC\\model\\_iter_20000.caffemodel F:\\practice\\SRC\\mean.binaryproto F:\\practice\\SRC\\recognition\\category.txt "+filePath;
		    //String command="C:\\workspace\\tools\\Release\\classification.exe C:\\workspace\\tools\\deploy.prototxt C:\\workspace\\tools\\_iter_20000.caffemodel C:\\workspace\\tools\\mean.binaryproto C:\\workspace\\tools\\category.txt "+filePath;
		    try {   
		        Process process = run.exec(command);
		        
		        InputStream input = process.getInputStream(); 
		        BufferedReader reader = new BufferedReader(new InputStreamReader(input));
		        String result="";
		        String szline = reader.readLine();
		        while (szline!= null) {   
		            System.out.println(szline);
		            if(!szline.endsWith("--")) {
		            	result+=szline;
		            }
		            szline = reader.readLine();
		            if(!result.equals("") && szline!= null)
		            	result+="|";
		        }   
		        reader.close();   
		        process.waitFor(); 
		        process.destroy();  
				try {
					if(!result.equals("")) {
						response.getWriter().print(result);
					}else {
						System.out.println("无结果");
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
		    } catch (Exception e) {            
		        e.printStackTrace();   
		    }   
		}else {
			System.out.println("保存失败");
		}
	}

}
