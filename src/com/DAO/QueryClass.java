package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.util.Con2Ora;

/**
 * 
 * @author Poe
 *
 */
public class QueryClass {
	private Statement statement;
	private ResultSet result;
	
	public QueryClass() {
		this.statement=Con2Ora.st;
	}
	
	public boolean doQuery(String sql) {
		boolean flag=false;
		try {
			result = statement.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(result!=null)
			flag=true;
		return flag;
	}
	
	public String getByString(String field) {
		String value=null;
		try {
			if(result.next()) {
				value = result.getString(field);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return value;
	}
	
	public void close() {
		try {
			result.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
