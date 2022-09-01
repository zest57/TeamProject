<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../inc/header.jsp" %>

<link href="https://fonts.googleapis.com/css?family=Muli:400,700,800,900" rel="stylesheet"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="${ctx}/resources/css/payment.css">
<script src="${ctx}/resources/js/payment.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>







<script type="text/javascript">


// 세션 자바스크립트 변환방법1
const mId = "<%=(String)session.getAttribute("userId")%>"



 var userId = sessionStorage.set("userId",mId); 



alert(mId);
alert(userId);





</script>



<style>

h1,h2,h3,h4,h5,h6,p,strong,tr,td,th{

color: #BBB;

}


</style>





<div id="myPayment">
<!-- partial:index.partial.html -->
<svg style="position: absolute; width: 0; height: 0; overflow: hidden;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<defs>
<symbol id="icon-help" viewBox="0 0 24 24">
<title>help</title>
<path d="M15.047 11.25c0.563-0.563 0.938-1.359 0.938-2.25 0-2.203-1.781-3.984-3.984-3.984s-3.984 1.781-3.984 3.984h1.969c0-1.078 0.938-2.016 2.016-2.016s2.016 0.938 2.016 2.016c0 0.563-0.234 1.031-0.609 1.406l-1.219 1.266c-0.703 0.75-1.172 1.734-1.172 2.813v0.516h1.969c0-1.5 0.469-2.063 1.172-2.813zM12.984 18.984v-1.969h-1.969v1.969h1.969zM12 2.016c5.531 0 9.984 4.453 9.984 9.984s-4.453 9.984-9.984 9.984-9.984-4.453-9.984-9.984 4.453-9.984 9.984-9.984z"></path>
</symbol>
<symbol id="icon-face" viewBox="0 0 24 24">
<title>face</title>
<path d="M12 20.016c4.406 0 8.016-3.609 8.016-8.016 0-0.797-0.141-1.547-0.328-2.25-0.703 0.188-1.453 0.234-2.25 0.234-3.375 0-6.328-1.641-8.156-4.219-0.984 2.391-2.906 4.359-5.25 5.391-0.047 0.281-0.047 0.563-0.047 0.844 0 4.406 3.609 8.016 8.016 8.016zM12 2.016c5.531 0 9.984 4.453 9.984 9.984s-4.453 9.984-9.984 9.984-9.984-4.453-9.984-9.984 4.453-9.984 9.984-9.984zM15 11.766c0.703 0 1.266 0.516 1.266 1.219s-0.563 1.266-1.266 1.266-1.266-0.563-1.266-1.266 0.563-1.219 1.266-1.219zM9 11.766c0.703 0 1.266 0.516 1.266 1.219s-0.563 1.266-1.266 1.266-1.266-0.563-1.266-1.266 0.563-1.219 1.266-1.219z"></path>
</symbol>
<symbol id="icon-navigate_before" viewBox="0 0 24 24">
<title>navigate_before</title>
<path d="M15.422 7.406l-4.594 4.594 4.594 4.594-1.406 1.406-6-6 6-6z"></path>
</symbol>
<symbol id="icon-check" viewBox="0 0 24 24">
<title>check</title>
<path d="M9 16.172l10.594-10.594 1.406 1.406-12 12-5.578-5.578 1.406-1.406z"></path>
</symbol>
<symbol id="icon-close" viewBox="0 0 24 24">
<title>close</title>
<path d="M18.984 6.422l-5.578 5.578 5.578 5.578-1.406 1.406-5.578-5.578-5.578 5.578-1.406-1.406 5.578-5.578-5.578-5.578 1.406-1.406 5.578 5.578 5.578-5.578z"></path>
</symbol>
<symbol id="icon-credit-card" viewBox="0 0 32 32">
<title>credit-card</title>
<path d="M4 22h4v-2h-4v2zM10 22h4v-2h-4v2zM12 16h-8v2h8v-2zM8 14h2l4-4h-2l-4 4zM14 18h6v-2h-6v2zM30 6c-1 0-27 0-28 0s-2 1-2 2 0 15 0 16 1 2 2 2 27 0 28 0 2-1 2-2 0-15 0-16-1-2-2-2zM30 14v9s0 1-1 1h-26c-1 0-1-1-1-1v-9h2l4-4h-6v-1s0-1 1-1h26c1 0 1 1 1 1v1h-12l-4 4h16z"></path>
</symbol>
<symbol id="icon-lock" viewBox="0 0 24 24">
<title>lock</title>
<path d="M15.094 8.016v-2.016c0-1.688-1.406-3.094-3.094-3.094s-3.094 1.406-3.094 3.094v2.016h6.188zM12 17.016c1.078 0 2.016-0.938 2.016-2.016s-0.938-2.016-2.016-2.016-2.016 0.938-2.016 2.016 0.938 2.016 2.016 2.016zM18 8.016c1.078 0 2.016 0.891 2.016 1.969v10.031c0 1.078-0.938 1.969-2.016 1.969h-12c-1.078 0-2.016-0.891-2.016-1.969v-10.031c0-1.078 0.938-1.969 2.016-1.969h0.984v-2.016c0-2.766 2.25-5.016 5.016-5.016s5.016 2.25 5.016 5.016v2.016h0.984z"></path>
</symbol>
<symbol id="icon-info" viewBox="0 0 24 24">
<title>info</title>
<path d="M12.984 9v-2.016h-1.969v2.016h1.969zM12.984 17.016v-6h-1.969v6h1.969zM12 2.016c5.531 0 9.984 4.453 9.984 9.984s-4.453 9.984-9.984 9.984-9.984-4.453-9.984-9.984 4.453-9.984 9.984-9.984z"></path>
</symbol>
<symbol id="icon-settings" viewBox="0 0 24 24">
<title>settings</title>
<path d="M12 15.516c1.922 0 3.516-1.594 3.516-3.516s-1.594-3.516-3.516-3.516-3.516 1.594-3.516 3.516 1.594 3.516 3.516 3.516zM19.453 12.984l2.109 1.641c0.188 0.141 0.234 0.422 0.094 0.656l-2.016 3.469c-0.141 0.234-0.375 0.281-0.609 0.188l-2.484-0.984c-0.516 0.375-1.078 0.75-1.688 0.984l-0.375 2.625c-0.047 0.234-0.234 0.422-0.469 0.422h-4.031c-0.234 0-0.422-0.188-0.469-0.422l-0.375-2.625c-0.609-0.234-1.172-0.563-1.688-0.984l-2.484 0.984c-0.234 0.094-0.469 0.047-0.609-0.188l-2.016-3.469c-0.141-0.234-0.094-0.516 0.094-0.656l2.109-1.641c-0.047-0.328-0.047-0.656-0.047-0.984s0-0.656 0.047-0.984l-2.109-1.641c-0.188-0.141-0.234-0.422-0.094-0.656l2.016-3.469c0.141-0.234 0.375-0.281 0.609-0.188l2.484 0.984c0.516-0.375 1.078-0.75 1.688-0.984l0.375-2.625c0.047-0.234 0.234-0.422 0.469-0.422h4.031c0.234 0 0.422 0.188 0.469 0.422l0.375 2.625c0.609 0.234 1.172 0.563 1.688 0.984l2.484-0.984c0.234-0.094 0.469-0.047 0.609 0.188l2.016 3.469c0.141 0.234 0.094 0.516-0.094 0.656l-2.109 1.641c0.047 0.328 0.047 0.656 0.047 0.984s0 0.656-0.047 0.984z"></path>
</symbol>
<symbol id="icon-wallpaper" viewBox="0 0 24 24">
<title>wallpaper</title>
<path d="M3.984 12.984v7.031h7.031v1.969h-7.031c-1.078 0-1.969-0.891-1.969-1.969v-7.031h1.969zM20.016 20.016v-7.031h1.969v7.031c0 1.078-0.891 1.969-1.969 1.969h-7.031v-1.969h7.031zM20.016 2.016c1.078 0 1.969 0.891 1.969 1.969v7.031h-1.969v-7.031h-7.031v-1.969h7.031zM17.016 8.484c0 0.844-0.656 1.5-1.5 1.5s-1.5-0.656-1.5-1.5 0.656-1.5 1.5-1.5 1.5 0.656 1.5 1.5zM9.984 12.984l3 3.703 2.016-2.672 3 3.984h-12zM3.984 3.984v7.031h-1.969v-7.031c0-1.078 0.891-1.969 1.969-1.969h7.031v1.969h-7.031z"></path>
</symbol>
</defs>
</svg>

<div class="checkout">
  
  <div class="checkout__form">
    
    <!-- <p class="paths">
      Customer information > Shipping method > <span class="primary">Payment method</span> > Order Review
    </p> -->
    
<!--     <div class="path">
      <a href="#" class="path__item is-active">1. Customer information</a>
      <a href="#" class="path__item">2. Shipping information</a>
      <a href="#" class="path__item">3. Billing information</a>
      <a href="#" class="path__item">4. Shipping method</a>
      <a href="#" class="path__item">5. Payment method</a>
    </div> -->
    
<!--     <h1>Checkout</h1> -->
<!--     <p class="microcopy">We need some information to complete your order. You can also make adjustments to your order at any time.</p> -->
    
  
  <!--   <div class="site-header"></div> -->
    
<!--     <form action="" class="form"> -->
      
      <div class="pages">
        <div class="page page--1">
          
<!--           <p class="path"><span class="primary">Customer information</span> > Shipping method > Payment method</p> -->
          
          <header class="header">
            <h2>Customer information</h2>
            <span class="extra">Already have an account? <a href="#">Login</a></span>
          </header>
          <p class="microcopy">Please tell us to which email address we can send the  order confirmation.</p>

          <div class="f">
            <div class="input">
              <label for="email" class="input__label">Email <span class="required">(required)</span></label>
              <input id="email" type="email" class="input__input" data-mask=".+@\w+\.+\w+(\.+\w+)?" />
              <div class="input__error">Please enter a valid email address.</div>
            </div>

            <label for="newsletter" class="control">
              <input type="checkbox" id="newsletter" class="control__input" />
              <div class="control__label">Please keep me informed about <b>offers</b> and <b>discounts</b>.</div>
            </label>
          </div>
          
          <header class="header">
            <h2>Shipping address</h2>
          </header>
          <p class="microcopy">Please tell us where to ship your order.</p>

          <div class="f">
            <div class="input">
              <label for="name" class="input__label">Your full name <span class="required">(required)</span></label>
              <input id="name" type="text" class="input__input" />
            </div>
            <div class="f60">
              <div class="input">
                <label for="address" class="input__label">Address <span class="required">(required)</span></label>
                <input id="address" type="text" class="input__input" />
                <div class="input__error">Please enter a valid address.</div>
              </div>
            </div>
            <div class="f40">
              <div class="input">
                <label for="appartment" class="input__label">Apt., suite, etc. <span class="optional">(optional)</span></label>
                <input id="appartment" type="email" class="input__input" />
              </div>
            </div>
            <div class="collapser">
              <div class="collapser__label"><a href="#">Add another address line</a></div>
              <div class="collapser__content">
                <div class="input">
                  <label for="address2" class="input__label">Address <span class="optional">(optional)</span></label>
                  <input id="address2" type="text" class="input__input" />
                  <div class="input__error">Please enter a valid address.</div>
                </div>
              </div>
            </div>
<!--             <div class="f40"> -->
            <div class="input">
              <label for="city" class="input__label">City <span class="required">(required)</span></label>
              <input id="city" type="text" class="input__input" />
            </div>
<!--             </div> -->
            <div class="f35">
              <div class="input input--select">
                <label for="country" class="input__label">Country <span class="required">(required)</span></label>
                <select name="country" id="country" class="input__input">
                  <option disabled>Country</option>
                  <option value="US">United States</option>
                  <option value="CA" selected>Canada</option>
                </select>
              </div>
            </div>
            <div class="f35">
              <div class="input input--select">
                <label for="province" class="input__label">Province <span class="required">(required)</span></label>
                <select name="province" id="province" class="input__input">
                  <option disabled>Province</option>
                  <option value="AB">Alberta</option>
                  <option value="ON" selected>Ontario</option>
                </select>
              </div>
            </div>
            <div class="f30">
              <div class="input">
                <label for="postalcode" class="input__label">Postal code <span class="required">(required)</span></label>
                <input id="postalcode" type="text" class="input__input" data-mask="^\w{1}\d{1}\w{1}\s*\d{1}\w{1}\d{1}$" />
                <div class="input__error">Please enter a valid postal code.</div>
              </div>
            </div>
          </div>

          <div class="f">
            <label for="billing-same" class="control">
              <input type="checkbox" id="billing-same" class="control__input" checked />
              <div class="control__label">My <b>billing information</b> is the same as my <b>shipping information</b>.</div>
            </label>
          </div>
          
          <div id="billing">
          
            <header class="header">
              <h2>Billing address</h2>
            </header>
            <p class="microcopy">The person that will be billed for this order, if different from the shipping receiver.</p>
          
          <div class="f">
            <div class="input">
              <label for="billing-name" class="input__label">Full name <span class="required">(required)</span></label>
              <input id="billing-name" type="text" class="input__input" />
            </div>
            <div class="f60">
              <div class="input">
                <label for="billing-address" class="input__label">Address <span class="required">(required)</span></label>
                <input id="billing-address" type="text" class="input__input" />
                <div class="input__error">Please enter a valid address.</div>
              </div>
            </div>
            <div class="f40">
              <div class="input">
                <label for="billing-appartment" class="input__label">Apt., suite, etc. <span class="optional">(optional)</span></label>
                <input id="billing-appartment" type="email" class="input__input" />
              </div>
            </div>        
            <div class="input">
              <label for="billing-city" class="input__label">City <span class="required">(required)</span></label>
              <input id="billing-city" type="text" class="input__input" />
            </div>
            <div class="f35">
              <div class="input input--select">
                <label for="billing-country" class="input__label">Country <span class="required">(required)</span></label>
                <select name="billing-country" id="billing-country" class="input__input">
                  <option disabled>Country</option>
                  <option value="US">United States</option>
                  <option value="CA" selected>Canada</option>
                </select>
              </div>
            </div>
            <div class="f35">
              <div class="input input--select">
                <label for="billing-province" class="input__label">Province <span class="required">(required)</span></label>
                <select name="billing-province" id="billing-province" class="input__input">
                  <option disabled>Province</option>
                  <option value="AB">Alberta</option>
                  <option value="ON" selected>Ontario</option>
                </select>
              </div>
            </div>
            <div class="f30">
              <div class="input">
                <label for="billing-postalcode" class="input__label">Postal code <span class="required">(required)</span></label>
                <input id="billing-postalcode" type="text" class="input__input" data-mask="^\w{1}\d{1}\w{1}\s*\d{1}\w{1}\d{1}$" />
                <div class="input__error">Please enter a valid postal code.</div>
              </div>
            </div>
          </div>
            
          </div>

          <div class="form__footer">
            <button class="btn btn--primary js-goto" data-page="2">
              <span class="btn__label">Continue to Shipping Method</span>
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
            <button class="btn btn--transparent secondary">
              <svg class="btn__icon"><use xlink:href="#icon-navigate_before"></use></svg>
              <span class="btn__label">Return to Cart</span>
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
          </div>
          
        </div>
        <div class="page page--2">
          
          <header class="header">
            <h2>Shipping Method</h2>
          </header>
          <p class="microcopy">Select the shipping method you would like to use.</p>

          <div class="f f--no-margin">
            <label for="shipping-free" class="control block is-selected">
              <input type="radio" name="shipping" id="shipping-free" class="control__input" checked />
              <div class="control__label">
                Free shipping
                <div class="microcopy">Get my order delivered by <span class="secondary">September 21st</span>.</div>
              </div>
              <span class="control__extra primary">FREE</span>
            </label>

            <label for="shipping-standard" class="control block">
              <input type="radio" name="shipping" id="shipping-standard" class="control__input" />
              <div class="control__label">
                Standard shipping
                <div class="microcopy">Get my order delivered by <span class="secondary">September 14th</span>.</div>
              </div>
              <span class="control__extra">$14.00</span>
            </label>

            <label for="shipping-rush" class="control block">
              <input type="radio" name="shipping" id="shipping-rush" class="control__input" />
              <div class="control__label">
                Rush shipping
                <div class="microcopy">Get my order delivered by <span class="secondary">September 7th</span>.</div>
              </div>
              <span class="control__extra">$39.00</span>
            </label>
          </div>
          
          <div class="form__footer">
            <button class="btn btn--primary js-goto" data-page="3">
              <span class="btn__label">Continue to Payment Method</span>
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
            <button class="btn btn--transparent secondary js-goto" data-page="1">
              <svg class="btn__icon"><use xlink:href="#icon-navigate_before"></use></svg>
              <span class="btn__label">Return to Customer information</span>
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
          </div>
          
        </div>
        <div class="page page--3 is-active">

          <header class="header">
            <h2>결제수단 선택</h2>
          </header>
          <p class="microcopy">Select the payment method you would like to use.</p>

          <div class="f f--no-margin">
            <label for="payment-cc" class="control block is-selected">
              <input type="radio" name="payment" id="payment-cc" value="1" class="control__input"  checked/>
              <div class="control__label">
                무통장입금

              </div>

            </label>

            <div class="block block--collapse">
              <div class="f">
                <div class="input is-selected">
                  <!-- <svg class="input__icon"><use xlink:href="#icon-lock"></use></svg> -->
                  <label for="ccnumber" class="input__label" id="pName" >${sessionScope.userName} 
                    <!-- <span class="required">(required)</span> -->
                  </label>
                  <!-- <input id="ccnumber" type="text" class="input__input"  -->
                  <!-- data-mask="^\d{4}[\-\s]?\d{4}[\-\s]?\d{4}[\-\s]?\d{4}$"  -->
                  <!-- data-luhn /> -->
                  <!-- <div class="input__error">입금자명을 입력해주세요.</div> -->

                  <!-- <label for="ccsecurity" class="input__label">Security code <span class="required">(required)</span></label> -->
                    <input id="ccsecurity" type="text" class="input__input" data-mask="^\d{3,4}$" disabled />
                    <!-- <div class="input__error">입금자명을 입력해주세요</div> -->
                </div>
                <div class="f30">
                  <div class="input input--select">
                    <label for="ccmonth" class="input__label">
                      <!-- <span class="required">(required)</span> -->
                    </label>
                    <select name="bank" id="ccmonth" class="input__input">
                      <option disabled selected>입금은행을 선택하세요</option>
                      <option value="농협 : 354-1571-9069-42">농협 : 354-1571-9069-42</option>
                      <option value="신한은행 : 10033-72-762-286">신한은행 : 10033-72-762-286</option>
                      <option value="우리은행 : 007-34-6864-714">우리은행 : 007-34-6864-714</option>
                      <option value="국민은행 : 730711-09-573374">국민은행 : 730711-09-573374</option>
                      <option value="하나은행 : 16172-614-72914">하나은행 : 16172-614-72914</option>
                      <option value="카카오뱅크 : 228-34-537-25114">카카오뱅크 : 228-34-537-25114</option>
                    </select>
                  </div>
                </div>

              </div>
            </div>

            <label for="payment-paypal" class="control block">
              <input type="radio" name="payment" id="payment-paypal" value="2" class="control__input" />
              <div class="control__label">
                신용/체크카드/페이

                <div class="microcopy">credit / check card / pay</div>
 
              </div>
              <span class="control__extra">
                <svg class="control__icon"><use xlink:href="#icon-credit-card"></use></svg>
              </span>
            </label>
          </div>
          
          
          <div class="collapser">

            <div class="collapser__content">

              <p class="microcopy">Add gifts cards you would like to redeem.</p>

              <div class="f">
                <div class="f70">
                  <div class="input">
                    <svg class="input__icon"><use xlink:href="#icon-info"></use></svg>
                    <label for="giftcard" class="input__label">Gift card number <span class="optional">(optional)</span></label>
                    <input id="giftcard" type="text" class="input__input" />
                    <div class="input__error">Please enter a valid gift card number.</div>
                  </div>
                </div>
                <div class="f30">
                  <button class="btn btn--secondary btn--full js-add-giftcard">Redeem</button>
                </div>
                <div class="cards"></div>
              </div>
              
            </div>
          </div>
          
          
          

          <!-- jQuery -->
          <script type="text/javascript"
          src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
          <script type="text/javascript"
          src="https://cdn.iamport.kr/js/iamport.payment-1.1.2.js"></script>

          <div class="form__footer">
          
          <!-- <button class="btn__label" onclick="test()">테스트</<button class="btn__label">> -->
            <button class="btn btn--primary js-goto" id="payBtn" onclick="requestPay(${vDto.cNum},${rDto.totalPrice})">
              <span class="btn__label">결제하기</span>
              
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
            
            <button class="btn btn--transparent secondary js-goto" data-page="2">

              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
            
            
          </div>
          
        </div>
        <div class="page page--4">
          



          <script>
            var IMP = window.IMP; // 생략가능
            IMP.init('imp52074203'); 
            
/*             
  // 은행 계좌 넘기기 테스트용           
            function test() {
                var bank = document.getElementById("ccmonth");
                var paybank = bank.options[bank.selectedIndex].value;

                alert(paybank);
                alert(account);
                
			}
 */


            
            function requestPay(cNum,totalPrice) {
		var current = $("input:radio[name='payment']:checked").val();

                if(current == '1'){
                   cashPay(cNum,totalPrice);
                }
                else if(current == '2'){
                   cardPay(cNum,totalPrice);
                }
                
             };
             
           

             function cashPay(cNum,totalPrice){
            	// 은행넘기기 
 	            var bank = document.getElementById("ccmonth");
                var account = bank.options[bank.selectedIndex].value;
            	alert(account); 
                location.href = "http://localhost:8080/web/bankPaymentOk.do?cNum="+cNum+"&id="+mId+"&totalPrice="+totalPrice+"&account="+account;
             };
                        
            
            function cardPay(cNum,totalPrice,cName) {
            IMP.init('iamport'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
            IMP.request_pay({
              pg: "inicis",
              pay_method: "card",
              merchant_uid : 'merchant_'+new Date().getTime(),
              name : cName,
              amount : totalPrice,
              buyer_email : 'iamport@siot.do',
              buyer_name : '구매자',
              buyer_tel : '010-1234-5678',
              buyer_addr : '서울특별시 강남구 삼성동',
              buyer_postcode : '123-456'
            }, function (rsp) {
              console.log(rsp);
              if (rsp.success) {
                var msg = '결제가 완료되었습니다.';
                
                /* alert(mId);                
                alert(cNum);   */     
                
                location.href = "paymentOk.do?cNum="+cNum+"&id="+mId;
                
                
/*         		document.prodFrm.action="cartAdd.do?pNum="+pNum;
        		document.prodFrm.submit(); */
                
              } else {
            	  var msg = '결제에 실패하였습니다.';
                  msg += '에러내용 : ' + rsp.error_msg;
                  alert(msg);
                  location.reload();

              }
            
            });
          }
          </script>
          






			
          <div class="form__footer">
            <button class="btn btn--primary js-goto" data-page="4">
              <span class="btn__label">Place my order</span>
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
            <button class="btn btn--transparent secondary js-goto" data-page="3">
              <svg class="btn__icon"><use xlink:href="#icon-navigate_before"></use></svg>
              <span class="btn__label">Return to Payment method</span>
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
          </div>
          
        </div>
      </div>

    
    </div>
  <div class="checkout__summary">
    
    
    <header class="header">
      <h2>결제정보</h2>
    </header>
    <strong style="font-family: LeferiPoint-WhiteObliqueA; font-size: 15px; color: #BBB">${vDto.company} ${vDto.cName}</strong>
    
    <div class="collapser">
      <div class="collapser__content">
        
        <div class="f">
          <div class="f70">
            <div class="input">
              <svg class="input__icon"><use xlink:href="#icon-info"></use></svg>
              <label for="couponcode" class="input__label">Coupon code <span class="optional">(optional)</span></label>
              <input id="couponcode" type="text" class="input__input" data-mask=".{5,}" />
              <div class="input__error">Please enter a valid coupon code.</div>
            </div>
          </div>
          <div class="f30">
            <button class="btn btn--secondary btn--full js-add-gift-card">Add</button>
          </div>
        </div>
        
      </div>
    </div>
    
    <div class="f">

      
      <table class="pricing">
        <tbody>
          <tr>
							<img class="active" src="${ctx}/resources/file_upload/${vDto.fileName}">
							<!-- <td class="pricing__label">Custom Throw Pillow (18" x 18")</td> -->
							<td class="pricing__label">1일 비용 : </td>
							<td class="pricing__price">￦ ${vDto.wprice} 원</td>
						</tr>
					</tbody>
				</table>

				<table class="pricing">
					<tbody>
					</tbody>
					<tfoot>
						<tr class="pricing__total">
							<td class="pricing__label">Total</td>
							<td class="pricing__price"><span class="currency">￦</span> <b>${rDto.wtotalPrice}원</b></td>
						</tr>
					</tfoot>
				</table>
			</div>


    
  </div>
</div>
</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'>
  </script><script  src="${ctx}/resources/js/payment.js"></script>


<%@ include file="../inc/footer.jsp"%>