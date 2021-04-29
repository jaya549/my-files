package com.cognizant.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="users")
public class Employee {
	@Id
	private String userid;
	private String pwd;
	private String fname;
	private String lname;
	private String dob;
	private String phone;
	private String email;
	private String gender;
	private String address;
	private String role;
	private String isactive;
	public Employee() {
		// TODO Auto-generated constructor stub
	}
	
	public Employee(String userid, String pwd, String fname, String lname, String dob, String phone, String email,
			String gender, String address, String role, String isactive) {
		super();
		this.userid = userid;
		this.pwd = pwd;
		this.fname = fname;
		this.lname = lname;
		this.dob = dob;
		this.phone = phone;
		this.email = email;
		this.gender = gender;
		this.address = address;
		this.role = role;
		this.isactive = isactive;
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
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getIsactive() {
		return isactive;
	}
	public void setIsactive(String isactive) {
		this.isactive = isactive;
	}
	
	
}
