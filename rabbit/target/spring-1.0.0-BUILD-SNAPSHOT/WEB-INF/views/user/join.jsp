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
	var uiName= document.getElementById("uiName").value;
	var uiId= document.getElementById("uiId").value;
	var uiPwd= document.getElementById("uiPwd").value;
	var uiHP= document.getElementById("uiHP").value;
	var admin= document.getElementById("admin").value;
	
	var param={uiName:uiName,uiId:uiId,uiPwd:uiPwd,uiHP:uiHP,admin:admin};
	param =JSON.stringify(param);  
	console.log(param);
	$.ajax({
		url:"${root}/user/join",
		type: "POST",
		contentType: "application/json",
		data:param,
		success:function(res){
			alert(1);
		}
	})
	/* var au = new AjaxUtil("${root}/user/join",param,"post","json");
	au.send(callback); */

}
function callback(res){
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
  	<td><input type="text" id="uiName" value="name"></td>
    <td><input type="text" id="uiId" value="id"></td>
    <td><input type="password" id="uiPwd" value="test"></td>
    <td><input type="text" id="uiHP" value="0101111111"></td>
    <td><input type="text" id="admin" value="1"></td>
    
    <td><input type="submit" value="새식구되기" onclick="join()"></td>
    <td><a href="${pPath}/user/login"><button type="button">난고자로살겠어ㅜㅜ</button></a></td>
  </tr>
  
 </tbody>
</table>


</body>
</html>