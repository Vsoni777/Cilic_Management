package com.DAO;

public class Userinfo {
  private int doctor_id;
  private int patient_id;
  private String username;
  public int getDoctor_id() {
	return doctor_id;
}
public void setDoctor_id(int doctor_id) {
	this.doctor_id = doctor_id;
}
public int getPatient_id() {
	return patient_id;
}
public void setPatient_id(int patient_id) {
	this.patient_id = patient_id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPasswrod() {
	return passwrod;
}
public void setPasswrod(String passwrod) {
	this.passwrod = passwrod;
}
private String passwrod;
  
}
