package kostaforest.semiproject.model;

import java.io.Serializable;

public class MemberVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3535653589907901732L;
	private String id;
	private String password;
	private String comName;
	private String memberGroup;
	private String resDate;
	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public MemberVO(String id, String password, String comName, String memberGroup) {
		super();
		this.id = id;
		this.password = password;
		this.comName = comName;
		this.memberGroup = memberGroup;
	}

	public MemberVO(String id, String password, String comName, String memberGroup, String resDate) {
		super();
		this.id = id;
		this.password = password;
		this.comName = comName;
		this.memberGroup = memberGroup;
		this.resDate = resDate;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public String getMemberGroup() {
		return memberGroup;
	}
	public void setMemberGroup(String memberGroup) {
		this.memberGroup = memberGroup;
	}
	public String getResDate() {
		return resDate;
	}
	public void setResDate(String resDate) {
		this.resDate = resDate;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", comName=" + comName + ", memberGroup=" + memberGroup
				+ ", resDate=" + resDate + "]";
	}
	
	
}
