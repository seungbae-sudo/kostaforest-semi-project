package kostaforest.semiproject.model;

public class ReviewPostVO {
	private int reNo;
	private String title;
	private String content;
	private String timePosted;
	private float rating;
	private int hits;
	private MemberVO mvo;

	public ReviewPostVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReviewPostVO(int reNo, String title, String content, String timePosted, float rating, int hits,
			MemberVO mvo) {
		super();
		this.reNo = reNo;
		this.title = title;
		this.content = content;
		this.timePosted = timePosted;
		this.rating = rating;
		this.hits = hits;
		this.mvo = mvo;
	}

	public int getReNo() {
		return reNo;
	}

	public void setReNo(int reNo) {
		this.reNo = reNo;
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

	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
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
		return "ReviewPostVO [reNo=" + reNo + ", title=" + title + ", content=" + content + ", timePosted=" + timePosted
				+ ", rating=" + rating + ", hits=" + hits + ", mvo=" + mvo + "]";
	}

	

}
