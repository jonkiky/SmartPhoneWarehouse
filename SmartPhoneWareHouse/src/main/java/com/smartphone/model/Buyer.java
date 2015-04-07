package com.smartphone.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

	@Entity
	@Table( name = "buyer" )
	public class Buyer {
		private int id;
		private String user_name;
		private String title;
		private String fname;
		private String lname;
		private String email;
		private String password;
		private int day_of_birth;
		private int year_of_birth;
		private int month_of_birth;
		private int phone_number;
		private String log_time;
		private String status;
		

		@Id
		@Column (name="id")
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		@Column(name = "user_name")
		public String getUser_name() {
			return user_name;
		}
		public void setUser_name(String user_name) {
			this.user_name = user_name;
		}
		
		@Column(name = "title")
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		
		@Column(name = "fname")
		public String getFname() {
			return fname;
		}
		public void setFname(String fname) {
			this.fname = fname;
		}
		
		@Column(name = "lname")
		public String getLname() {
			return lname;
		}
		public void setLname(String lname) {
			this.lname = lname;
		}
		
		@Column(name = "email")
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		
		@Column(name = "password")
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		
		@Column(name = "day_of_birth")
		public int getDay_of_birth() {
			return day_of_birth;
		}
		public void setDay_of_birth(int day_of_birth) {
			this.day_of_birth = day_of_birth;
		}
		@Column(name = "year_of_birth")
		public int getYear_of_birth() {
			return year_of_birth;
		}
		public void setYear_of_birth(int year_of_birth) {
			this.year_of_birth = year_of_birth;
		}
		
		@Column(name = "month_of_birth")
		public int getMonth_of_birth() {
			return month_of_birth;
		}
		public void setMonth_of_birth(int month_of_birth) {
			this.month_of_birth = month_of_birth;
		}
		
		@Column(name = "phone_number")
		public int getPhone_number() {
			return phone_number;
		}
		public void setPhone_number(int phone_number) {
			this.phone_number = phone_number;
		}
		
		@Column(name = "log_time")
		public String getLog_time() {
			return log_time;
		}
		public void setLog_time(String log_time) {
			this.log_time = log_time;
		}
		
		@Column(name = "status")
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		
		
	}


