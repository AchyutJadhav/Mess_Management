package com.ServletPages;

public class DataTransfer {
	static String user = null;
	static String owner = null;
	
	public static void setUser(String user1){
		user = user1; 
	}
	
	public static boolean getUser(){
		return user!=null ? true : false;
	}
	
	public static void setOwner(String owner1){
		owner = owner1; 
	}
	
	public static boolean getOwner(){
		return owner!=null ? true : false;
	}
}
