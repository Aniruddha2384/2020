package net.javaguides.springboot;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity

public class ProjectManagerLogin
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int mid;
	private String mname ;
	private String mpassword;
	private String memail;
	private String mmobile;
	
	public ProjectManagerLogin( String mname, String mpassword, String memail, String mmobile) {
		super();
		
		this.mname = mname;
		this.mpassword = mpassword;
		this.memail = memail;
		this.mmobile = mmobile;
	}
	public ProjectManagerLogin() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMpassword() {
		return mpassword;
	}
	public void setMpassword(String mpassword) {
		this.mpassword = mpassword;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMmobile() {
		return mmobile;
	}
	public void setMmobile(String mmobile) {
		this.mmobile = mmobile;
	}
	
	
}
	