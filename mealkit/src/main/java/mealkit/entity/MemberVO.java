package mealkit.entity;

public class MemberVO {
	private String m_id;
	private String m_pw;
	private String m_phone;
	private String m_birthdate;
	private String m_addr;
	private String m_emai;
	private String m_joindate;
	private String admin_yn;
	
	public MemberVO() {};
	
	public MemberVO(String m_id, String m_pw, String m_phone, String m_birthdate, String m_addr, String m_emai,
			String m_joindate, String admin_yn) {
		super();
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_phone = m_phone;
		this.m_birthdate = m_birthdate;
		this.m_addr = m_addr;
		this.m_emai = m_emai;
		this.m_joindate = m_joindate;
		this.admin_yn = admin_yn;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getM_birthdate() {
		return m_birthdate;
	}
	public void setM_birthdate(String m_birthdate) {
		this.m_birthdate = m_birthdate;
	}
	public String getM_addr() {
		return m_addr;
	}
	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}
	public String getM_emai() {
		return m_emai;
	}
	public void setM_emai(String m_emai) {
		this.m_emai = m_emai;
	}
	public String getM_joindate() {
		return m_joindate;
	}
	public void setM_joindate(String m_joindate) {
		this.m_joindate = m_joindate;
	}
	public String getAdmin_yn() {
		return admin_yn;
	}
	public void setAdmin_yn(String admin_yn) {
		this.admin_yn = admin_yn;
	}
	
	
	
}
