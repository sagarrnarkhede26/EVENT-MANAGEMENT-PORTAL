package com.app.pojos;


import java.time.LocalDate;
import java.util.*;
import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "users")
public class Users {
	
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int userId;

@Column(length=30)
private String userName;

private String fname;

private String lname;

private String email;

private String password;

private String status;

@Column(name="contact_no",length=30)
private String contactNo;

@DateTimeFormat(pattern = "yyyy-MM-dd")
private LocalDate dob;

private String gender;

@Enumerated(EnumType.STRING)
@Column(length = 20)
private Role role;

@OneToMany(mappedBy = "eventOwner",cascade = CascadeType.ALL)
private List<Events> events=new ArrayList<>();

@OneToMany(mappedBy = "vendor",cascade = CascadeType.ALL)
private List<Bids> bids=new ArrayList<>();

public List<Bids> getBids() {
	return bids;
}

public void setBids(List<Bids> bids) {
	this.bids = bids;
}

public Users() {
	super();
	// TODO Auto-generated constructor stub
}

public int getUserId() {
	return userId;
}

public void setUserId(int userId) {
	this.userId = userId;
}

public String getUserName() {
	return userName;
}

public void setUserName(String userName) {
	this.userName = userName;
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

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getContactNo() {
	return contactNo;
}

public void setContactNo(String contactNo) {
	this.contactNo = contactNo;
}

public LocalDate getDob() {
	return dob;
}

public void setDob(LocalDate dob) {
	this.dob = dob;
}

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public Role getRole() {
	return role;
}

public void setRole(Role role) {
	this.role = role;
}

public List<Events> getEvents() {
	return events;
}

public void setEvents(List<Events> events) {
	this.events = events;
}

@Override
public String toString() {
	return "Users [userId=" + userId + ", userName=" + userName + ", fname=" + fname + ", lname=" + lname + ", email="
			+ email + ", password=" + password + ", status=" + status + ", contactNo=" + contactNo + ", dob=" + dob
			+ ", gender=" + gender + ", role=" + role + ", events=" + events + ", bids=" + bids + "]";
}









}
