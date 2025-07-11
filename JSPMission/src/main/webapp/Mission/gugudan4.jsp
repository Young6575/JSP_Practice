<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
.box1  {
	display : flex;
	justify-content: center;
	font-weight: bold;
}
.box11{
	margin: 10px;
	}

</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String val = request.getParameter("val");
int dan;
int ref=0;
if (val ==null) {
	dan = 3;
} else dan = Integer.parseInt(val);
		
	
	for (int i =2;i<=9;i++){
		
		if(ref==0) 	 
		out.println("<div class=box1>");
		
		
		out.println("<div class=box11>" + i +"단");
		for (int j=1;j<=9;j++){
			
			out.println("<br/>"+i +"*" + j + "=" +i*j); 
		}
		out.println("</div>" );
				
	if(ref==dan-1) {
	out.println("</div>");
	out.println("<br/>");
	}
	
	ref ++;
	
	if(ref == dan)
		ref=0;
	
	}
%>


</body>
</html>