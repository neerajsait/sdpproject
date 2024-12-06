package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="recruiter_table")
public class Recruiter 
{ 
  @Override
	public String toString() {
		return "Recruiter [id=" + id + ", gmail=" + gmail + ", password=" + password + "]";
	}
@Id
  @GeneratedValue(strategy = GenerationType.IDENTITY) 
  @Column(name="recruiter_id")
  private int id;
  @Column(name ="recruiter_gmail",length = 50)
  private String gmail;
  @Column(name="recruiter_password",length = 50,nullable = false)
  private String password;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getGmail() {
	return gmail;
}
public void setGmail(String gmail) {
	this.gmail = gmail;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

}