package kostaforest.semiproject.model;

public class EmploymentPostVO {

	private int boardNo;
	private String title;
	private String empGroup;
	private String empMail;
	private String content;
	private String timePosted;
	private int likeNo;
	private int hits;
	private MemberVO mvo;


	public EmploymentPostVO() {
		super();
		// TODO Auto-generated constructor stub
	}
 
	public EmploymentPostVO(String title, String empGroup, String content,String empMail, MemberVO mvo) {
		super();
		this.title = title;
		this.empGroup = empGroup;
		this.content = content;
		this.empMail = empMail;
		this.mvo = mvo;
	}

	public EmploymentPostVO(int boardNo, String title, String empGroup, String content, String timePosted, int likeNo,
			int hits, MemberVO mvo, String empMail) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.empGroup = empGroup;
		this.content = content;
		this.empMail = empMail;
		this.timePosted = timePosted;
		this.likeNo = likeNo;
		this.hits = hits;
		this.mvo = mvo;

	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getEmpMail() {
		return empMail;
	}

	public void setEmpMail(String empEmail) {
		this.empMail = empEmail;
	}

	public String getEmpGroup() {
		return empGroup;
	}

	public void setEmpGroup(String empGroup) {
		this.empGroup = empGroup;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTimePosted() {
		return timePosted;
	}

	public void setTimePosted(String timePosted) {
		this.timePosted = timePosted;
	}

	public int getLikeNo() {
		return likeNo;
	}

	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public MemberVO getMvo() {
		return mvo;
	}

	public void setMvo(MemberVO mvo) {
		this.mvo = mvo;
	}

	@Override
	public String toString() {
		return "EmploymentPostVO [boardNo=" + boardNo + ", title=" + title + ", empGroup=" + empGroup + ", empMail="
				+ empMail + ", content=" + content + ", timePosted=" + timePosted + ", likeNo=" + likeNo + ", hits="
				+ hits + ", mvo=" + mvo + "]";
	}



	

}
