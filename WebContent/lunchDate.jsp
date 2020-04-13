<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
</head>
<body>
	<% 
		String strDate = request.getParameter("date");
		String[] strDates = strDate.split("-");
		//- 문자를 기준으로 잘라준다. 2017-03-01 의 경우 3개로 쪼개지게 된다.
		strDate = strDates[0];
		for(int i = 1; i < strDates.length; i++){
			strDate += strDates[i];
		}
		Crawler menuCrawler = new Crawler();
		String strMenu = menuCrawler.getMenuData(strDate);
		
		out.println(strMenu);
	%>
</body>
</html>
