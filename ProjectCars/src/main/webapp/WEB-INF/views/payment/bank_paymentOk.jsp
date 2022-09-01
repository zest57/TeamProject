<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../inc/header.jsp" %>

<link rel="stylesheet" href="${ctx}/resources/css/bankPaymentOk.css">

<link rel="stylesheet" href="${ctx}/resources/css/hover/button.css">
<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/foundation/6.3.1/js/foundation.js'></script>

<!-- partial:index.partial.html -->
<!-- <header class="top-bar align-center">
  <div class="top-bar-title">
    <h3>예약 완료 
      small>with Foundation Flex-Grid Layout</small>
    </h3>
  </div>
</header> -->
<div id="myBankPayment">
<div class="row expanded">
  <main class="columns">
    <div class="inner-container">
      <section class="row">
        <div class="callout large invoice-container">
        	<table class="invoice" style="background-color:#212529;">
            <tr class="header">
              <!-- <td class="">
                <img src="http://www.travelerie.com/wp-content/uploads/2014/04/PlaceholderLogoBlue.jpg" alt="Company Name" />
              </td> -->
				<!-- Row start -->
				<div class="row gutters">
				    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
				        <div class="custom-actions-btns mb-5">
				           <input type="button" value="print" id="print" onclick="window.print()"/>
				        </div>
				    </div>
				</div>
				<!-- Row end --> 
              <td class="align-right" style="background-color:#212529;">
                <h2 style="color:#c36f51; padding-left:320px;">예약 완료</h2>
              </td>
            </tr>
            <tr class="intro"> 
              <!-- <td class="">
                Hello, Philip Brooks.<br>
                Thank you for your order.
              </td>  -->
               <td class="text-right" style="padding-left:280px; width:2000px;">
                <!-- <span class="num">Order #00302</span><br> -->
                아래 계좌정보로 입금해 주시면<br>　　결제 완료처리가 됩니다
              </td> 
            </tr>
            <tr class="details">
            <td colspan="2">
              <table>
                <thead>
                  <tr>
                    <th class="desc">입금계좌</th>
                    <th class="id">예금주</th>
                    <!-- <th class="qty">Quantity</th> -->
                    <th class="amt">입금금액</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="item">
                    <td class="desc">${rDto.account}</td>
                    <td class="id num">렌트카대표님</td>
                    <td class="id num">${sessionScope.userName}</td>
                    <td class="amt">￦ ${rDto.wtotalPrice}원</td>
                  </tr>
                </tbody>
              </table>
            </td> 
          </tr>
          <tr class="totals">
            <td></td>
            <td>
              <table>
                <!-- <tr class="subtotal">
                  <td class="num">Subtotal</td>
                  <td class="num">$100.00</td>
                </tr>
                <tr class="fees">
                  <td class="num">Shipping & Handling</td>
                  <td class="num">$0.00</td>
                </tr>
                <tr class="tax">
                  <td class="num">Tax (7%)</td>
                  <td class="num">$7.00</td>
                </tr> -->
                <tr class="total">
                  <td>Total</td>
                  <td>￦ ${rDto.wtotalPrice}원</td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        
        <section class="additional-info">
          <div class="row">
          <!-- <div class="columns">
            <h5>Billing Information</h5>
            <p>Philip Brooks<br>
              134 Madison Ave.<br>
              New York NY 00102<br>
              United States</p>
            </div> -->
            <!-- <div class="columns">
              <h5>Payment Information</h5>
              <p>Credit Card<br>
              Card Type: Visa<br>
              &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; 1234
            </p>
          </div> -->
        </div>
        <header class="additional-info">
            <!-- <a class="button hollow secondary"><i class="ion ion-chevron-left"></i> Go Back to Purchases</a> -->
            &nbsp;&nbsp;
            
            <div class="revOk" style="padding-left:220px;">
	            <button class='pulse m-3 p-3 justify-content-center' style="width: 100px; height: 50px; color:#c36f51;" onclick="location.href='home.do'">
	            	홈으로
	            </button>
	            
	            <button class='pulse m-3 p-3 justify-content-center' style="width: 150px; height: 50px; color:#c36f51; margin:auto;"  onclick="location.href='myPageList.do?mId=${sessionScope.userId}'">
	            	마이페이지
	            </button>
          </header>
      </section>
      </div>
    </section>
  </div>
</main>
</div>
</div>


<%@ include file="../inc/footer.jsp" %>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../inc/header.jsp" %>

<link rel="stylesheet" href="${ctx}/resources/css/bankPaymentOk.css">

<link rel="stylesheet" href="${ctx}/resources/css/hover/button.css">
<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/foundation/6.3.1/js/foundation.js'></script>

<!-- partial:index.partial.html -->
<!-- <header class="top-bar align-center">
  <div class="top-bar-title">
    <h3>예약 완료 
      small>with Foundation Flex-Grid Layout</small>
    </h3>
  </div>
</header> -->
<div id="myBankPayment">
<div class="row expanded">
  <main class="columns">
    <div class="inner-container">
      <section class="row">
        <div class="callout large invoice-container">
          <table class="invoice" style="background-color:#212529;">
            <tr class="header">
              <!-- <td class="">
                <img src="http://www.travelerie.com/wp-content/uploads/2014/04/PlaceholderLogoBlue.jpg" alt="Company Name" />
              </td> -->
                  <!-- Row start -->
                    <div class="row gutters" style="padding-left:742px;">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                            <div class="custom-actions-btns mb-5">
                               <input type="button" value="print" id="print" onclick="window.print()"/>
                            </div>
                        </div>
                    </div>
                    <!-- Row end -->   
              <td class="align-right" style="background-color:#212529;">
                <h2 style="color:#c36f51; padding-left:320px;">예약 완료</h2>
              </td>
            </tr>
            <tr class="intro"> 
              <!-- <td class="">
                Hello, Philip Brooks.<br>
                Thank you for your order.
              </td>  -->
               <td class="text-right" style="padding-left:280px; width:2000px;">
                <!-- <span class="num">Order #00302</span><br> -->
                아래 계좌정보로 입금해 주시면<br>　　결제 완료처리가 됩니다
              </td> 
            </tr>
            <tr class="details">
            <td colspan="2">
              <table>
                <thead>
                  <tr>
                    <th class="desc">입금계좌</th>
                    <th class="id">예금주</th>
                    <!-- <th class="qty">Quantity</th> -->
                    <th class="amt">입금금액</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="item">
                    <td class="desc">우리은행 : 523-16-15-2361</td>
                    <td class="id num">${sessionScope.userName}</td>
                    <!-- <td class="qty">1</td> -->
                    <td class="amt">₩300,000,000</td>
                  </tr>
                </tbody>
              </table>
            </td> 
          </tr>
          <tr class="totals">
            <td></td>
            <td>
              <table>
                <!-- <tr class="subtotal">
                  <td class="num">Subtotal</td>
                  <td class="num">$100.00</td>
                </tr>
                <tr class="fees">
                  <td class="num">Shipping & Handling</td>
                  <td class="num">$0.00</td>
                </tr>
                <tr class="tax">
                  <td class="num">Tax (7%)</td>
                  <td class="num">$7.00</td>
                </tr> -->
                <tr class="total">
                  <td>Total</td>
                  <td>₩300,000,000</td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        
        <section class="additional-info">
          <div class="row">
          <!-- <div class="columns">
            <h5>Billing Information</h5>
            <p>Philip Brooks<br>
              134 Madison Ave.<br>
              New York NY 00102<br>
              United States</p>
            </div> -->
            <!-- <div class="columns">
              <h5>Payment Information</h5>
              <p>Credit Card<br>
              Card Type: Visa<br>
              &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; 1234
            </p>
          </div> -->
        </div>
        <!-- <header class="additional-info"> -->
            <!-- <a class="button hollow secondary"><i class="ion ion-chevron-left"></i> Go Back to Purchases</a> -->
           <!--  &nbsp;&nbsp; -->
            
            <div class="revOk" style="padding-left:220px;">
	            <button class='pulse m-3 p-3 justify-content-center' style="width: 100px; height: 50px; color:#c36f51;" onclick="location.href='home.do'">
	            	홈으로
	            </button>
	            
	            <button class='pulse m-3 p-3 justify-content-center' style="width: 150px; height: 50px; color:#c36f51; margin:auto;"  onclick="location.href='myPageList.do?mId=${sessionScope.userId}'">
	            	마이페이지
	            </button>
            </div>
 
 
 
 
 
                                                  
                         
 
 
 
 
            
            
          </header>
      </section>
      </div>
    </section>
  </div>
</main>
</div>
</div>


<%@ include file="../inc/footer.jsp" %> --%>