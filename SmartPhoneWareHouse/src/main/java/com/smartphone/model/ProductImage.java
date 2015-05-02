package com.smartphone.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;




@Entity
@Table( name = "product_image" )

public class ProductImage {
	
	
		private int  id ;
		private String imageURl ;
		private String des ;
		private int  product_id ;
		private String status;

		@Id
		@Column (name="id")
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		
		@Column (name="imageURl")
		public String getImageURl() {
			return imageURl;
		}
		public void setImageURl(String imageURl) {
			this.imageURl = imageURl;
		}
		

		@Column (name="des")
		public String getDes() {
			return des;
		}
		public void setDes(String des) {
			this.des = des;
		}
		
		
		@Column (name="product_id")
		public int getProduct_id() {
			return product_id;
		}
		public void setProduct_id(int product_id) {
			this.product_id = product_id;
		}
		
		@Column (name="status")
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		
		

}
