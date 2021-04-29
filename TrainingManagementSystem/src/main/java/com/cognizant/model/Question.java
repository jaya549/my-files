package com.cognizant.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Question {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int qid;
	private String Description;
	private String ch1;
	private String ch2;
	private String ch3;
	private String ch4;
	private String cans;
	@ManyToOne 
	private Course ccode;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getQid() {
		return qid;
	}
	public void setQid(int qid) {
		this.qid = qid;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getCh1() {
		return ch1;
	}
	public void setCh1(String ch1) {
		this.ch1 = ch1;
	}
	public String getCh2() {
		return ch2;
	}
	public void setCh2(String ch2) {
		this.ch2 = ch2;
	}
	public String getCh3() {
		return ch3;
	}
	public void setCh3(String ch3) {
		this.ch3 = ch3;
	}
	public String getCh4() {
		return ch4;
	}
	public void setCh4(String ch4) {
		this.ch4 = ch4;
	}
	public String getCans() {
		return cans;
	}
	public void setCans(String cans) {
		this.cans = cans;
	}
	public Course getCcode() {
		return ccode;
	}
	public void setCcode(Course ccode) {
		this.ccode = ccode;
	}
	public Question() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Question [id=" + id + ", qid=" + qid + ", Description=" + Description + ", ch1=" + ch1 + ", ch2=" + ch2
				+ ", ch3=" + ch3 + ", ch4=" + ch4 + ", cans=" + cans + ", ccode=" + ccode + "]";
	}
	
	
}	
