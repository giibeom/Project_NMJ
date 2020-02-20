<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    

<c:choose>
	<c:when test="${result == 0 }">
		<script>
			alert("수정에 실패했습니다.");
			history.back();
		</script>  
	</c:when>
	<c:when test="${result == 1 }">
		<script>
			alert("수정이 완료되었습니다.");
			location.href = "cusMyPage.nmj";
		</script>
	</c:when>
</c:choose>