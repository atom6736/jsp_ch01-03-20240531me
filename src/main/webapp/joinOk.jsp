<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 정보</title>
</head>
<body>
	<h2>회원 가입 정보</h2>
	<hr>
	<%
		String memberId = request.getParameter("id");		
		String memberpw = request.getParameter("pw");
		String memberName = request.getParameter("name");
		
		String memberTelecom = request.getParameter("telecom");
		
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		
		String memberGender = request.getParameter("gender");
	
		String[] hobbys = request.getParameterValues("hobby"); //이 체크박스를 주의애야 함.
		
		String memberIntro = request.getParameter("intro");
	%>
	
	아이디 : <%=memberId %> 
	<br>
	비밀번호 : <%=memberpw %>
	<br> 
	이름 : <%=memberName %>
	<br> 
	연락처 : <%=memberTelecom %> <%=phone1 %> - <%=phone2 %> - <%=phone3 %>
	<br> 
	성별 : <%=memberGender %>
	<br>
	취미 : 
	<%
		if (hobbys != null) {			
		
			for(int i=0;i<hobbys.length;i++) {
				//System.out.println(hobbys[i]);
				out.println(hobbys[i]); //System을 넣으면 콘솔창에 찍어주고, 빼면 웹화면에 보여준다.
				
			}
		} else {
			out.println("취미 선택 없음");
		}
	%>
	
	<br>
	자기소개 : <%=memberIntro %>
</body>
</html>