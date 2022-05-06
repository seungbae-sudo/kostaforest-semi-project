package kostaforest.semiproject.model;

public class CommentVO {
	private int commentNO;
	private String commentContent;
	private String timePosted;
	private MemberVO mvo;
	private CommunityPostVO cmuvo;
	public CommentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CommentVO(int commentNO, String commentContent, String timePosted, MemberVO mvo, CommunityPostVO cmuvo) {
		super();
		this.commentNO = commentNO;
		this.commentContent = commentContent;
		this.timePosted = timePosted;
		this.mvo = mvo;
		this.cmuvo = cmuvo;
	}
	public int getcommentNO() {
		return commentNO;
	}
	public void setcommentNO(int commentNO) {
		this.commentNO = commentNO;
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
	public CommunityPostVO getCmuvo() {
		return cmuvo;
	}
	public void setCmuvo(CommunityPostVO cmuvo) {
		this.cmuvo = cmuvo;
	}
	@Override
	public String toString() {
		return "CommentVO [commentNO=" + commentNO + ", commentContent=" + commentContent + ", timePosted="
				+ timePosted + ", mvo=" + mvo + ", cmuvo=" + cmuvo + "]";
	}

	
}
