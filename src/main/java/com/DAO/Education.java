package com.DAO;

public class Education {
	private int doc_id;
	private String degree;
	private String institue;
	private String completion_year;
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getInstitue() {
		return institue;
	}
	public void setInstitue(String institue) {
		this.institue = institue;
	}
	public String getCompletion_year() {
		return completion_year;
	}
	public void setCompletion_year(String completion_year) {
		this.completion_year = completion_year;
	}
	public int getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}
}
