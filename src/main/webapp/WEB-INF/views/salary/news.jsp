<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="newsList" value="${dataMap.newsList }" />


<html lang="en">


<body class="mod-bg-1 mod-nav-link ">


	<main id="js-page-content" role="main" class="page-content">
	<ol class="breadcrumb page-breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0);"></a></li>
		<li class="position-absolute pos-top pos-right d-none d-sm-block"></li>
	</ol>
	<div class="row justify-content-center">
		<div class="col-xl-10">
			<div id="panel-1" class="panel">
				<div class="panel-hdr">
					<h2>
						연봉뉴스 <span class="fw-300"></span>
					</h2>
				</div>
				<c:forEach items="${newsList}" var="news">
				<div class="row" onclick="location.href='detail.do?newsNo=${news.newsNo}&from=list'" style="cursor:pointer;">
					<div class="col-md-3 pt-3 pl-5 pb-3" style="width:150px; height:150px;">
						<img id="image" style="display: block; width: auto; height: 100%; "
								src="http://localhost/ddit/getPicture.do?path=${news.uploadpath}&filename=${news.filename}"
								onerror="this.onerror=null; this.src='<%=request.getContextPath()%>/resources/images/희망연봉(썸).png';"
								alt="대체 이미지가 로드되지 않았습니다." />
					</div>
					<div class="col-md-9 ">
						<div class="mt-3">
							<h3>
								<b>${news.newsTitle}</b> 
							</h3>
						</div> 
						<div class="mt-4" style="font-size: 16px;">${news.newsOneContent }</div>  
						<div class="row mt-4">
							 <div class="ml-3 " style="font-size: 14px; color:rgb(8,197,167)" id="newsSdate"><b>Log4Job</b> </div> 
								<div class="ml-3">${news.newsSdate } </div>
								
						</div>
							<span class=""
								style="position: relative; left: 80%; font-size: 14px;">
								조회수  ${news.newsCnt }</span>
					</div>
				</div>
				<hr width="90%" style="border-bottom: solid 1px #c7c6c6;"/>
				</c:forEach>
			</div>
		</div>
	</div>
</main>

</body>


