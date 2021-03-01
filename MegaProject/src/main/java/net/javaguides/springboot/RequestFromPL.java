package net.javaguides.springboot;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RequestFromPL {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int reqid;
	private String technology;
	private String exp;
	private String sdate;
	private String edate;
	public RequestFromPL() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RequestFromPL(String technology, String exp, String sdate, String edate) {
		super();
		this.technology = technology;
		this.exp = exp;
		this.sdate = sdate;
		this.edate = edate;
	}
	public int getReqid() {
		return reqid;
	}
	public void setReqid(int reqid) {
		this.reqid = reqid;
	}
	public String getTechnology() {
		return technology;
	}
	public void setTechnology(String technology) {
		this.technology = technology;
	}
	public String getExp() {
		return exp;
	}
	public void setExp(String exp) {
		this.exp = exp;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}

}
