<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<c:set var="contest" value="${contest}" />

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
						<form method="post" name="modifyForm" id="modifyForm" action="contestModify" enctype="multipart/form-data">
						<div class="row">
							<div class="col-5">
								<img id="image" class="card-img-top"
											src="<%=request.getContextPath()%>/getPicture.do?path=${contest.uploadpath}&filename=${contest.filename}"
											onerror="this.onerror=null; this.src='<%=request.getContextPath()%>/resources/template/img/support/contest/공모전11.png';"
											alt="공모전이미지" style="width: 350px;"/>
							</div>
							<div class="col-7">
								<div class="form-group">
									<label for="ct"><b>공모전 작성일자</b> </label> 
									<input type="hidden" name="conNo" value="${contest.conNo }"/>
									<input type="text"
										id="conDate" name="conDate"
										value="<fmt:formatDate value="${contest.conDate}" pattern="yyyy-MM-dd" />"
										class="form-control" readonly>
								</div>
								<div class="form-group">
									<label for="ct"><b>공모전 명</b> </label> <input type="text"
										id="conTitle" name="conTitle" value="${contest.conTitle}"
										class="form-control" >
								</div>
								<div class="form-group">
									<label for="cc"><b>공모 내용</b> </label> <input type="text"
										id="conContent" name="conContent"
										value="${contest.conContent}" class="form-control" >
								</div>
								<div class="form-group">
									<label for="contestField"><b>공모 분야</b></label>
									<input type="text" id="conField" name="conField"
										value="${contest.conField}" class="form-control" >
								</div>
								<div class="row">
									<div class="col-6">
										<div class="form-group">
											<label for="cs"><b>공모시작일자</b> </label> <input type="date"
												id="conSdate" name="conSdate"
												value="<fmt:formatDate value="${contest.conSdate}" pattern="yyyy-MM-dd" />"
												class="form-control" >
										</div>
									</div>
									<div class="col-6">
										<div class="form-group">
											<label for="cs"><b>공모마감일자</b> </label> <input type="date"
												id="conEdate" name="conEdate"
												value="<fmt:formatDate value="${contest.conEdate}" pattern="yyyy-MM-dd" />"
												class="form-control" >
										</div>
									</div>
								</div>
								<div class="form-group" style="margin-top: 20px;">
									<label for="ce"><b>시상내용</b> </label> <input type="text"
										id="conAward" name="conAward" value="${contest.conAward}"
										class="form-control" >
								</div>
								<div class="form-group mb-0">
                                    <label class="form-label">첨부파일</label>
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="customFile">
                                        <label class="custom-file-label" for="customFile"><!-- 첨부파일자리 --></label>
                                    </div>
                                </div>
							</div>

						</div>
						</form>
					</div>

				</div>

			</div>

			<div class="demo" style="text-align: right;">
				<button type="button" id="modifyBtn"
					class="btn btn-success btn-pills waves-effect waves-themed">등 록</button>
				<button type="button" onclick="CloseWindow();"
					class="btn btn-dark btn-pills waves-effect waves-themed">취 소</button>
			</div>
		</div>
	</div>
</main>

<script>

 $("#modifyBtn").on("click",function() {
	 /* var param = $('#modifyForm').serialize();
		 param = param.replaceAll('-','/'); */
	 var conNo = ${contest.conNo};
	 
	  Swal.fire({
         icon: 'warning',
			title: "수정하시겠습니까?",
         type: "success",
         showCancelButton: true,
         confirmButtonText: "OK"
	}).then(function(result){ 
	 		$('#modifyForm').submit();
	 		
	})/* .then(function(){
		
	Swal.fire({
		icon: 'success',
		title: '프로그램이 수정되었습니다.',
		showConfirmButton: false,
		timer: 1500
	}).then(function(){
		opener.location.replace(opener.location.href);
	})
	}) */
		 /* $.ajax({
				type:"POST",
				url:"contestModify.do",
				data:param,
				//contentType: "application.json; charset=utf-8",
				dataType:"text",
				success:(data)=>{
					//alert("수정성공");
					Swal.fire({
							icon: 'success',
							title: '프로그램이 수정되었습니다.',
							showConfirmButton: false,
							timer: 1500
					}).then(function(){
					location.replace("contestDetail.do?conNo=" + conNo);
					opener.location.replace(opener.location.href);
					});
					
				},
				error:(request,status,error)=>{
					
					console.log("failed ajax, code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
		}); 
	} */
}); 

</script>


