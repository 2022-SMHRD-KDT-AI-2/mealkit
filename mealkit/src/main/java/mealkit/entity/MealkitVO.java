package mealkit.entity;

public class MealkitVO {
	private int ml_seq;
	private String ml_name;
	private String ml_addr_img;
	public MealkitVO() {};
	
	public MealkitVO(int ml_seq, String ml_name, String ml_addr_img) {
		super();
		this.ml_seq = ml_seq;
		this.ml_name = ml_name;
		this.ml_addr_img = ml_addr_img;
	}

	public int getMl_seq() {
		return ml_seq;
	}

	public void setMl_seq(int ml_seq) {
		this.ml_seq = ml_seq;
	}

	public String getMl_name() {
		return ml_name;
	}

	public void setMl_name(String ml_name) {
		this.ml_name = ml_name;
	}

	public String getMl_addr_img() {
		return ml_addr_img;
	}

	public void setMl_addr_img(String ml_addr_img) {
		this.ml_addr_img = ml_addr_img;
	}
	
	
}
