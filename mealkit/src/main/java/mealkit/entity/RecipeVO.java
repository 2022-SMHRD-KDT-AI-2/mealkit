package mealkit.entity;

public class RecipeVO {
	private int r_seq;
	private String r_name;
	private String r_content;
	private String m_id;
	private String r_date;
	private String r_img1;
	private String r_img2;
	
	public RecipeVO() {}

	public RecipeVO(int r_seq, String r_name, String r_content, String m_id, String r_date, String r_img1,
			String r_img2) {
		super();
		this.r_seq = r_seq;
		this.r_name = r_name;
		this.r_content = r_content;
		this.m_id = m_id;
		this.r_date = r_date;
		this.r_img1 = r_img1;
		this.r_img2 = r_img2;
	}

	public int getR_seq() {
		return r_seq;
	}

	public void setR_seq(int r_seq) {
		this.r_seq = r_seq;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getR_date() {
		return r_date;
	}

	public void setR_date(String r_date) {
		this.r_date = r_date;
	}

	public String getR_img1() {
		return r_img1;
	}

	public void setR_img1(String r_img1) {
		this.r_img1 = r_img1;
	}

	public String getR_img2() {
		return r_img2;
	}

	public void setR_img2(String r_img2) {
		this.r_img2 = r_img2;
	};
	
	
}
