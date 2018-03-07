<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>


function login(){
	var params = "uiId,uiPwd";

	var au = new AjaxUtil("${root}/user/login",params,"POST");
	au.send(callback);  

	}
	

function callback(res){
	alert(res.msg);
	if(res.biz){
		location.href="${root}/path/map/main";
	}
	
}

</script>
<body >
<h1>브끄^^</h1>
<table border="1">
<thead>
<tr>
    <th>아이디</th>
    <th>비밀번호</th>
    </tr>
</thead>
<tbody>
  <tr>
    <td><input type="text" name="uiId"></td>
    <td><input type="text" name="uiPwd"></td>
    <td><input type="button" onclick="login()" value="로그인"></td>
    <td><a href="${pPath}/user/join"><button type="button">새식구^^</button></a></td>
  </tr>
 </tbody>
</table>
</body>
</html>