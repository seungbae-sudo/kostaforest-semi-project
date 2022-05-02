package kostaforest.semiproject.model;

public class CommentVO {
	private int conmmentNO;
	private String commentContent;
	private String imePosted;
	private MemberVO mvo;
	private CommunityBoardDAO cmuvo;

	public CommentVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CommentVO(int conmmentNO, String commentContent, String imePosted, MemberVO mvo, CommunityBoardDAO cmuvo) {
		super();
		this.conmmentNO = conmmentNO;
		this.commentContent = commentContent;
		this.imePosted = imePosted;
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

	public String getImePosted() {
		return imePosted;
	}

	public void setImePosted(String imePosted) {
		this.imePosted = imePosted;
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
		return "CommentVO [conmmentNO=" + conmmentNO + ", commentContent=" + commentContent + ", imePosted=" + imePosted
				+ ", mvo=" + mvo + ", cmuvo=" + cmuvo + "]";
	}

}
