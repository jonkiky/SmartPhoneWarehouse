package com.smartphone.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
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
		private String birth;
		private int phone_number;
		private String log_time;
		private String status;
		
	

		@Id
		@GeneratedValue
		@Column (name="id")
		
		public int getId() {
			return id;
		}
	
		public String getBirth() {
			return birth;
		}
		@Column (name="birth")
		
		public void setBirth(String birth) {
			this.birth = birth;
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


