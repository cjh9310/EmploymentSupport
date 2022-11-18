<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<c:set var="supportMap" value="${supportMap.supportList }" />
<c:set var="activityConMap" value="${activityConMap.activityListCon }" />
<c:set var="activityMenMap" value="${activityMenMap.activityListMen }" />
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />

<style>
.panel-content {
	width: 100%;
	height: 455px;
	overflow: hidden;
}
</style>

<!-- END Page Header -->
<!-- BEGIN Page Content -->
<!-- the #js-page-content id is needed for some plugins to initialize -->
<main id="js-page-content" role="main" class="page-content">
<!-- 멘토링 & 공모전시작! -->
<div class="row">
	<div class="col-xl-6">
		<div id="panel" class="panel">
			<div class="panel-hdr">
				<h2>멘토링 내역</h2>
			</div>
			<div class="panel-container show">
				<div class="panel-content">
					<!-- <h5 class="frame-heading">멘토링내역리스트테이블</h5> -->
					<div class="frame-wrap" style="text-align: center;">
						<table class="table table-hover m-0">
							<thead class="bg-primary-700">
								<tr>
									<th>No.</th>
									<th>지원일자</th>
									<th>멘토링명</th>
									<th>프로그램 시작일자</th>
									<th>프로그램 종료일자</th>
									<th>멘토링 진행상황</th>
									<th>가산점</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty activityMenMap }">
									<tr>
										<td colspan="7"><strong>참여하신 멘토링내역이 없습니다.</strong></td>
								</c:if>
								<c:forEach items="${activityMenMap }" var="mentoring">
									<!--  <tr style="cursor:pointer;" onclick="openWindow('supportDetail.do?from=list&supNo=${support.supNo }','상담신청 상세보기', 800,700);">-->
									<tr style="cursor: pointer;">
										<c:set var="count" value="${count + 1}" />
										<th scope="row">${count }</th>
										<td><fmt:formatDate value="${mentoring.actDate }"
												pattern="yyyy-MM-dd" /></td>
										<td>${mentoring.menTitle }</td>
										<td><fmt:formatDate value="${mentoring.menSdate }"
												pattern="yyyy-MM-dd" /></td>
										<td><fmt:formatDate value="${mentoring.menEdate }"
												pattern="yyyy-MM-dd" /></td>
										<td><c:if test="${mentoring.actStatus eq 0 }">진행중 </c:if>
											<c:if test="${mentoring.actStatus eq 1 }">프로그램 종료 </c:if> 
										</td>
										<td>
											<c:if test="${mentoring.actScore eq 0 }"> 0 </c:if>
											<c:if test="${mentoring.actScore eq 1 }"> 1점 </c:if> 
										</td>
									</tr>
								</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-6">
		<div id="panel" class="panel">
			<div class="panel-hdr">
				<h2>공모전 내역</h2>
			</div>
			<div class="panel-container show">
				<div class="panel-content">
					<!-- <h5 class="frame-heading">공모전 내역테이블</h5> -->
					<div class="frame-wrap" style="text-align: center;">
						<table class="table table-hover m-0">
							<thead class="bg-primary-700">
								<tr>
									<th>No.</th>
									<th>지원일자</th>
									<th>공모전명</th>
									<th>프로그램 시작일자</th>
									<th>프로그램 종료일자</th>
									<th>공모전 진행상황</th>
									<th>수상내역</th>
									<th>가산점</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty activityConMap }">
									<tr>
										<td colspan="7"><strong>참여하신 공모전내역이 없습니다.</strong></td>
								</c:if>
								<c:forEach items="${activityConMap }" var="contest">
									<!--  <tr style="cursor:pointer;" onclick="openWindow('supportDetail.do?from=list&supNo=${support.supNo }','상담신청 상세보기', 800,700);">-->
									<tr style="cursor: pointer;">
										<c:set var="count1" value="${count1 + 1}" />
										<th scope="row">${count1 }</th>
										<td><fmt:formatDate value="${contest.actDate }"
												pattern="yyyy-MM-dd" /></td>
										<td>${contest.conTitle }</td>
										<td><fmt:formatDate value="${contest.conSdate }"
												pattern="yyyy-MM-dd" /></td>
										<td><fmt:formatDate value="${contest.conEdate }"
												pattern="yyyy-MM-dd" /></td>
										<td>
											<c:if test="${contest.actStatus eq 0 }">접수완료 </c:if>
											<c:if test="${contest.conEdate < now }">심사중 </c:if> 
											<c:if test="${contest.actStatus eq 1 }">심사완료 </c:if> 
										</td>
										<td>
											<c:if test="${contest.actScore eq 0 }"> - </c:if>
											<c:if test="${contest.actScore eq 1 }">장려상 </c:if> 
											<c:if test="${contest.actScore eq 2 }">최우수상 </c:if> 
											<c:if test="${contest.actScore eq 3 }">대상 </c:if> 
										</td>
										<td>
											<c:if test="${contest.actScore eq 0 }"> 0 </c:if>
											<c:if test="${contest.actScore eq 1 }"> 1점 </c:if> 
											<c:if test="${contest.actScore eq 2 }"> 2점 </c:if> 
											<c:if test="${contest.actScore eq 3 }"> 3점 </c:if> 
										</td>
										
									</tr>
								</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-12">
		<!--Table small-->
		<div id="panel" class="panel">
			<div class="panel-hdr">
				<h2>상담신청내역</h2>
			</div>
			<div class="panel-container show">
				<div class="panel-content">
					<!-- <h5 class="frame-heading">상담신청내역테이블</h5> -->
					<div class="frame-wrap" style="text-align: center;">
						<table class="table table-hover m-0">
							<thead class="bg-primary-700">
								<tr>
									<th>No</th>
									<th>작성일</th>
									<th>상담유형</th>
									<th>제목</th>
									<th>상담진행상황</th>
									<th>담당상담사</th>
									<th>첨부파일</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty supportMap }">
									<tr>
										<td colspan="7"><strong>신청하신 상담내역이 없습니다.</strong></td>
								</c:if>
								<c:forEach items="${supportMap }" var="support"
									varStatus="idxrow">
									<!--  <tr style="cursor:pointer;" onclick="openWindow('supportDetail.do?from=list&supNo=${support.supNo }','상담신청 상세보기', 800,700);">-->

									<tr style="cursor: pointer;"
										onclick="OpenWindow('supportDetail.do?from=support&supNo=${support.supNo}','상담신청 상세보기', 650,730);">
										<%-- <th scope="row">${support.supNo }</th> --%>
										<c:set var="count2" value="${count2 + 1}" />
										<th scope="row">${count2 }</th>
										<td><fmt:formatDate value="${support.supDate }"
												pattern="yyyy-MM-dd" /></td>
										<td>${youme.index }<c:if test="${support.supType eq 0 }">진로상담 </c:if>
											<c:if test="${support.supType eq 1 }">취업상담 </c:if> <c:if
												test="${support.supType eq 2 }">프로그램상담 </c:if>
										</td>
										<td>${support.supTitle }</td>
										<td><c:if test="${support.supProcess eq 0 }">상담접수중 </c:if>
											<c:if test="${support.supProcess eq 1 }">상담중 </c:if> <c:if
												test="${support.supProcess eq 2 }">상담완료 <fmt:formatDate
													value="${support.supEdate }" pattern="yyyy-MM-dd" />
											</c:if> <c:if test="${support.supProcess eq 3 }">상담반려<span class="text-danger">(상담내용불일치)</span> </c:if></td>
										<td>
										<c:if test="${support.counselorName eq 0 }">박혜인 상담사 </c:if>
										<c:if test="${support.counselorName eq 1 }">이수진 상담사 </c:if>
										<c:if test="${support.counselorName eq 2 }">김민지 상담사 </c:if>
										<c:if test="${support.counselorName eq 3 }">김채원 상담사 </c:if>
										</td>
										<td>첨부파일와야대...</td>
									</tr>
								</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</main>

