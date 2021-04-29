package com.cognizant.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Admin {
	@Id
	private String userid;
	private String pwd;
	private String role;
	
	
	public Admin() {
		// TODO Auto-generated constructor stub
	}
	public Admin(String userid, String pwd, String role) {
		this.userid = userid;
		this.pwd = pwd;
		this.role = role;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
}
