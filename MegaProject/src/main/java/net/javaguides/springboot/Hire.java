package net.javaguides.springboot;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table (name = "user")
public class Hire {
@Id
@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int resid;
	private String resusername;
	private String resemail;
	private String resmobile;
	private String resskillset;
	private String resexperience;
	

	public Hire() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Hire(String resusername, String resemail, String resmobile, String resskillset, String resexperience ) {
		super();
		this.resusername = resusername;
		this.resemail = resemail;
		this.resmobile =resmobile;
		this.resskillset = resskillset;
		this.resexperience = resexperience;
		
		
	}
	public int getResid() {
		return resid;
	}
	public void setResid(int resid) {
		this.resid = resid;
	}
	public String getResusername() {
		return resusername;
	}
	public void setResusername(String resusername) {
		this.resusername = resusername;
	}
	public String getResemail() {
		return resemail;
	}
	public void setResemail(String resemail) {
		this.resemail = resemail;
	}
	public String getResmobile() {
		return resmobile;
	}
	public void setResmobile(String resmobile) {
		this.resmobile = resmobile;
	}
	public String getResskillset() {
		return resskillset;
	}
	public void setResskillset(String resskillset) {
		this.resskillset = resskillset;
	}
	public String getResexperience() {
		return resexperience;
	}
	public void setResexperience(String resexperience) {
		this.resexperience = resexperience;
	}
	
	
}	
