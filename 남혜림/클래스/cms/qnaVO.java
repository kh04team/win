package cms;

import java.util.Date;

public class qnaVO {

	private int no;
	private String id;
	private String subject;
	private String content;
	private Date reg_date;
	private String com;
	private String id_admin;
	private Date com_reg_date;
	private String status;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getCom() {
		return com;
	}
	public void setCom(String com) {
		this.com = com;
	}
	public String getId_admin() {
		return id_admin;
	}
	public void setId_admin(String id_admin) {
		this.id_admin = id_admin;
	}
	public Date getCom_reg_date() {
		return com_reg_date;
	}
	public void setCom_reg_date(Date com_reg_date) {
		this.com_reg_date = com_reg_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
}
