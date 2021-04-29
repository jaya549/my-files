package com.cognizant.model;

import java.util.List;

public class ExamQuiz {
	private List<String> cans;
	private List<String> ans;
	private String ccode;
	public ExamQuiz() {
		// TODO Auto-generated constructor stub
	}
	
	public List<String> getCans() {
		return cans;
	}

	public void setCans(List<String> cans) {
		this.cans = cans;
	}

	public List<String> getAns() {
		return ans;
	}

	public void setAns(List<String> ans) {
		this.ans = ans;
	}

	public String getCcode() {
		return ccode;
	}
	public void setCcode(String ccode) {
		this.ccode = ccode;
	}
	@Override
	public String toString() {
		return "ExamQuiz [ cans=" + cans + ", ans=" + ans + ", ccode=" + ccode + "]";
	}	
	
}
