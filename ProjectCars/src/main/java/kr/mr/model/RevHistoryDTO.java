package kr.mr.model;

import java.sql.Date;
import java.text.DecimalFormat;

public class RevHistoryDTO {
   private int cNum;
   private String cName;
   private String fileName;
   
   private String id;
   private String isRented;
   
   private String revAddr;
   private int totalPrice;

   public String getCompany() {
      return company;
   }


   public void setCompany(String company) {
      this.company = company;
   }


   private Date revDate1;
   private Date revDate2;

   private String revName; 
   private String revTel;    
   
   
   private int dateCnt;
   
   private String wtotalPrice; 
   
   private String color;
   private String company;
   
   
   // 은행계좌용SQl에는 없음
      private String account;

       public String getAccount() {
         return account;
      }


      public void setAccount(String account) {
         this.account = account;
      }
   

   public String getColor() {
      return color;
   }


   public void setColor(String color) {
      this.color = color;
   }


   public int getDateCnt() {
      return dateCnt;
   }


   public void setDateCnt(int dateCnt) {
      this.dateCnt = dateCnt;
   }
   

   


    public String getWtotalPrice() {
       DecimalFormat formatter = new DecimalFormat("###,###,###,###,###,###");
       int totalPrice = getTotalPrice();
       String wtotalPrice = formatter.format(totalPrice);
       
       return wtotalPrice;
    }   
   
   

   
   public RevHistoryDTO() {}



   public RevHistoryDTO(int cNum, String cName, String fileName, String id, String isRented, String revAddr,
         int totalPrice, Date revDate1, Date revDate2,int dateCnt) {
      super();
      this.cNum = cNum;
      this.cName = cName;
      this.fileName = fileName;
      this.id = id;
      this.isRented = isRented;
      this.revAddr = revAddr;
      this.totalPrice = totalPrice;
      this.revDate1 = revDate1;
      this.revDate2 = revDate2;
      this.dateCnt = dateCnt;
   }



   public int getcNum() {
      return cNum;
   }



   public void setcNum(int cNum) {
      this.cNum = cNum;
   }



   public String getcName() {
      return cName;
   }



   public void setcName(String cName) {
      this.cName = cName;
   }



   public String getFileName() {
      return fileName;
   }



   public void setFileName(String fileName) {
      this.fileName = fileName;
   }



   public String getId() {
      return id;
   }



   public void setId(String id) {
      this.id = id;
   }



   public String getIsRented() {
      return isRented;
   }



   public void setIsRented(String isRented) {
      this.isRented = isRented;
   }



   public String getRevAddr() {
      return revAddr;
   }



   public void setRevAddr(String revAddr) {
      this.revAddr = revAddr;
   }



   public int getTotalPrice() {
      return totalPrice;
   }



   public void setTotalPrice(int totalPrice) {
      this.totalPrice = totalPrice;
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


   public String getRevName() {
      return revName;
   }


   public void setRevName(String revName) {
      this.revName = revName;
   }


   public String getRevTel() {
      return revTel;
   }


   public void setRevTel(String revTel) {
      this.revTel = revTel;
   };
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
}