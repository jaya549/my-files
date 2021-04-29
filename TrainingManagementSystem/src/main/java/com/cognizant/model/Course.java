package com.cognizant.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Course {
	@Id
	private String ccode;
	private String description;
	@ManyToOne
	private Skills skill;
	private String competency;
	private String audience;
	@OneToMany
	@JoinColumn(name="ccode")
	private Set<Question> questions;
	public Course() {
		// TODO Auto-generated constructor stub
	}
	public Course(String ccode, String description, Skills skill, String competency, String audience) {
		this.ccode = ccode;
		this.description = description;
		this.skill = skill;
		this.competency = competency;
		this.audience = audience;
	}
	public String getCcode() {
		return ccode;
	}
	public void setCcode(String ccode) {
		this.ccode = ccode;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Skills getSkill() {
		return skill;
	}
	public void setSkill(Skills skill) {
		this.skill = skill;
	}
	public String getCompetency() {
		return competency;
	}
	public void setCompetency(String competency) {
		this.competency = competency;
	}
	public String getAudience() {
		return audience;
	}
	public void setAudience(String audience) {
		this.audience = audience;
	}
	
	
}
