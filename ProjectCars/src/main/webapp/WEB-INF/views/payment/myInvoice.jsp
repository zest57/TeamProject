<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../inc/header.jsp" %>

<link rel="stylesheet" href="${ctx}/resources/css/myInvoice.css">

<div id="myInvoice">

    <div class="container mt-3">
        <div class="mt-3 mb-3 p-3 text-white rounded" style="background-color: rgba(70, 70, 70, 0.5)">
             <h1><i class="xi-barcode"></i>&nbsp;Invoce</h1> 
        </div>
    </div>
    
    <div class="container">
                      <div class="invoice-container">
                            <div class="invoice-header">

                                <!-- Row start -->
                                <div class="row gutters">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <div class="custom-actions-btns mb-5">
                                           <input type="button" value="print" id="print" onclick="window.print()"/>
                                        </div>
                                    </div>
                                </div>
                                <!-- Row end -->
        
                                <!-- Row start -->
                                <div class="row gutters">
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <a href="home.do" class="invoice-logo">
                                            X-ProjectCars.com
                                        </a>
                                    </div>
                                </div>
                                <!-- Row end -->
        
                                <!-- Row start -->
                                <div class="row gutters">
                                    <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                                        <div class="invoice-details">
                                            <address>
                                                X-ProjectCars<br>
                                                대전광역시 서구 계룡로491번길 86 
                                            </address>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                                        <div class="invoice-details">
                                            <div class="invoice-num">
                                                <div>Invoice - #001</div>
                                                <div>January 10th 2022</div>
                                            </div>
                                        </div>                                       
                                    </div>
                                </div>
                                <!-- Row end -->
        
                            </div>
        
                            <div class="invoice-body">
        
                                <!-- Row start -->
                                <div class="row gutters">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="table-responsive">
                                            <table class="table custom-table m-0">
                                                <thead>
                                                    <tr>
                                                        <th>Items</th>
                                                        <th>Car ID</th>
                                                        <th>Quantity</th>
                                                        <th>Sub Total</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="imgCar">
                                                                <img src="${ctx}/resources/image/cars/람보르기니  가야도르.jpg" alt="">
                                                                람보르기니  가야도르
                                                            </div>                                                   
                                                        </td>
                                                        <td>{dto.cNum}</td>
                                                        <td>1</td>
                                                        <td>₩{dto.price}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="imgCar">
                                                                <img src="${ctx}/resources/image/cars/롤스로이스 팬텀.png" alt="">
                                                                롤스로이스 팬텀
                                                            </div>                                                   
                                                        </td>
                                                        <td>{dto.cNum}</td>
                                                        <td>1</td>
                                                        <td>₩{dto.price}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="imgCar">
                                                                <img src="${ctx}/resources/image/cars/페라리 488.png" alt="">
                                                                페라리 488
                                                            </div>                                                   
                                                        </td>
                                                        <td>{dto.cNum}</td>
                                                        <td>1</td>
                                                        <td>₩{dto.price}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td colspan="2">
                                                            <h5 class="text-success"><strong>Grand Total</strong></h5>
                                                        </td>         
                                                        <td>
                                                            <h5 class="text-success"><strong>{dto.tot_price}</strong></h5>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- Row end -->
        
                            </div>
                    
                        <!-- <div class="invoice-footer">
                            Thank you for your Business.
                        </div> -->  
                        </div> <!-- invoice container -->
                         
                    </div>
                </div>


<%@ include file="../inc/footer.jsp" %>