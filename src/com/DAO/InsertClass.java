package com.DAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.sun.javafx.runtime.SystemProperties;
import com.util.Con2Ora;

/**
 * 
 * @author Poe
 *
 */
public class InsertClass {
	private Connection con;
	private Statement statement;
	
	public InsertClass() {
		this.con=Con2Ora.con;
		this.statement=Con2Ora.st;
	}
	
	public boolean doInsert(String sqlString) {
		boolean flag=false;
		try {
			statement.execute(sqlString);
			if(statement.getUpdateCount()==1) {
				flag=true;
			}
			statement.execute("commit");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

}
