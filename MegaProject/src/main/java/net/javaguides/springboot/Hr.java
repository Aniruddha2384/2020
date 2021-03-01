package net.javaguides.springboot;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Hr {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String hrname;
	private String hrpassword;
	private String hremail;
	private String hrmobile;
	private String hrcity;
	
	

	public Hr() {
		super();
		
	}
	public Hr(String hrname, String hrpassword, String hremail, String hrmobile, String hrcity) {
		super();
		this.hrname = hrname;
		this.hrpassword = hrpassword;
		this.hremail = hremail;
		this.hrmobile = hrmobile;
		this.hrcity = hrcity;
	}
	public int getid() {
		return id;
	}
	public void setid(int id) {
		this.id = id;
	}
	public String getHrname() {
		return hrname;
	}
	public void setHrname(String hrname) {
		this.hrname = hrname;
	}
	public String getHrpassword() {
		return hrpassword;
	}
	public void setHrpassword(String hrpassword) {
		this.hrpassword = hrpassword;
	}
	public String getHremail() {
		return hremail;
	}
	public void setHremail(String hremail) {
		this.hremail = hremail;
	}
	public String getHrmobile() {
		return hrmobile;
	}
	public void setHrmobile(String hrmobile) {
		this.hrmobile = hrmobile;
	}
	public String getHrcity() {
		return hrcity;
	}
	public void setHrcity(String hrcity) {
		this.hrcity = hrcity;
	}
	

}