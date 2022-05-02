package kostaforest.semiproject.model;

public class FAQPostVO {
	private int faqNo;
	private String answer;
	public FAQPostVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public FAQPostVO(int faqNo, String answer) {
		super();
		this.faqNo = faqNo;
		this.answer = answer;
	}

	public int getFaqNo() {
		return faqNo;
	}
	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	@Override
	public String toString() {
		return "FAQPostVO [faqNo=" + faqNo + ", answer=" + answer + "]";
	}

	
}
