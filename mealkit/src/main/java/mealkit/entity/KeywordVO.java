package mealkit.entity;

public class KeywordVO {
	private int k_seq;
	private String k_name;
	private int k_super_seq;
	
	public KeywordVO() {}

	public KeywordVO(int k_seq, String k_name, int k_super_seq) {
		super();
		this.k_seq = k_seq;
		this.k_name = k_name;
		this.k_super_seq = k_super_seq;
	}

	public int getK_seq() {
		return k_seq;
	}

	public void setK_seq(int k_seq) {
		this.k_seq = k_seq;
	}

	public String getK_name() {
		return k_name;
	}

	public void setK_name(String k_name) {
		this.k_name = k_name;
	}

	public int getK_super_seq() {
		return k_super_seq;
	}

	public void setK_super_seq(int k_super_seq) {
		this.k_super_seq = k_super_seq;
	}

	
	
	
}
