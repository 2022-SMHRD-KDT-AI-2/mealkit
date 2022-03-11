package mealkit.entity;

public class KeywordSuperVO {
	private int k_super_seq;
	private String k_super_name;
	
	public KeywordSuperVO() {};
	
	public KeywordSuperVO(int k_super_seq, String k_super_name) {
		super();
		this.k_super_seq = k_super_seq;
		this.k_super_name = k_super_name;
	}

	public int getK_super_seq() {
		return k_super_seq;
	}

	public void setK_super_seq(int k_super_seq) {
		this.k_super_seq = k_super_seq;
	}

	public String getK_super_name() {
		return k_super_name;
	}

	public void setK_super_name(String k_super_name) {
		this.k_super_name = k_super_name;
	}
	
	
}
