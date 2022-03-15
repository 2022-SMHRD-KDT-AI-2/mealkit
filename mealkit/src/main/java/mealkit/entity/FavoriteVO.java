package mealkit.entity;

public class FavoriteVO {
	private int f_seq;
	private String m_id;
	private int r_seq;
	private String reg_data;
	
	public FavoriteVO() {}

	public FavoriteVO(int f_seq, String m_id, int r_seq, String reg_data) {
		super();
		this.f_seq = f_seq;
		this.m_id = m_id;
		this.r_seq = r_seq;
		this.reg_data = reg_data;
	}

	public int getF_seq() {
		return f_seq;
	}

	public void setF_seq(int f_seq) {
		this.f_seq = f_seq;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getR_seq() {
		return r_seq;
	}

	public void setR_seq(int r_seq) {
		this.r_seq = r_seq;
	}

	public String getReg_data() {
		return reg_data;
	}

	public void setReg_data(String reg_data) {
		this.reg_data = reg_data;
	};
	
	
}
