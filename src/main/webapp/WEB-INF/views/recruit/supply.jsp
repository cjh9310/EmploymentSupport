<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="today" value="<%=new java.util.Date()%>" />
<c:set var="date">
<fmt:formatDate value="${today}" pattern="yyyy-MM-dd hh:mm:ss" />
</c:set>

<c:set var="eduMap" value="${eduMap}" />
<c:set var="eduList" value="${eduMap.eduList}" />

<c:set var="crrMap" value="${crrMap}" />
<c:set var="crrList" value="${crrMap.crrList}" />

<c:set var="cerMap" value="${cerMap}" />
<c:set var="cerList" value="${cerMap.cerList}" />

<c:set var="letMap" value="${letMap}" />
<c:set var="letterList" value="${letMap.letterList}" />
<c:set var="countOpenLetter" value="${letMap.countOpenLetter}" />

<style>
.panel-content {
	width: 100%;
	height: 431px;
}

.resume-area {
	width: 100%;
	height: 965px;
}

.detailForm_load {
	cursor: pointer;
}
</style>

<main id="js-page-content" role="main" class="page-content">
<div class="col-xl-12 col-lg-12 card mb-g">
	<div class="recruit-head panel-conteiner">
		<div class="row w-100 p-0 m-0 h-100">
			<table class="w-100">
				<tr>
					<td style="width:50px;">
						<div class='icon-stack display-3 flex-shrink-0'
							style="margin-left: 10px;">
							<c:choose>
								<c:when test="${recruit.recBookmark != null}">
									<button id="${recruit.recWantedno}" class="bookMark_btn"
										style="background-color: transparent; border: 0px;"
										type="button" value="${recruit.recBookmark}">
										<i name="recremove"
											class="fas fa-star icon-stack-1x opacity-100 color-warning-500"></i>
									</button>
								</c:when>
								<c:when test="${recruit.recBookmark == null}">
									<button name="recregist" id="${recruit.recWantedno}"
										class="bookMark_btn"
										style="background-color: transparent; border: 0px;"
										type="button" value="${recruit.recBookmark}">
										<i name="recregist"
											class="far fa-star icon-stack-1x opacity-100 color-warning-500"></i>
									</button>
								</c:when>
							</c:choose>
						</div>
					</td>
					<td>
						<h2 style="margin: 0px;">${recruit.coName} - ${recruit.recWantedtitle}  -  ???????????? ?????????</h2>
						</h2>
					</td>
					<td>
						<button type="button" onclick="rec_supply();"
							class="btn btn-md btn-outline-info waves-effect waves-themed w-100">
							????????????<span class="fas fa-arrow-alt-right mr-1"></span>
						</button>
					</td>
				</tr>
			</table>
			<%-- <table>
				<tr>
					<td colspan="1" rowspan="3"
						style="width: 45px; padding-right: 16px;">
						<div class='icon-stack display-3 flex-shrink-0'
							style="margin-left: 10px;">
							<c:choose>
								<c:when test="${recruit.recBookmark != null}">
									<button id="${recruit.recWantedno}" class="bookMark_btn"
										style="background-color: transparent; border: 0px;"
										type="button" value="${recruit.recBookmark}">
										<i name="recremove"
											class="fas fa-star icon-stack-1x opacity-100 color-warning-500"></i>
									</button>
								</c:when>
								<c:when test="${recruit.recBookmark == null}">
									<button name="recregist" id="${recruit.recWantedno}"
										class="bookMark_btn"
										style="background-color: transparent; border: 0px;"
										type="button" value="${recruit.recBookmark}">
										<i name="recregist"
											class="far fa-star icon-stack-1x opacity-100 color-warning-500"></i>
									</button>
								</c:when>
							</c:choose>
						</div>
					</h2></td>
				</tr>
				<tr>
					<td colspan="8" style="width: 1400px;">
						<h2 style="margin: 0px;">${recruit.coName}-
							${recruit.recWantedtitle} - ???????????? ?????????</h2>
						</h2>
						<button type="button" onclick="rec_supply()"
							class="btn btn-md btn-outline-info waves-effect waves-themed">
							????????????<span class="fas fa-arrow-alt-right mr-1"></span>
						</button>
					</td>
				</tr>
			</table> --%>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-xl-6 col-lg-6">
		<div class="row">
			<div class="col-lg-12 col-xl-12">
				<div id="panel-1" class="panel">
					<div class="panel-hdr">
						<h2>${recruit.coName} ?????? ?????????</h2>
						<div class="btn-group" id="js-demo-nesting" role="group"
							aria-label="Button group with nested dropdown">
							<button type="button"
								class="savePdf btn btn-xs btn-info waves-effect waves-themed">PDF???
								????????????</button>
						</div>
					</div>
					<div>
						<div class="col-xl-12 panel resume-area" style="padding: 0px;">
							<div class="custom-scroll">
								<div class="p-3" id="resume-area">
									<table class="table text-center" width="800">
										<thead>
											<tr>
												<th class="text-center border-top-0 fw-700" colspan="9"
													height="50"><font size="5">??? ??? ???</font></th>
											</tr>
										</thead>
										<tr>
											<td class="border p-0" rowspan="5"
												style="width: 126px; height: 176px;"><img
												style="display: block; width: 100%; height: auto;"
												src="<%=request.getContextPath()%>/member/getPicture.do?id=${loginUser.id}"
												onerror="this.onerror=null; this.src='<%=request.getContextPath() %>/resources/template/img/member_default.png';"
												alt="????????????" /></td>
										</tr>
										<tr>
											<th colspan="3"
												class="thead-themed text-center border fw-700">??? ???</th>
											<th colspan="3"
												class="thead-themed text-center border fw-700">??? ??? ??? ???</th>
											<th colspan="3" width="80"
												class="thead-themed text-center border fw-700">E-mail</th>
										</tr>
										<tr>
											<td colspan="3" class="border">${loginUser.name}</td>
											<td colspan="3" class="border">${loginUser.indBir}</td>
											<td colspan="3" class="border">${loginUser.email}</td>
										</tr>
										<tr>
											<th colspan="3" width="50"
												class="thead-themed text-center border fw-700">??? ??? ???</th>
											<td colspan="6"
												class="thead-themed text-center border fw-700">??????</td>
										</tr>
										<tr>
											<th class="border">${loginUser.tel}</th>
											<td class="border" colspan="8">${loginUser.indAddr}</td>
										</tr>
									</table>
									<div
										class="card-header py-2 d-flex align-items-center flex-wrap">
										<div class="card-title">??????</div>
									</div>
									<table class="table">
										<thead>
											<tr>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">????????????</th>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">?????????</th>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">?????????</th>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">??????</th>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">??????</th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${empty eduList}">
												<tr>
													<td class="text-center fw-700" colspan="5">????????? ?????? ?????????
														????????????.<br/><br/>???????????? ???????????? ????????? ???????????????.</td>
												</tr>
											</c:if>
											<c:forEach items="${eduList}" var="edu">
												<tr>
													<td class="text-center">${edu.eduDep}</td>
													<td class="text-center">${edu.eduName}</td>
													<td class="text-center">${edu.eduMajor}</td>
													<td class="text-center">${edu.eduScore}</td>
													<td class="text-center">
														<c:if test="${edu.eduStatus == 0}">
															<span class="badge badge-primary">${edu.strStatus}</span>
														</c:if> 
														<c:if test="${edu.eduStatus == 1}">
															<span class="badge badge-info">${edu.strStatus}</span>
														</c:if> 
														<c:if test="${edu.eduStatus == 2}">
															<span class="badge badge-success">${edu.strStatus}</span>
														</c:if>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div
										class="card-header py-2 d-flex align-items-center flex-wrap">
										<div class="card-title">??????</div>
									</div>
									<table class="table">
										<thead>
											<tr>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">??????</th>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">?????????</th>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">??????</th>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">??????</th>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">?????????</th>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">?????????</th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${empty crrList}">
												<tr>
													<td class="text-center fw-700" colspan="6">????????? ?????? ?????????
														????????????.<br/><br/>???????????? ???????????? ????????? ???????????????.</td>
												</tr>
											</c:if>
											<c:forEach items="${crrList}" var="crr">
												<tr>
													<td class="text-center">${crr.crrSector}</td>
													<td class="text-center">${crr.crrCorname}</td>
													<td class="text-center">${crr.crrJob}</td>
													<td class="text-center">${crr.crrPosition}</td>
													<td class="text-center"><fmt:formatDate
															value="${crr.crrSdate }" pattern="yyyy-MM-dd" /></td>
													<td class="text-center"><fmt:formatDate
															value="${crr.crrEdate }" pattern="yyyy-MM-dd" /></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<c:if test="${not empty cerList}">
									<div
										class="card-header py-2 d-flex align-items-center flex-wrap">
										<div class="card-title">?????????</div>
									</div>
									<table class="table">
										<thead>
											<tr>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">????????????</th>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">????????????</th>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">?????????</th>
												<th
													class="text-center border-top-0 table-scale-border-bottom fw-700">?????????</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${cerList}" var="cer">
												<tr>
													<td class="text-center">${cer.cerHost}</td>
													<td class="text-center">${cer.cerName}</td>
													<td class="text-center"><fmt:formatDate
															value="${cer.cerSdate }" pattern="yyyy-MM-dd" /></td>
													<td class="text-center"><c:if
															test="${cer.cerEdate == null}">
															<span class="badge badge-info">??????????????????</span>
														</c:if> <c:if test="${cer.cerEdate < today}">
															<span class="badge badge-danger"> ??????????????????</span>
														</c:if> <c:if test="${cer.cerEdate > today}">
															<fmt:formatDate value="${cer.cerEdate }"
																pattern="yyyy-MM-dd" />
														</c:if></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									</c:if>
									<div
										class="card-header py-2 d-flex align-items-center flex-wrap">
										<div class="card-title">???????????????</div>
									</div>
									<form method="post" id="recSupplyForm">	
										<table class="table" id="letter_table">
										</table>
										<input type="hidden" name="recWantedno" value="${recruit.recWantedno}" />
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-6 col-lg-6">
		<div>
			<div class="row">
				<div class="col-lg-12 col-xl-12">
					<div id="letManage">
						<div id="panel-1" class="panel">
							<div class="panel-hdr">
								<h2>???????????????</h2>
								<div class="panel-toolbar ml-2">
									<button type="button" onclick="manage_rendering('letManage')"
										class="btn btn-xs btn-info waves-effect waves-themed">
										??????????????? ????????????</button>
								</div>
							</div>
							<div>
								<div class="col-xl-12 panel panel-content" style="padding: 0px;">
									<div class="custom-scroll">
										<div class="p-3">
											<table class="table" id="letForm_section">
												<thead>
													<tr>
														<th class="text-center border-top-0 table-scale-border-bottom fw-700">??????</th>
														<th class="text-center border-top-0 table-scale-border-bottom fw-700">??????</th>
														<th class="text-center border-top-0 table-scale-border-bottom fw-700">????????????</th>
													</tr>
												</thead>
												<tbody>
													<c:if test="${empty letterList}">
														<tr>
															<td class="text-center fw-700" colspan="4">?????????
																?????????????????? ????????????.</td>
														</tr>
													</c:if>
													<c:forEach items="${letterList}" var="let">
														<tr>
															<td class="text-center">${let.letNo}</td>
															<td class="detailForm_load text-center" id="${let.letSeqno}" name="letDetailForm">${let.letTitle}</td>
															<td class="text-center">
																<button class="supply_add_let" id="${let.letSeqno}" type="button"
																	style="background-color: transparent; border: 0px;">
																	<i class="badge border border-success text-success"> 
																	?????? ???????????? ????????????</i>
																</button>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</main>
<script src="<%=request.getContextPath()%>/resources/template/js/vendors.bundle.js"></script>
<script src="<%=request.getContextPath()%>/resources/template/js/app.bundle.js"></script>
<%@ include file="/WEB-INF/views/indmember/indmember_js.jsp"%>

<script>
var letterStatus;
function letterTableSetting() {
	
	
	var letterStartMessage = '<tr id="letterStartMessage"><td class="text-center fw-700" colspan="6">?????? ????????? ?????????????????? ????????????.<br/><br/>????????? ?????? ????????? ?????????????????? ???????????? ???????????????!</td></tr>';
	if($('#letter_table').children().length == 0) {
		$('#letter_table').append(letterStartMessage);
		letterStatus = false;
	} else {
		$('#letter_table').children('#letterStartMessage').remove();
		letterStatus = true;
	}

}

letterTableSetting();
</script>
<script>
function rec_supply() {
	
	if(!letterStatus) {
		alert('????????? ??? ??? ????????? ?????????????????? ????????? ??? ?????? ???????????????.');
		return;
	}
	
	var recWantedno = '${recruit.recWantedno}';
	
	$.ajax({
		type : "POST",
		url : '<%=request.getContextPath()%>/recruit/supply/check',
		data : {'recWantedno' : recWantedno},
		dataType : 'text',
		success : function(data) {
			if(data == 'SupplyNotAllowed') {
				alert('?????? ????????? ?????????????????????.');
				window.close();
			} else if(data == 'SupplyAllowed') {
				rec_supply_submit();
			}
		},
		error : function(request, status, error) {
			console.log(request, status, error);
		}
	});  
	
}
</script>
<script>

</script>

<script>

function rec_supply_submit() {
	
	form = $('#recSupplyForm').serialize();
	
	var coName = '${recruit.coName}';
	
	$.ajax({
		type : "POST",
		url : '<%=request.getContextPath()%>/recruit/supply/submit.do',
		data : form,
		dataType : 'text',
		success : function(data) {
			
			if(data == 'recruitSupplySuccess') {
				alert(coName + '??? ?????? ?????? ????????? ?????????????????????.');
				AllimRegist();
				opener.parent.goPage('<%=request.getContextPath()%>/indmember/mypage/recruit.do','M100000');
				console.log("goPage() : ",opener.parent.goPage);
				window.close();
			}
		},
		error : function(request, status, error) {
			console.log(request, status, error);
		}
	});  
	
}

</script>

<script>
function AllimRegist() {
	var recWantedno = '${recruit.recWantedno}';
	var coName = '${recruit.coName}';
	var indId = '${loginUser.id}';
	var recWantedtitle = '${recruit.recWantedtitle}';

	$.ajax({
		url : '<%=request.getContextPath()%>/recruit/recAllim',
		type : 'POST',
		data : {'toId':coName,'fromId' : indId, 'recWantedno' : recWantedno, 'recWantedtitle':recWantedtitle},
		success : function(result) {
      },

		error : function(request, status, error) {
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		   }
    });     
}
</script>





<script>
	$("#resume_delete1").on("click", function() {
		bootbox.confirm({
			title : "????????? ?????? ???????????????????",
			message : "????????? ???????????? ???, ????????? ????????? ???????????? ??????????????????.",
			buttons : {
				cancel : {
					label : ' ?????????'
				},
				confirm : {
					label : ' ???'
				}
			},
			callback : function(result) {
				console.log('This was logged in the callback: ' + result);
			}
		});
	});
	$("#resume_delete2").on("click", function() {
		bootbox.confirm({
			title : "????????? ?????? ???????????????????",
			message : "????????? ???????????? ???, ????????? ????????? ???????????? ??????????????????.",
			buttons : {
				cancel : {
					label : ' ?????????'
				},
				confirm : {
					label : ' ???'
				}
			},
			callback : function(result) {
				console.log('This was logged in the callback: ' + result);
			}
		});
	});
	$("#resume_delete3").on("click", function() {
		bootbox.confirm({
			title : "????????? ?????? ???????????????????",
			message : "????????? ???????????? ???, ????????? ????????? ???????????? ??????????????????.",
			buttons : {
				cancel : {
					label : ' ?????????'
				},
				confirm : {
					label : ' ???'
				}
			},
			callback : function(result) {
				console.log('This was logged in the callback: ' + result);
			}
		});
	});
	botton: [ {
		extend : 'pdfHtml5',
		text : 'PDF',
		titleAttr : 'Generate PDF',
		className : 'btn-outline-danger btn-sm mr-1'
	} ];
</script>
<script
	src="<%=request.getContextPath()%>/resources/template/js/html2canvas.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/template/js/jspdf.min.js"></script>
<script>
	$(document).ready(
			function() {
				$('.savePdf').click(
						function() { // pdf?????? button id
							const pdfArea = document
									.querySelector('#resume-area');
							pdfArea.style.height = pdfArea.scrollHeight + 'px';
							html2canvas(pdfArea).then(
									function(canvas) { //?????? ?????? div id
										// ???????????? ???????????? ??????
										var imgData = canvas
												.toDataURL('image/png');

										var imgWidth = 190; // ????????? ?????? ??????(mm) / A4 ?????? 210mm
										var pageHeight = imgWidth * 1.414; // ?????? ????????? ?????? ?????? ?????? A4 ??????
										var imgHeight = canvas.height
												* imgWidth / canvas.width;
										var heightLeft = imgHeight;
										var margin = 10; // ?????? ????????? ????????????
										var doc = new jsPDF('p', 'mm');
										var position = 0;

										// ??? ????????? ??????
										doc.addImage(imgData, 'PNG', margin,
												position, imgWidth, imgHeight);
										heightLeft -= pageHeight;

										// ??? ????????? ????????? ?????? ?????? ????????? ??????
										while (heightLeft >= 20) {
											position = heightLeft - imgHeight;
											doc.addPage();
											doc.addImage(imgData, 'PNG', 0,
													position, imgWidth,
													imgHeight);
											heightLeft -= pageHeight;
										}

										// ?????? ??????
										doc.save('file-name.pdf');
									});

						});

			});
</script>
<script>
$(document).ready(function() {
	
	$(document).on("click",".supply_add_let",function(){
			
		var button = $(this);
		
		var letSeqno = button.attr('id');	
			
		var letter_table = $('#letter_table');
		
		var ajaxOption = {
				url : '<%=request.getContextPath()%>/indmember/getLetter.do?letSeqno=' + letSeqno,
				async : true,
				type : "GET",
				dataType : "json",
				cache : false
			};
			
		$.ajax(ajaxOption).done(function(data) {
			console.log("letter data : ", data);
			var tableTemplate = '<thead id="letter_'+letSeqno+'"><tr><th colspan="6" class="text-center border-top-0 table-scale-border-bottom fw-700">'+data.letTitle+'</th></tr></thead>'+
	        '<tbody id="letter_'+letSeqno+'"><tr><td class="text-left">'+data.letContent+'</td></tr>'+
	        '<input type="hidden" name="letTitle" value="'+data.letTitle+'" /><input type="hidden" name="letContent" value="'+data.letContent+'" /></tbody>';
			letter_table.append(tableTemplate);
			letterTableSetting();
			var td = button.parent('td');
			var button_del = '<button class="supply_del_let" id="'+letSeqno+'" type="button"'+
							 'style="background-color: transparent; border: 0px;">'+
							 '<i class="badge border border-danger text-danger">?????? ??????????????? ????????????</i></button>';
			td.children('button').remove();
			td.append(button_del);
			
		});

	});

});

</script>
<script>

$(document).ready(function() {
	
	$(document).on("click",".supply_del_let",function(){
		
		var button = $(this);
		var letSeqno = button.attr('id');
		var letter_table = $('#letter_table');
		var td = button.parent('td');
		var button_add = '<button class="supply_add_let" id="'+letSeqno+'" type="button"'+
		 				 'style="background-color: transparent; border: 0px;">'+
		 				 '<i class="badge border border-success text-success">?????? ???????????? ????????????</i></button>';
		letter_table.children('#letter_'+letSeqno).remove();
		letterTableSetting();
		td.children('button').remove();
		td.append(button_add);
		
	});

});
</script>



