package kr.mr.model;

public class MemberDTO {
	private int no;
	private String id;
	private String pw;
	private String name;
	private int age;
	private String email;
	private String tel;
	
	private String zipcode;
	private String roadAddr;
	private String jibunAddr;
	private String detailAddr;
	
	private int cNum;
	private String isRented;

	
	
	
	
	// 기본생성자
	public MemberDTO() {}




	// 전체 생성자
	public MemberDTO(int no, String id, String pw, String name, int age, String email, String tel, String zipcode,
			String roadAddr, String jibunAddr, String detailAddr, int cNum, String isRented) {
		super();
		this.no = no;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.email = email;
		this.tel = tel;
		this.zipcode = zipcode;
		this.roadAddr = roadAddr;
		this.jibunAddr = jibunAddr;
		this.detailAddr = detailAddr;
		this.cNum = cNum;
		this.isRented = isRented;
	}




	public int getNo() {
		return no;
	}




	public void setNo(int no) {
		this.no = no;
	}




	public String getId() {
		return id;
	}




	public void setId(String id) {
		this.id = id;
	}




	public String getPw() {
		return pw;
	}




	public void setPw(String pw) {
		this.pw = pw;
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public int getAge() {
		return age;
	}




	public void setAge(int age) {
		this.age = age;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getTel() {
		return tel;
	}




	public void setTel(String tel) {
		this.tel = tel;
	}




	public String getZipcode() {
		return zipcode;
	}




	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}




	public String getRoadAddr() {
		return roadAddr;
	}




	public void setRoadAddr(String roadAddr) {
		this.roadAddr = roadAddr;
	}




	public String getJibunAddr() {
		return jibunAddr;
	}




	public void setJibunAddr(String jibunAddr) {
		this.jibunAddr = jibunAddr;
	}




	public String getDetailAddr() {
		return detailAddr;
	}




	public void setDetailAddr(String detailAddr) {
		this.detailAddr = detailAddr;
	}




	public int getcNum() {
		return cNum;
	}




	public void setcNum(int cNum) {
		this.cNum = cNum;
	}




	public String getIsRented() {
		return isRented;
	}




	public void setIsRented(String isRented) {
		this.isRented = isRented;
	}




	@Override
	public String toString() {
		return "MemberDTO [no=" + no + ", id=" + id + ", pw=" + pw + ", name=" + name + ", age=" + age + ", email="
				+ email + ", tel=" + tel + ", zipcode=" + zipcode + ", roadAddr=" + roadAddr + ", jibunAddr="
				+ jibunAddr + ", detailAddr=" + detailAddr + ", cNum=" + cNum + ", isRented=" + isRented + "]";
	}
	
	
	
	

	


	
}
