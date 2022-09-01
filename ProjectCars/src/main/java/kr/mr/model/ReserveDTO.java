package kr.mr.model;

import java.sql.Date;
import java.text.DecimalFormat;

public class ReserveDTO {

	private int revNum;
	private String revName;
	private String revJumin1;
	private String revJumin2;
	private String revTel;
	private String revAddr;
	private int count;
	private Date revDate1;
	private Date revDate2;
	
	private int cNum;
	
	private int dateCnt;
	private int totalPrice;
	
	 private String wtotalPrice; 
	 private String account; 
	 
	 private String id;

	   public String getWtotalPrice() {
	      DecimalFormat formatter = new DecimalFormat("###,###,###,###,###,###");
	      int totalPrice = getTotalPrice();
	      String wtotalPrice = formatter.format(totalPrice);
	      
	      return wtotalPrice;
	   }	
	
	   
	   

	
	public String getAccount() {
		return account;
	}





	public void setAccount(String account) {
		this.account = account;
	}





	public int getcNum() {
		return cNum;
	}


	public void setcNum(int cNum) {
		this.cNum = cNum;
	}
	
	
	
	
	public String getId() {
		return id;
	}
	
	
	public void setId(String id) {
		this.id = id;
	}




	public ReserveDTO() {}



	public ReserveDTO(int revNum, String revName, String revJumin1, String revJumin2, String revTel, String revAddr,
			int count, Date revDate1, Date revDate2, int dateCnt, int totalPrice, int cNum, String id) {
		super();
		this.revNum = revNum;
		this.revName = revName;
		this.revJumin1 = revJumin1;
		this.revJumin2 = revJumin2;
		this.revTel = revTel;
		this.revAddr = revAddr;
		this.count = count;
		this.revDate1 = revDate1;
		this.revDate2 = revDate2;
		this.dateCnt = dateCnt;
		this.totalPrice = totalPrice;
		this.cNum = cNum;
		this.id = id;
	}



	public int getRevNum() {
		return revNum;
	}



	public void setRevNum(int revNum) {
		this.revNum = revNum;
	}



	public String getRevName() {
		return revName;
	}



	public void setRevName(String revName) {
		this.revName = revName;
	}



	public String getRevJumin1() {
		return revJumin1;
	}



	public void setRevJumin1(String revJumin1) {
		this.revJumin1 = revJumin1;
	}



	public String getRevJumin2() {
		return revJumin2;
	}



	public void setRevJumin2(String revJumin2) {
		this.revJumin2 = revJumin2;
	}



	public String getRevTel() {
		return revTel;
	}



	public void setRevTel(String revTel) {
		this.revTel = revTel;
	}



	public String getRevAddr() {
		return revAddr;
	}



	public void setRevAddr(String revAddr) {
		this.revAddr = revAddr;
	}



	public int getCount() {
		return count;
	}



	public void setCount(int count) {
		this.count = count;
	}



	public Date getRevDate1() {
		return revDate1;
	}



	public void setRevDate1(Date revDate1) {
		this.revDate1 = revDate1;
	}



	public Date getRevDate2() {
		return revDate2;
	}



	public void setRevDate2(Date revDate2) {
		this.revDate2 = revDate2;
	}



	public int getDateCnt() {
		return dateCnt;
	}



	public void setDateCnt(int dateCnt) {
		this.dateCnt = dateCnt;
	}



	public int getTotalPrice() {
		return totalPrice;
	}



	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}





	/*
	 * @Override public String toString() { return "ReserveDTO [revNum=" + revNum +
	 * ", revName=" + revName + ", revJumin1=" + revJumin1 + ", revJumin2=" +
	 * revJumin2 + ", revTel=" + revTel + ", revAddr=" + revAddr + ", count=" +
	 * count + ", revDate1=" + revDate1 + ", revDate2=" + revDate2 + ", cNum=" +
	 * cNum + ", dateCnt=" + dateCnt + ", totalPrice=" + totalPrice +
	 * ", wtotalPrice=" + wtotalPrice + ", account=" + account + ", id=" + id + "]";
	 * }
	 */



	@Override
	public String toString() {
		return "ReserveDTO [revNum=" + revNum + ", revName=" + revName + ", revJumin1=" + revJumin1 + ", revJumin2="
				+ revJumin2 + ", revTel=" + revTel + ", revAddr=" + revAddr + ", count=" + count + ", revDate1="
				+ revDate1 + ", revDate2=" + revDate2 + ", dateCnt=" + dateCnt + ", totalPrice=" + totalPrice + ", account=" + account + "]";
	}


	
	
	
	
	
}
