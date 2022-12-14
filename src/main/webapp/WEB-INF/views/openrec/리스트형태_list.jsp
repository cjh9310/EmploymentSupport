<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="openRecList" value="${dataMap.openRecList}" />

<style>
.custom-scroll {
	width: 100%;
	height: 690px;
	overflow: auto;
}

.openrec-search {
	width: 100%;
	height: 250px;
}

.search-panel {
	height: 250px;
}

.search-bar {
	height: 40px;
}
</style>
<main id="js-page-content" role="main" class="page-content">
<div class="card mb-g">
	<div class="openrec-search panel-conteiner">
		<div class="row w-100 p-0 m-0 h-100">
			<div class="col-xl-1 p-2 m-0 row" style="background-size: cover;">
				<img
					src="<%=request.getContextPath()%>/resources/template/img/openrec_detail_logo.png"
					alt="공채 상세검색" style="display: block; height: 100%; width: auto;" />
			</div>
			<div class="col-xl-7 p-0 m-0 row">
				<div class="col-xl-2 p-2">
					<select style="height: 234px;" multiple=""
						class="search-scroll custom-scrollbar form-control firstBtn">
						<option style="font-size: 1.5em;" value="서비스업">서비스업</option>
						<option style="font-size: 1.5em;" value="제조·화학">제조·화학</option>
						<option style="font-size: 1.5em;" value="IT·웹·통신">IT·웹·통신</option>
						<option style="font-size: 1.5em;" value="은행·금융업">은행·금융업</option>
						<option style="font-size: 1.5em;" value="미디어·디자인">미디어·디자인</option>
						<option style="font-size: 1.5em;" value="교육업">교육업</option>
						<option style="font-size: 1.5em;" value="의료·제약·복지">의료·제약·복지</option>
						<option style="font-size: 1.5em;" value="판매·유통">판매·유통</option>
						<option style="font-size: 1.5em;" value="건설업">건설업</option>
						<option style="font-size: 1.5em;" value="기관·협회">기관·협회</option>
					</select>
				</div>
				<div class="search-panel col-xl-2 p-2">
					<select style="height: 234px;" multiple=""
						class="search-scroll custom-scrollbar form-control firstBtn">
						<option style="font-size: 1.5em;" value="서구">대전 서구</option>
						<option style="font-size: 1.5em;" value="중구">대전 중구</option>
						<option style="font-size: 1.5em;" value="유성구">대전 유성구</option>
						<option style="font-size: 1.5em;" value="대덕구">대전 대덕구</option>
						<option style="font-size: 1.5em;" value="동구">대전 동구</option>
					</select>
				</div>
				<div class="search-panel col-xl-2 col-md-1 p-2">
					<select style="height: 234px;" multiple=""
						class="search-scroll custom-scrollbar form-control firstBtn">
						<option style="font-size: 1.5em;" value="관계없음">관계없음</option>
						<option style="font-size: 1.5em;" value="1년">1년차</option>
						<option style="font-size: 1.5em;" value="2년">2년차</option>
						<option style="font-size: 1.5em;" value="3년">3년차</option>
						<option style="font-size: 1.5em;" value="4년">4년차</option>
						<option style="font-size: 1.5em;" value="5년">5년차</option>
						<option style="font-size: 1.5em;" value="6년">6년차</option>
						<option style="font-size: 1.5em;" value="7년">7년차</option>
						<option style="font-size: 1.5em;" value="8년">8년차</option>
						<option style="font-size: 1.5em;" value="9년">9년차</option>
						<option style="font-size: 1.5em;" value="10년차">10년차</option>
					</select>
				</div>
				<div class="search-panel col-xl-2 p-2">
					<select style="height: 234px;" style="height:234px;" multiple=""
						class="search-scroll custom-scrollbar form-control firstBtn">
						<option style="font-size: 1.5em;" value="학력무관">학력무관</option>
						<option style="font-size: 1.5em;" value="대졸(4년)">대졸(4년)</option>
						<option style="font-size: 1.5em;" value="대졸(2~3년)">대졸(2~3년)</option>
						<option style="font-size: 1.5em;" value="고졸">고졸</option>
						<option style="font-size: 1.5em;" value="대학원">대학원</option>
					</select>
				</div>
				<div class="search-panel col-xl-2 p-2">
					<select style="height: 234px;" multiple=""
						class="search-scroll custom-scrollbar form-control firstBtn">
						<option style="font-size: 1.5em;" value="대기업">대기업</option>
						<option style="font-size: 1.5em;" value="중견기업">중견기업</option>
						<option style="font-size: 1.5em;" value="중소기업">중소기업</option>
						<option style="font-size: 1.5em;" value="강소기업">강소기업</option>
						<option style="font-size: 1.5em;" value="기타">기타</option>
					</select>
				</div>
				<div class="search-panel col-xl-2 p-2">
					<select style="height: 234px;" multiple=""
						class="search-scroll custom-scrollbar form-control firstBtn">
						<option style="font-size: 1.5em;" value="">옵션 미지정</option>
						<option style="font-size: 1.5em;" value="">옵션 미지정</option>
						<option style="font-size: 1.5em;" value="">옵션 미지정</option>
						<option style="font-size: 1.5em;" value="">옵션 미지정</option>
						<option style="font-size: 1.5em;" value="">옵션 미지정</option>
						<option style="font-size: 1.5em;" value="">옵션 미지정</option>
						<option style="font-size: 1.5em;" value="">옵션 미지정</option>
						<option style="font-size: 1.5em;" value="">옵션 미지정</option>
						<option style="font-size: 1.5em;" value="">옵션 미지정</option>
						<option style="font-size: 1.5em;" value="">옵션 미지정</option>
						<option style="font-size: 1.5em;" value="">옵션 미지정</option>
						<option style="font-size: 1.5em;" value="">옵션 미지정</option>
						<option style="font-size: 1.5em;" value="">옵션 미지정</option>
						<option style="font-size: 1.5em;" value="">옵션 미지정</option>
					</select>
				</div>
			</div>
			<div class="col-xl-4 p-0 m-0 row border">
				<%-- <div id="carouselExampleInterval" style="padding: 0px;"
					class="carousel slide" data-ride="carousel">
					<div class="carousel-inner">
						<c:forEach items="${openRecList}" var="openRec" varStatus="status">
							<c:choose>
								<c:when test="${status.first}">
									<div class="carousel-item active" data-interval="2000">
								</c:when>
								<c:otherwise>
									<div class="carousel-item" data-interval="2000">
								</c:otherwise>
							</c:choose>
							<div class="card border m-auto m-lg-0">
								<img src="${openRec.openLogo}" class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title fw-700">${openRec.openConm}</h5>
									<p class="card-text">${openRec.openTitle}</p>
									<p class="card-text">${openRec.openEdate}까지</p>
									<p class="card-text">${openRec.openCarnm}
										${openRec.openEdunm}</p>
									<p class="card-text">${openRec.openRegion}</p>
									<a href="" class="card-link fw-700">${openRec.openConm}
										지원하러가기</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div> --%>
		</div>
	</div>
	</div>
</div>
<div class="alert alert-info fs-lg p-0" style="margin-bottom:24px;">
	<div class="input-group p-0 m-0 rounded-top">
		<input class="openrec-search__field" type="search" tabindex="0" 
                  autocomplete="off" autocorrect="off" autocapitalize="none" spellcheck="false" 
                  role="searchbox" aria-autocomplete="list" aria-controls="select2-single-placeholder-results" 
                  aria-activedescendant="select2-single-placeholder-result-hm0c-HI">
		<!-- <input type="text"
			   class="form-control form-control-lg shadow-inset-2 m-0"
			   id="accordion-openrec_filter"
			   placeholder="원하는 채용공고를 다양한 키워드로 검색해보세요" /> -->
		<div class="input-group-append">
			<div class="card" style="width:400px;">
				
			</div>
			<button class="btn btn-outline-default waves-effect waves-themed" type="button" id="inputGroupFileAddon04">검색</button>
			<button class="btn btn-outline-default waves-effect waves-themed" type="button" id="inputGroupFileAddon04">카드 형태로 보기</button>
			<button class="btn btn-outline-default waves-effect waves-themed" type="button" id="inputGroupFileAddon04">리스트 형태로 보기</button>
		</div>
	</div>
</div>
<div class="card mb-g p-0">
	<div class="card-body p-0">
		<div class="custom-scroll">
			<div class="dataload-scroll panel-content" id="openrec" style="margin-right:10px;">
				<div class="border bg-light rounded-top">
					<div id="accordion-openrec" name="openrec"
						class="accordion accordion-hover accordion-clean js-list-filter">
						<c:forEach items="${openRecList}" var="openRec" varStatus="vs">
							<div
								class="card border-top-left-radius-0 border-top-right-radius-0">
								<div class="card-header">
									<a href="javascript:void(0);" class="card-title collapsed"
										data-toggle="collapse"
										data-target="#accordion-openrec-${openRec.openSeqno}"
										aria-expanded="false"
										data-filter-tags="${openRec.openConm} ${openRec.openTitle} ${openRec.openRegion}">
										<table class="">
											<tr>
												<td style="width:600px;">${openRec.openConm}</td>
												<td>${openRec.openRegion}</td>
											</tr>
											<tr>
												<td rowspan="2" style="width:600px;">${openRec.openTitle}</td>
											</tr>
										</table>
										<span class="ml-auto"> <span
											class="collapsed-reveal"> <i
												class="fal fa-chevron-up fs-xl"></i>
										</span> <span class="collapsed-hidden"> <i
												class="fal fa-chevron-down fs-xl"></i>
										</span>
									</span>
									</a>
								</div>
								<div id="accordion-openrec-${openRec.openSeqno}" class="collapse"
									data-parent="#accordion-openrec" style="">
									<div class="card-body">${openRec.openContent}</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<span class="filter-message js-filter-message"></span>
				</div>
			</div>
		</div>
	</div>
</div>
