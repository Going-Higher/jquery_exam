package kr.kopo.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ProfessorVO {
	private long pid;
	private String pname;
	private String dept;
	private String post;
	private long pay;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date hire;
	private String major;
	private String campus;
	
	public long getPid() {
		return pid;
	}
	public void setPid(long pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public long getPay() {
		return pay;
	}
	public void setPay(long pay) {
		this.pay = pay;
	}
	public Date getHire() {
		return hire;
	}
	public void setHire(Date hire) {
		this.hire = hire;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getCampus() {
		return campus;
	}
	public void setCampus(String campus) {
		this.campus = campus;
	}
}
