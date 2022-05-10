package kostaforest.semiproject.model;

public class FAQPostVO {
	private int faqNo;
	private String ask;
	private String answer;

	public FAQPostVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FAQPostVO(int faqNo, String ask, String answer) {
		super();
		this.faqNo = faqNo;
		this.ask = ask;
		this.answer = answer;
	}

	public int getFaqNo() {
		return faqNo;
	}

	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}

	public String getAsk() {
		return ask;
	}

	public void setAsk(String ask) {
		this.ask = ask;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	@Override
	public String toString() {
		return "FAQPostVO [faqNo=" + faqNo + ", ask=" + ask + ", answer=" + answer + "]";
	}

}
