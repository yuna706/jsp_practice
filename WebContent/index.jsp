<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
crossorigin="anonymous">
<title>Insert title here</title>
<style>
	* { margin:0px; padding:0px;}
	html, body {
		width:100%; height:100%;
	}
	#container {
		width:100%; height:100%;
		display:flex; justify-content: center; align-items: center;
	}
	#inputBox{
		width:50%; min-height:30%; border-radius:10px; border:1px solid black;
		display:flex; justify-content:center; padding:20px;
	}
	#inputBox > form {
		width:70%; height:80%;
	}	
</style>
</head>
<body>
	<div id="container">
		<div id="inputBox">
			<form action ="lunchData.jsp" method="post" class="form">
				<h2> 급식일 입력</h2>
				<input type="date" name="date" class="form-control"/><br/>
				<input type="submit" value="급식 보기" class="btn btn-default"/>
			</form>
		</div>
	</div>
</body>
</html>
