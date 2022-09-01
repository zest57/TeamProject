<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp" %>





    <div class="container carList bg-dark w-90 mt-5 border shadow-sm p-5" style="width:800px; margin:auto;" >
    
    
        <h1 class="text-center">회원정보</h1>
    <div class="card-body" style="padding:0">
        <div class='container'>                            
        <form action='myMemberModifyOk.do?id=${member.id}' method='post'>  
            <input type='hidden' name='no' value="${member.no}">
            <table class='table table-sm' style="background-color:#111; color:#fff;">                                   
            <tbody>                                                 
                <tr style="">                                                
                    <td colspan='2'><b>${sessionScope.userName}</b>님의 회원 정보</td>
                </tr>                                         
                <tr>                            
                    
                    <td style="color: #c36f51">아이디</td>
                    <td style="color: cornflowerblue;"><input class="form-control" style="width:400px; margin:auto; background:#777;" type="text" value="${sessionScope.userId}" readonly></td>                 
                </tr>                           
                <tr>                            
                    <td>비밀번호</td>           
                    <td>
                    	<input type="text" class="form-control" style="width:400px; margin:auto;" id="floatingInputValue" name="pw" value="" placeholder="***********">
                    	<input type="hidden" class="form-control" style="width:400px; margin:auto;" id="floatingInputValue" name="pwOld" value="${member.pw}"/>
                    
               
                    
                    </td>    
                </tr>                           
                <tr>                            
                              
                    <td style="color: #c36f51">이름</td>               
                    <td style="color: cornflowerblue;"><input class="form-control" style="width:400px; margin:auto; background:#777;" type="text" value="${sessionScope.userName}"  readonly></td>  
                </tr>                           
                <tr>                            
                    <td>나이</td>               
                    <td>
                        <input type="text" class="form-control" style="width:400px; margin:auto;" id="floatingInputValue" name="age" value="${member.age}">
                    </td>          
                </tr>                                         
                <tr>                                          
                    <td>이메일</td>                           
                    <td>
                        <input type="text" class="form-control" style="width:400px; margin:auto;" id="floatingInputValue" name="email" placeholder="name@example.com" value="${member.email}">
                    </td>        
                </tr>                                
                <tr>                                 
                    <td>전화번호</td>                
                    <td>
                        <input type="text" class="form-control" style="width:400px; margin:auto;" id="floatingInputValue" name="tel" placeholder="010-0000-0000" value="${member.tel}">
                    </td>        
                </tr>                                          
                <tr>                                 
                    <td>주소</td>                
                    <td>
                        <input type="text" class="form-control" style="width:400px; margin:auto;" id="floatingInputValue" name="detailAddr" value="${member.detailAddr}">
                    </td>        
                </tr>
                <tr>
                    <td style="color: #c36f51"><i class="xi-warning"></i>주의</td>
                    <td style="color: #c36f51"><i class="xi-warning"></i>아이디와 이름은 변경할 수 없습니다.</td>
                </tr>                                                                                          
                <tr>     
                    <td colspan='2' align='center'>               
                        <input type='submit' value='수정하기' class='btn btn-outline-white opacity-80'/>    
                        <a href='myPageList.do?mId=${member.id}' class='btn btn-outline-white opacity-80'>마이페이지</a> 
                    </td>     
                    
                                                           
                </tr>      
            </tbody>                                                
            </table>                                                
            </form>                                                 
        </div>
      </div>
   </div>



<%@ include file="../inc/footer.jsp" %>
