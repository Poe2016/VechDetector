package com.DAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.util.Con2Ora;

public class Update {
	private Connection con;
	private Statement statement;
	
	public Update() {
		this.con=Con2Ora.con;
		this.statement=Con2Ora.st;
	}
	public boolean doUpdate(String sqlString) {
		boolean result=false;
		try {
			statement.execute(sqlString);
			if(statement.getUpdateCount()==1) {
				result=true;
			}
			statement.execute("commit");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
