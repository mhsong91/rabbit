<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
/* var uiId = $("#uiId").val();
var uiPwd = $("#uiPwd").val();
var uiHP=$("#uiHP").val();
var admin=$("#admin").val(); */

/* var param={
	uiName:uiName,uiId:uiId,uiPwd:uiPwd,uiHP:uiHP,admin:admin
	};

function join(){
 var au = new AjaxUtil("${root}/user/join",param,"post");
	au.send(callback);
}

function callback(res){
	alert(res.msg);
	
} */

function join(){
	/* var uiName= document.getElementById("uiName").value;
	var uiId= document.getElementById("uiId").value;
	var uiPwd= document.getElementById("uiPwd").value;
	var uiHP= document.getElementById("uiHP").value;
	var admin= document.getElementById("admin").value; */
	
/*  	$.ajax({
		url:"${root}/user/join",
		type: "POST",
		contentType: "application/json",
		data:param,
		success:function(res){
			alert(res.msg);
		}
	})  */
	var params = "uiName,uiId,uiPwd,uiHP,admin";
	var au = new AjaxUtil("${root}/user/join",params,"POST");
	au.send(callback);  
 
}
function callback(res){
	alert(res.msg);
	if(res.biz){
		location.href="${root}/path/user/login";
	}
	
}
function check(){
	var params = "uiId";
	var au = new AjaxUtil("${root}/user/check",params,"POST");
	au.send(callback2);  
	
}
function callback2(res){
	alert(res.msg);
}


</script>
<body>
<table border="1">
<thead>
<tr>
	<th>이름</th>
    <th>아이디</th>
    <th>비밀번호</th>
    <th>번호</th>
    <th>관리자</th>
    </tr>
</thead>
<tbody>

  <tr>
  	<td><input type="text" id="uiName" name="uiName"></td>
    <td><input type="text" id="uiId" name="uiId" ></td>
    <td><input type="password" id="uiPwd" name="uiPwd" ></td>
    <td><input type="text" id="uiHP" name="uiHP" ></td>
    <td>
    	<input type="radio" id="admin" name="admin" value="0">일반사용자
    	<input type="radio" id="admin" name="admin" value="1" >사장님
    </td>
    
    <td><input type="button" value="회원가입" onclick="join()"></td>
    <td><input type="button" value="중복체크" onclick="check()"></td>
    <td><a href="${pPath}/user/login"><button type="button">돌아가기</button></a></td>
  </tr>
  
 </tbody>
</table>


</body>
</html>