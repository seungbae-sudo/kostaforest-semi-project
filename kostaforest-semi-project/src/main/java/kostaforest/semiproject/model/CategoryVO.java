package kostaforest.semiproject.model;

public class CategoryVO {
	private int carNo;
	private String carName;

	public CategoryVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CategoryVO(int carNo, String carName) {
		super();
		this.carNo = carNo;
		this.carName = carName;
	}

	public int getCarNo() {
		return carNo;
	}

	public void setCarNo(int carNo) {
		this.carNo = carNo;
	}

	public String getCarName() {
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}

	@Override
	public String toString() {
		return "CategoryVO [carNo=" + carNo + ", carName=" + carName + "]";
	}

}
