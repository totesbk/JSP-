<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

//int num1= Integer.parseInt(request.getParameter("num1"));
//int num2= Integer.parseInt(request.getParameter("num2"));
System.out.print("num1");

String n1=request.getParameter("num1");
String n2=request.getParameter("num2");

if(n1.equals("") || n2.equals("")){
	response.sendRedirect("errorCal.jsp");
}else{
	int num1=Integer.parseInt(n1);
	int num2=Integer.parseInt(n2);
	
	//System.out.print("num1:"+num1);
	//System.out.print("num2:"+num2);
	
	String op = request.getParameter("operation");

	double result = 0.0;

	switch(op){
	case "+":
		result = num1+num2;
		break;
	case "-":
		result = num1-num2;
		break;
	case "*":
		result = num1*num2;
		break;
	case "/":
		result = num1/(double)num2;
		break;
	}

	session.setAttribute("result",result);
	response.sendRedirect("Cal.jsp");
}




%>





