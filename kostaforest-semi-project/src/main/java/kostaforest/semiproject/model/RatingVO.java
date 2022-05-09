package kostaforest.semiproject.model;

public class RatingVO {
	private int reNo;
	private String comName;
	private float rating;
	private MemberVO mvo;
	private ReviewPostVO rvo;
	public RatingVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RatingVO(int reNo, String comName, float rating, MemberVO mvo, ReviewPostVO rvo) {
		super();
		this.reNo = reNo;
		this.comName = comName;
		this.rating = rating;
		this.mvo = mvo;
		this.rvo = rvo;
	}
	public int getReNo() {
		return reNo;
	}
	public void setReNo(int reNo) {
		this.reNo = reNo;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	public MemberVO getMvo() {
		return mvo;
	}
	public void setMvo(MemberVO mvo) {
		this.mvo = mvo;
	}
	public ReviewPostVO getRvo() {
		return rvo;
	}
	public void setRvo(ReviewPostVO rvo) {
		this.rvo = rvo;
	}
	@Override
	public String toString() {
		return "RatingVO [reNo=" + reNo + ", comName=" + comName + ", rating=" + rating + ", mvo=" + mvo + ", rvo="
				+ rvo + "]";
	}
	
}
