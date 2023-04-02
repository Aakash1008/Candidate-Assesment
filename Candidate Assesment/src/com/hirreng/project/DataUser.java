package com.hirreng.project;

public class DataUser 
{
	static String name, qualites;
	static int ID;
	public static int getID() {
		return ID;
	}

	public static int setID(int iD) {
		return ID = iD;
	}

	public static String getName() {
		return name;
	}

	public static String setName(String name) {
		return DataUser.name = name;
	}

	public static String getQualites() {
		return qualites;
	}

	public static String setQualites(String qualites) 
	{
		return DataUser.qualites = qualites;
	}
}
