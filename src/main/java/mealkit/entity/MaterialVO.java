package mealkit.entity;

public class MaterialVO {
	private int mat_seq;
	private int r_seq;
	private String mat_name;
	private String mat_info;
	private int mat_weight;
	private String mat_img;
	
	public MaterialVO() {}

	public MaterialVO(int mat_seq, int r_seq, String mat_name, String mat_info, int mat_weight, String mat_img) {
		super();
		this.mat_seq = mat_seq;
		this.r_seq = r_seq;
		this.mat_name = mat_name;
		this.mat_info = mat_info;
		this.mat_weight = mat_weight;
		this.mat_img = mat_img;
	}

	public int getMat_seq() {
		return mat_seq;
	}

	public void setMat_seq(int mat_seq) {
		this.mat_seq = mat_seq;
	}

	public int getR_seq() {
		return r_seq;
	}

	public void setR_seq(int r_seq) {
		this.r_seq = r_seq;
	}

	public String getMat_name() {
		return mat_name;
	}

	public void setMat_name(String mat_name) {
		this.mat_name = mat_name;
	}

	public String getMat_info() {
		return mat_info;
	}

	public void setMat_info(String mat_info) {
		this.mat_info = mat_info;
	}

	public int getMat_weight() {
		return mat_weight;
	}

	public void setMat_weight(int mat_weight) {
		this.mat_weight = mat_weight;
	}

	public String getMat_img() {
		return mat_img;
	}

	public void setMat_img(String mat_img) {
		this.mat_img = mat_img;
	};
	
	
}
