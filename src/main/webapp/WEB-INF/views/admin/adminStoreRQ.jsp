<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<c:choose>
	<c:when test="${empty dto }">
	<script>
		alert("해당 정보가 삭제되거나 없습니다");
		history.back();
	</script>
	</c:when>
	<c:otherwise>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>매장가입 승인</title>

    <!-- Custom fonts for this template -->
  <link href="${pageContext.request.contextPath}/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template / Admin 페이지 전반적인 레이아웃 css -->
  <link href="${pageContext.request.contextPath}/admin/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page / 테이블에 관한 css-->
  <link href="${pageContext.request.contextPath}/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

  <!-- 정보 form -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/util.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/main.css">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sideㄴbar-brand d-flex align-items-center justify-content-center" href="user_user.html">
      
            <img src="img/logo2.png" style="width: 100px; margin-top: 30px;">
      </a>

      <!-- Nav Item -->
      <li class="nav-item">
        <a class="nav-link" href="adminMember.nmj"> 
          <i class="fas fa-fw fa-cog"></i>
          <span>일반회원관리</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="adminStore.nmj"> 
          <i class="fas fa-fw fa-cog"></i>
          <span>매장회원관리</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="adminCommunity.nmj"> 
          <i class="fas fa-fw fa-cog"></i>
          <span>커뮤니티관리</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="adminCS.nmj"> 
          <i class="fas fa-fw fa-cog"></i>
          <span>Customer Service</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->


    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800" style="margin-top: 30px; margin-bottom: 30px; font-size: 1.5em;">리뷰 상세 보기</h1>
            
          <div class="card shadow mb-4">

            <div class="card-body">
              
            <div style="text-align:left;">
             
			<u><strong>매장종류</strong></u><br> 
				<c:choose>
					<c:when test="${dto.store_type == 1 }">
						놀자
					</c:when>
					<c:when test="${dto.store_type == 2 }">
						먹자
					</c:when>
					<c:otherwise>
						자자
					</c:otherwise>
				</c:choose>
			<br><br>
			<u><strong>매장이름</strong></u><br> ${dto.store_name }  <br><br>
			<u><strong>매장주소</strong></u><br> ${dto.store_address } <br><br>
			<u><strong>매장연락처</strong></u><br> ${dto.store_tel }<br><br>
			<u><strong>매장영업시간</strong></u><br> ${dto.store_hours }<br><br>
			<u><strong>매장설명</strong></u><br> ${dto.store_content }<br><br>
			<u><strong>매장사업자번호</strong></u><br> ${dto.store_regNum }<br><br>
			<c:choose>
	             <c:when test='${dto.store_regImg_org == null || fn:trim(dto.store_regImg_org) == ""}'>
	             <img src="${pageContext.request.contextPath}/img/store_regNum/store_regNumDefault.png" style="width:300px">
	             </c:when>
	             <c:otherwise>
	             <img src="${pageContext.request.contextPath}/img/store_regNum/${dto.store_regImg_org }" style="width:300px">
	             </c:otherwise>
	           </c:choose>
	           <br><br>
			<br>
			</div>

	
	<button class="btn btn-outline-primary" onclick="location.href='adminAccept.nmj?request_uid=${request_uid }&mb_uid=${dto.mb_uid }'">승인하기</button>
	<button class="btn btn-outline-success" onclick="location.href='adminCSreject.nmj?request_uid=${request_uid }'">거절하기</button>
	<br><br>
	<button class="contact100-form-btn" onclick="location.href='adminCS.nmj'">목록보기</button>
</div>
</div>

        </div>
        <!-- /.container-fluid -->

      </div>

      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Let's Play, Eat and Sleep 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>


  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/admin/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${pageContext.request.contextPath}/admin/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="${pageContext.request.contextPath}/admin/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="${pageContext.request.contextPath}/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="${pageContext.request.contextPath}/admin/js/demo/datatables-demo.js"></script>

</body>

</html>

	</c:otherwise>
</c:choose>
