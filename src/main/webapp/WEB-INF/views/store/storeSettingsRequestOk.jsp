<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${cnt == 0}">
	<script>
		alert("정보 수정 요청 실패");
		history.back();
	</script>
</c:if>
<c:if test="${cnt == 1 }">
	<script>
		alert("정보 수정 요청 성공");
		// location.href = "";
	</script>
</c:if>
<c:if test="${cnt == 101 }">
	<script>
		alert("이미지 파일로 업로드 하세요");
		history.back();
	</script>
</c:if>
<c:if test="${cnt == 500 }">
	<script>
		alert("이미지 업로드 실패");
		history.back();
	</script>
</c:if>