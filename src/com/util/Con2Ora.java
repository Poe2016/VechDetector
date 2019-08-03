package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * 连接数据库
 * @author Poe
 *
 */
public class Con2Ora {
	private static Con2Ora instance=null;
	public static Connection con = null;
	public static Statement st = null;
	 
	public static Con2Ora getInstance() {
       if(instance==null){
       	synchronized (Con2Ora.class) {  
       		if(instance==null){
       			instance=new Con2Ora();
       			}
              }
       }
       return instance;
	}
	static {

		try {
			System.out.println("开始连接数据库");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:" + "thin:@Poe:1521:PORACLE";
			String user = "vechAdmin";
			String password = "admin";
			con = DriverManager.getConnection(url, user, password);
			st=con.createStatement();
			con.setAutoCommit(false);
			System.out.println("数据库连接成功");

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
