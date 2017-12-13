package ru.nikolay.jdbcTemplate.objects;

import java.sql.Timestamp;

public class User {
//	private static Calendar date;
	private int id;
	private String name;
	private String password;
	private Timestamp timestamp;
	private boolean admin;

	public boolean isAdmin() {
		return admin;
	}

	public void setAdmin(boolean admin) {
		this.admin = admin;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Timestamp getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}

	//	Date date1 = new Date();
	public static void main(String[] args) {
		User user = new User();
		System.out.println(new java.sql.Date(System.currentTimeMillis()));
		System.out.println(new java.sql.Timestamp(System.currentTimeMillis()));
	}

	@Override
	public String toString() {
		return
				"id=" + id +
				", name='" + name + '\'' +
				", password='" + password + '\'' +
				", timestamp=" + timestamp;
	}
}
