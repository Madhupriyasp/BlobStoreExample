package com.miniproject;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class Users {

	Users() {}
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long id;
	@Persistent
	private String name;
	@Persistent
	private String email;
	@Persistent
	private String username;
	@Persistent
	private String password1;
	@Persistent
	private String password2;
	@Persistent
	private String birthdate;
	@Persistent
	private String gender;
	@Persistent
	private String role;
	@Persistent
	private String branch;
	@Persistent
	private String sem;
	@Persistent
	private String year;
	


	public void setName(String newName) {
		name = newName;
	}

	public String getName() {
		return name;
	}

	public void setEmail(String newemail) {
		email = newemail;
	}

	public String getEmail() {
		return email;
	}

	public void setUserName(String newUserName) {
		username = newUserName;
	}

	public String getUserName() {
		return username;

	}
	public void setPassword(String newPassword) {
		password1 = newPassword;
	}

	public String getPassword() {
		return password1;

	}
	public void setRePassword(String newRePassword) {
		password2 = newRePassword;
	}

	public String getRePassword() {
		return password2;

	}
	public void setBirthDate(String newBirthDate) {
		birthdate = newBirthDate;
	}

	public String getBirthDate() {
		return birthdate;
	}

	public void setGender(String newGender) {
		gender = newGender;
	}

	public String getGender() {
		return gender;

	}

	public void setRole(String newRole) {
		role = newRole;
	}

	public String getRole() {
		return role;
	}

	public void setBranch(String newBranch) {
		branch = newBranch;
	}

	public String getBranch() {
		return branch;
	}

	public void setSem(String newSem) {
		sem = newSem;
	}

	public String getSem() {
		return sem;
	}

	public void setYear(String newYear) {
		year = newYear;
	}

	public String getYear() {
		return year;
	}
}
