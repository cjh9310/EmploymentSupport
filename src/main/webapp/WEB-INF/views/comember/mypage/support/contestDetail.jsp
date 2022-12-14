<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<c:set var="contest" value="${contest }"></c:set>
<c:set var="now" value="<%=new java.util.Date()%>" />

<main id="js-page-content" role="main" class="page-content">
	

	<div></div>
	<div class="row">

		<div class="col-xl-12">
			<div id="panel-1" class="panel">
				<div class="panel-hdr">

					<b>공모전 상세보기</b>

					<div class="panel-toolbar"></div>
				</div>
				<div class="panel-container show">
					<div class="panel-content">
						<div class="row">
							<div class="col-5">
								<!-- <img
									src="/ddit/resources/template/img/support/contest/공모전11.png"
									alt="공모전이미지" style="width: 350px;" > -->
								<img id="image" class="card-img-top"
											src="<%=request.getContextPath()%>/getPicture.do?path=${contest.uploadpath}&filename=${contest.filename}"
											onerror="this.onerror=null; this.src='<%=request.getContextPath()%>/resources/template/img/support/contest/공모전11.png';"
											alt="공모전이미지" style="width: 350px;"/>
							</div>
							<div class="col-7">
								<div class="form-group">
									<label for="ct"><b>공모전 작성일자</b> </label> <input type="text"
										id="conDate" name="conDate"
										value="<fmt:formatDate value="${contest.conDate}" pattern="yyyy-MM-dd" />"
										class="form-control" readonly>
								</div>
								<div class="form-group">
									<label for="ct"><b>공모전 명</b> </label> <input type="text"
										id="conTitle" name="conTitle" value="${contest.conTitle}"
										class="form-control" readonly>
								</div>
								<div class="form-group">
									<label for="cc"><b>공모 내용</b> </label> <input type="text"
										id="conContent" name="conContent"
										value="${contest.conContent}" class="form-control" readonly>
								</div>
								<div class="form-group">
									<label for="cf"><b>공모 분야</b> </label> <label for="contestField">${contest.conField }</label>
									<input type="text" id="conField" name="conField"
										value="${contest.conField}" class="form-control" readonly>
								</div>
								<div class="row">
									<div class="col-6">
										<div class="form-group">
											<label for="cs"><b>공모시작일자</b> </label> <input type="date"
												id="conSdate" name="conSdate"
												value="<fmt:formatDate value="${contest.conSdate}" pattern="yyyy-MM-dd" />"
												class="form-control" readonly>
										</div>
									</div>
									<div class="col-6">
										<div class="form-group">
											<label for="cs"><b>공모마감일자</b> </label> <input type="date"
												id="conEdate" name="conEdate"
												value="<fmt:formatDate value="${contest.conEdate}" pattern="yyyy-MM-dd" />"
												class="form-control" readonly>
										</div>
									</div>
								</div>
								<div class="form-group" style="margin-top: 20px;">
									<label for="ce"><b>시상내용</b> </label> <input type="text"
										id="conAward" name="conAward" value="${contest.conAward}"
										class="form-control" readonly>
								</div>
								<div>
									<div class="card card-outline card-success" style="margin-bottom: 20px;">
										<div class="card-header">
											<b>첨부파일 다운로드</b>
										</div>
										<div class="card-footer">
											<div class="row" id="attachList">
												<!-- 첨부파일 썸네일 -->
												<c:forEach items="${contest.attachList }" var="attach">
													<div class="col-md-4 col-sm-4 col-xs-12"  style="cursor:pointer;"
													 onclick="location.href='<%=request.getContextPath()%>/attach/getFile.do?attNo=${attach.attNo }';">
														<div class="info-box">	
															<span class="info-box-icon bg-yellow">
																<i class="fa fa-copy"></i>
															</span>
															<div class="info-box-content">
																<span class ="info-box-text">
																</span>
																<span class ="info-box-number">${attach.filename }</span>
															</div>
														</div>
													</div>			
												</c:forEach>
											</div>
										</div>
									</div>

								</div>
							</div>

						</div>

					</div>

				</div>

			</div>

			<div class="demo" style="text-align: right;">
				
					<button type="button" id="modifyBtn"
							onclick="location.href='contestModifyForm.do?conNo=${contest.conNo}';"
							class="btn btn-warning btn-pills waves-effect waves-themed">수 정</button>
				
				<button type="button" id="deleteBtn"
					class="btn btn-danger btn-pills waves-effect waves-themed">삭 제</button>
				<button type="button" id="listBtn" onclick="CloseWindow();"
					class="btn btn-dark btn-pills waves-effect waves-themed">닫 기</button>
			</div>
		</div>
	</div>
</main>
<script>
$('#deleteBtn').on('click',()=>{
	var conNo = ${contest.conNo};
	//alert(conNo);
	
	 Swal.fire({
         icon: 'warning',
			title: "프로그램을 삭제하시겠습니까?",
         type: "success",
         showCancelButton: true,
         confirmButtonText: "OK"
	}).then(function(result){ 
		if(result.value){
	
	
	$.ajax({
		type:"post" ,
		url: "/ddit/comember/mypage/contestRemove?conNo="+conNo,
		data: conNo,
		
		//contentType : "application/json; charset=utf-8",
		dataType:"text",
		success:(rslt)=>{
			Swal.fire({
				icon: 'success',
				title: '프로그램이 삭제되었습니다.',
				showConfirmButton: false,
				timer: 1500
		}).then(function(){
			
			window.close();
			window.opener.location.reload();
		})
		},
		error:(request,status,error)=>{
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
	}
});
});
/* 	//alert("누름");
	var conNo = ${contest.conNo};
	Swal.fire({
                icon: 'warning',
				title: "프로그램을 삭제하시겠습니까?",
                type: "success",
                showCancelButton: true,
                confirmButtonText: "OK"
    }).then(function(result){
		
		location.href = "contestRemove.do?conNo=" + conNo;
		
		Swal.fire({
				icon: 'success',
				title: '프로그램이 삭제되었습니다.',
				showConfirmButton: false,
				timer: 1500
		}).then(function(){
			window.open("about:blank", "_self").close();
			window.opener.location.reload();
		})
		
    	})
}); */
</script>

<script>
	$(function(){
		<c:if test="${contest.conEdate < now}">
			$("#modifyBtn").hide();
		</c:if>
	});
</script>

<c:if test="${from eq 'modify'}" >
<script>
	
	Swal.fire({
	    icon: 'success',
		title: "수정되었습니다.",
	    type: "success",
	    showCancelButton: false,
	    confirmButtonText: "OK"
		
	});
</script>
</c:if>