package kostaforest.semiproject.model;

public class CommentVO {
	private int conmmentNO;
	private String commentContent;
	private String timePosted;
	private MemberVO mvo;
	private CommunityBoardDAO cmuvo;

	public CommentVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CommentVO(int conmmentNO, String commentContent, String timePosted, MemberVO mvo, CommunityBoardDAO cmuvo) {
		super();
		this.conmmentNO = conmmentNO;
		this.commentContent = commentContent;
		this.timePosted = timePosted;
		this.mvo = mvo;
		this.cmuvo = cmuvo;
	}

	public int getConmmentNO() {
		return conmmentNO;
	}

	public void setConmmentNO(int conmmentNO) {
		this.conmmentNO = conmmentNO;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getTimePosted() {
		return timePosted;
	}

	public void setTimePosted(String timePosted) {
		this.timePosted = timePosted;
	}

	public MemberVO getMvo() {
		return mvo;
	}

	public void setMvo(MemberVO mvo) {
		this.mvo = mvo;
	}

	public CommunityBoardDAO getCmuvo() {
		return cmuvo;
	}

	public void setCmuvo(CommunityBoardDAO cmuvo) {
		this.cmuvo = cmuvo;
	}

	@Override
	public String toString() {
		return "CommentVO [conmmentNO=" + conmmentNO + ", commentContent=" + commentContent + ", timePosted="
				+ timePosted + ", mvo=" + mvo + ", cmuvo=" + cmuvo + "]";
	}

}
