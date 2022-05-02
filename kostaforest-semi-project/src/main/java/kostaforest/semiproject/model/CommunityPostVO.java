package kostaforest.semiproject.model;

public class CommunityPostVO {
	private int boardNo;
	private String title;
	private String content;
	private String timePosted;
	private int likeNo;
	private int hits;
	private MemberVO mvo;
	private CategoryVO cvo;

	public CommunityPostVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CommunityPostVO(int boardNo, String title, String content, String timePosted, int likeNo, int hits,
			MemberVO mvo, CategoryVO cvo) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.content = content;
		this.timePosted = timePosted;
		this.likeNo = likeNo;
		this.hits = hits;
		this.mvo = mvo;
		this.cvo = cvo;
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

	public CategoryVO getCvo() {
		return cvo;
	}

	public void setCvo(CategoryVO cvo) {
		this.cvo = cvo;
	}

	@Override
	public String toString() {
		return "CommunityPostVO [boardNo=" + boardNo + ", title=" + title + ", content=" + content + ", timePosted="
				+ timePosted + ", likeNo=" + likeNo + ", hits=" + hits + ", mvo=" + mvo + ", cvo=" + cvo + "]";
	}

}
