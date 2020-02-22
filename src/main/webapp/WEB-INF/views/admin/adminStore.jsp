<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>매장회원관리</title>

  <!-- Custom fonts for this template -->
  <link href="${pageContext.request.contextPath}/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template / Admin 페이지 전반적인 레이아웃 css -->
  <link href="${pageContext.request.contextPath}/admin/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page / 테이블에 관한 css-->
  <link href="${pageContext.request.contextPath}/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

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
          <h1 class="h3 mb-2 text-gray-800" style="margin-top: 30px; margin-bottom: 30px; font-size: 1.5em;">매장회원관리</h1>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">

            <div class="card-body">
            
            <form name="frm" action="adminSearchStore.nmj" method="post">
		<select name="searchOption">
		  <option value="1">매장이름</option>
		  <option value="2">아이디</option>
		</select>
		<input type="text" name="search"/>
		<button type="submit">검색</button>
		</form>
		<br>
            <button onclick="location.href='adminSelectStore.nmj?store_type=1'">놀자</button>
            <button onclick="location.href='adminSelectStore.nmj?store_type=2'">먹자</button>
            <button onclick="location.href='adminSelectStore.nmj?store_type=3'">자자</button>
            <br><br>
            <div class="table-responsive">
                      
	<c:choose>
	<c:when test="${empty list || fn.length(list) == 0 }">
		데이터가 없습니다<br>
	</c:when>
	
	<c:otherwise>
          <table class="table table-bordered" id="dataTable">
          <thead>
          <tr>
            <th>매장종류</th>
            <th>매장명</th>
            <th>이름</th>
            <th>아이디</th>
            <th>연락처</th>
            <th>이메일</th>
            <th>회원등록일</th>
            <th>회원삭제</th>
          </tr>
          </thead>

	<tbody>
	<c:forEach var="dto" items="${list}">
		<tr>
			<c:choose>
				<c:when test="${dto.store_type == 1 }">
					<td>놀자</td>
				</c:when>
				<c:when test="${dto.store_type == 2 }">
					<td>먹자</td>
				</c:when>
				<c:otherwise>
					<td>자자</td>
				</c:otherwise>
			</c:choose>
			
			<td><a href="adminStoreInfo.nmj?mb_uid=${dto.mb_uid }">${dto.store_name }</a></td>
			<td>${dto.mb_name }</td>
			<td>${dto.mb_id }</td>
			<td>${dto.mb_tel }</td>
			<td>${dto.mb_email }</td>
			<td>${dto.mb_regDate }</td>
			<td><button onclick="location.href='deleteStoreMember.nmj?mb_uid=${dto.mb_uid}'">삭제</button></td>
		</tr>					
	</c:forEach>
	</tbody>
      </table>
    </c:otherwise>
</c:choose>
	</div>
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