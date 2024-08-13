package com.DAO;

public class Clinic {
	private int doc_id;
	private String clinic_name;
	private String clinic_address;
	private String clinic_img;
	public String getClinic_name() {
		return clinic_name;
	}
	public void setClinic_name(String clinic_name) {
		this.clinic_name = clinic_name;
	}
	public String getClinic_address() {
		return clinic_address;
	}
	public void setClinic_address(String clinic_address) {
		this.clinic_address = clinic_address;
	}
	public String getClinic_img() {
		return clinic_img;
	}
	public void setClinic_img(String clinic_img) {
		this.clinic_img = clinic_img;
	}
	public int getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}
}
