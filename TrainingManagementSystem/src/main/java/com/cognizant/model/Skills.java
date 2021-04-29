package com.cognizant.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;


@Entity
public class Skills {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String skill;
	@OneToMany(cascade = CascadeType.ALL)  
	@JoinColumn(name="skill")  
	private Set<Course> courses;
	
	public Skills() {
		// TODO Auto-generated constructor stub
	}
	
	
	public Skills(String skill) {
		this.skill = skill;
	}


	public Set<Course> getCourses() {
		return courses;
	}


	public void setCourses(Set<Course> courses) {
		this.courses = courses;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	
	
}
