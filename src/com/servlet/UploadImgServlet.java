package com.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.DAO.InsertClass;

import net.sf.json.JSONArray;

public class UploadImgServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// 上传文件存储目录
	private static final String UPLOAD_DIRECTORY = "D:\\apache-tomcat-9.0.13\\upload\\img\\";
	//private static final String UPLOAD_DIRECTORY = "C:\\workspace\\apache-tomcat-9.0.13\\upload\\img\\";
	// 上传配置
	private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3; // 3MB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
        String strCurrentTime = df.format(new Date());
		
		
		
		request.setCharacterEncoding("GBK");
		String imgName = username+strCurrentTime+".jpg";
		// 检测是否为多媒体上传
		if (!ServletFileUpload.isMultipartContent(request)) {
			// 如果不是则停止
			PrintWriter writer = response.getWriter();
			writer.println("Error: 表单必须包含 enctype=multipart/form-data");
			writer.flush();
			return;
		}

		// 配置上传参数
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// 设置内存临界值 - 超过后将产生临时文件并存储于临时目录中
		factory.setSizeThreshold(MEMORY_THRESHOLD);
		// 设置临时存储目录
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

		ServletFileUpload upload = new ServletFileUpload(factory);

		// 设置最大文件上传值
		upload.setFileSizeMax(MAX_FILE_SIZE);

		// 设置最大请求值 (包含文件和表单数据)
		upload.setSizeMax(MAX_REQUEST_SIZE);

		// 构造临时路径来存储上传的文件
		// 这个路径相对当前应用的目录
		String uploadPath = UPLOAD_DIRECTORY+username;
		System.out.println(uploadPath);
		// String uploadPath = "G:\\新建文件夹";

		// 如果目录不存在则创建
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}

		try {
			// 解析请求的内容提取文件数据
			@SuppressWarnings("unchecked")
			List<FileItem> formItems = upload.parseRequest(request);

			if (formItems != null && formItems.size() > 0) {
				// 迭代表单数据
				for (FileItem item : formItems) {
					// 处理不在表单中的字段
					if (!item.isFormField()) {
						String filePath = uploadPath + File.separator + imgName;
						File storeFile = new File(filePath);
						// 在控制台输出文件的上传路径
						System.out.println("路径： " + filePath);
						// 保存文件到硬盘
						item.write(storeFile);
						String sql="insert into imginfo(path,username) values(\'"+filePath+"\',\'"+username+"\')";
						InsertClass insert=new InsertClass();
						boolean flag=insert.doInsert(sql);
						if(flag) {
							System.out.println("保存成功");
						    Runtime run = Runtime.getRuntime();   
						    String command="F:\\practice\\caffe\\caffe-master\\caffe-master\\Build\\x64\\Release\\classification.exe F:\\practice\\SRC\\recognition\\deploy.prototxt F:\\practice\\SRC\\model\\_iter_20000.caffemodel F:\\practice\\SRC\\mean.binaryproto F:\\practice\\SRC\\recognition\\category.txt "+filePath;
						    //String command="C:\\workspace\\tools\\Release\\classification.exe C:\\workspace\\tools\\deploy.prototxt C:\\workspace\\tools\\_iter_20000.caffemodel C:\\workspace\\tools\\mean.binaryproto C:\\workspace\\tools\\category.txt "+filePath;
						    try {   
						        // run.exec("cmd /k shutdown -s -t 3600");   
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
				request.setAttribute("upImgState", "1");
				System.out.println("文件上传成功");
			}
		} catch (Exception ex) {
			request.setAttribute("message", "错误信息: " + ex.getMessage());
		}
	}
}
