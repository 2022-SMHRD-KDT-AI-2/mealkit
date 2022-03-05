package mealkit.entity;

public class KeywordVO {
	private int K_seq;
	private String K_name;
	private int K_super_k_seq;
	
	public KeywordVO() {}

	public KeywordVO(int k_seq, String k_name, int k_super_k_seq) {
		super();
		K_seq = k_seq;
		K_name = k_name;
		K_super_k_seq = k_super_k_seq;
	}

	public int getK_seq() {
		return K_seq;
	}

	public void setK_seq(int k_seq) {
		K_seq = k_seq;
	}

	public String getK_name() {
		return K_name;
	}

	public void setK_name(String k_name) {
		K_name = k_name;
	}

	public int getK_super_k_seq() {
		return K_super_k_seq;
	}

	public void setK_super_k_seq(int k_super_k_seq) {
		K_super_k_seq = k_super_k_seq;
	};
	
	
}
