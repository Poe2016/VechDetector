package com.util;

import java.io.IOException;
import java.io.InputStream;

public class ThreadInst implements Runnable{
	
	private Runtime runtime;
	private Process process;
	private String command;
	private InputStream input;
	
	public ThreadInst(String command) {
		this.command=command;
		runtime = Runtime.getRuntime();
	}
	

	@Override
	public void run() {
		try {
			System.out.println("qian");
			this.process = runtime.exec(command);
			System.out.println("hou");
			input = process.getInputStream();
			System.out.println("lllll");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public InputStream getInput() {
		return input;
	}

}
