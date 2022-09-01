package kr.mr.model;

public class CategoryDTO {
	private int cat_num;
	private String cat_code;
	private String cat_name;
	
	// 기본생성자
	public CategoryDTO() {}

	// 전체생성자
	public CategoryDTO(int cat_num, String cat_code, String cat_name) {
		super();
		this.cat_num = cat_num;
		this.cat_code = cat_code;
		this.cat_name = cat_name;
	}

	// 게터세터
	public int getCat_num() {
		return cat_num;
	}



	public void setCat_num(int cat_num) {
		this.cat_num = cat_num;
	}



	public String getCat_code() {
		return cat_code;
	}



	public void setCat_code(String cat_code) {
		this.cat_code = cat_code;
	}



	public String getCat_name() {
		return cat_name;
	}



	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}


	// 디버깅용
	@Override
	public String toString() {
		return "CategoryDTO [cat_num=" + cat_num + ", cat_code=" + cat_code + ", cat_name=" + cat_name + "]";
	}
	
	
	
	
	
}