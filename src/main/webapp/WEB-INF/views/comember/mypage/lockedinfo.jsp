<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="today" value="<%=new java.util.Date()%>" />
<c:set var="date">
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd hh:mm:ss" />
</c:set>

<c:set var="talentMap" value="${talentMap}" />
<c:set var="talentList" value="${talentMap.talentList }" />

<style>
.panel-content {
	width: 100%;
	height: 990px;
	overflow: hidden;
}

.coBookmarkPanel {
	height: 310px;
	overflow: auto;
}

.recBookmarkPanel {
	height: 555px;
	overflow: auto;
}
</style>

<main id="js-page-content" role="main" class="page-content">
<div class="row">
	<div class="col-lg-6 col-xl-3 order-lg-1 order-xl-1">
		<!-- profile summary -->
		<div class="card mb-g rounded-top">
			<div class="row no-gutters row-grid">
				<div class="col-12">
					<div
						class="d-flex flex-column align-items-center justify-content-center p-4">
						<img src="<%=request.getContextPath()%>/member/getPicture.do?id=${loginUser.id}"
							onerror="this.onerror=null; this.src='<%=request.getContextPath() %>/resources/template/img/member_default.png';"
							class=" shadow-2 img-thumbnail" alt="íėėŽė§" />
						<h5 class="mb-0 fw-700 text-center mt-3">
							${loginUser.name}<small class="text-muted mb-0">${loginUser.email}</small>
						</h5>
						<div class="mt-4 text-center demo">
							<a href="javascript:void(0);" class="fs-xl"
								style="color: #3b5998"> <i class="fab fa-facebook"></i>
							</a> <a href="javascript:void(0);" class="fs-xl"
								style="color: #db3236"> <i class="fab fa-google"></i>
							</a> <a href="javascript:void(0);" class="fs-xl"
								style="color: #0077B5"> <i class="fab fa-instagram"></i>
							</a> <a href="javascript:void(0);" class="fs-xl"
								style="color: #0063DC"> <i class="fab fa-github"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="col-6">
					<div class="text-center py-3">
						<h5 class="mb-0 fw-700">
							0 <small class="text-muted mb-0">ęģĩę°ėĪėļ ėīë Ĩė</small>
						</h5>
					</div>
				</div>
				<div class="col-6">
					<div class="text-center py-3">
						<h5 class="mb-0 fw-700">
							0<small class="text-muted mb-0">ė§íėĪėļ ėąėĐ</small>
						</h5>
					</div>
				</div>
				<div class="col-6">
					<div class="text-center py-3">
						<h5 class="mb-0 fw-700">
							0 <small class="text-muted mb-0">ė§íėĪėļ ëĐí ë§</small>
						</h5>
					</div>
				</div>
				<div class="col-6">
					<div class="text-center py-3">
						<h5 class="mb-0 fw-700">
							0<small class="text-muted mb-0">ė§íėĪėļ ęģĩëŠĻė </small>
						</h5>
					</div>
				</div>
				<div class="col-12">
					<div class="p-3 text-center">
						<a href="javascript:void(0);" class="btn-link font-weight-bold">íëĄíėŽė§
							ëģęē―íęļ°</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-12 col-xl-6 order-lg-3 order-xl-2">
		<div>
			<div id="panel-1" class="panel">
				<div class="panel-hdr">
					<h2>
						${loginUser.name } íėëė ę°ėļė ëģī<span class="fw-300"></span>
					</h2>
				</div>
				<div class="panel-container show" id="auth_check">
					<div class="page-wrapper auth">
						<div class="page-inner bg-brand-gradient">
							<div class="page-content-wrapper bg-transparent m-0">
								<div class="d-flex flex-1"
									style="background: url(<%=request.getContextPath()%>/resources/template/img/svg/pattern-1.svg) no-repeat center; background-size: cover;">
									<div
										class="container py-4 py-lg-5 my-lg-5 px-4 px-sm-0 text-white d-flex align-items-center justify-content-center">
										<div class="form-group">
											<h3>${loginUser.name} íėë, ėė í ę°ėļė ëģī ėīëė ėíī ëđë°ëēíļëĨž ėë ĨíīėĢžėļė.
											</h3>
											<p class="text-white opacity-50">Please enter your
												password for safe viewing</p>
											<div class="input-group input-group-lg">
												<input type="password" id="password" value=""
													onkeyup="if(window.event.keyCode==13){rendering()}"
													class="form-control" placeholder="Password">
												<div class="input-group-append">
													<button class="btn btn-success shadow-0"
														onclick="rendering()" type="button" id="button-addon5">
														<i class="fal fa-user"></i>
													</button>
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
	</div>
	<div class="col-lg-6 col-xl-3 order-lg-2 order-xl-3">
		<div class="card mb-g">
			<div class="row row-grid no-gutters">
				<div class="panel-hdr" style="width: 100%;">
					<h2>ęīėŽ ėļėŽ</h2>
					<div class="panel-toolbar ml-2">
						<button type="button"
							onclick="window.open('<%=request.getContextPath()%>/futurelab/ai3/talent/recommand.do','OpenWindow','height=' + screen.height + ',width=' + screen.width + 'fullscreen=yes')"
							class="btn btn-xs btn-info waves-effect waves-themed">
							AIėęē ėļėŽ ėķėēë°ęļ°</button>
					</div>
				</div>
				<div class="w-100">
					<div class="custom-scroll recBookmarkPanel w-100">
						<div class="p-2">
							<table
								class="table table-bordered table-hover table-striped w-100 dataTable no-footer dtr-inline"
								role="grid" aria-describedby="dt-basic-example_info"
								style="width: 1544px;">
								<tbody>
									<c:forEach items="${talentList}" var="talent">
											<tr id="1" role="row" class="odd" style="cursor:pointer;">
												<td class="dtr-control"><span
													class="badge badge-success badge-pill">ęĩŽė§íëėĪ</span>
													<a data-toggle="dropdown"> - ${talent.name} / ${talent.indFedu} / ${talent.eduDep}
													</a>
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
		<!-- rating -->
	</div>
</div>


<div class="modal fade default-example-modal-right-lg" tabindex="-1"
	role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-dialog-right modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fal fa-times"></i></span>
				</button>
			</div>
			<div class="modal-body">
				<div id="panel-2" class="panel">
					<div class="panel-hdr">
						<h2>ėëīė ėē­</h2>
						<div class="panel-toolbar">
							<button class="btn btn-panel" data-action="panel-collapse"
								data-toggle="tooltip" data-offset="0,10"
								data-original-title="Collapse"></button>
							<button class="btn btn-panel" data-action="panel-fullscreen"
								data-toggle="tooltip" data-offset="0,10"
								data-original-title="Fullscreen"></button>
							<button class="btn btn-panel" data-action="panel-close"
								data-toggle="tooltip" data-offset="0,10"
								data-original-title="Close"></button>
						</div>
					</div>
					<div class="panel-container show">
						<div class="panel-content">
							<div class="panel-tag">
								<p>ė·Ļėė§ėęīë Ļ ėëīė ė ėē­íėĪ ė ėėĩëëĪ. ëėėī íėí ėę° ë íĻęŧíë ė§ė ėą ėë ėëīė
									ė§ííĐëëĪ.</p>
								<p>ęķęļíė  ėŽí­ėī ėëĪëĐī ėļė ë  ė ėē­íīėĢžėļė. ėđė í ėëīė ëėëëĶŽęē ėĩëëĪ.</p>
							</div>
						</div>
						<form class="needs-validation" novalidate="" method="post"
							name="registForm" id="registForm">
							<div class="panel-content">
								<div class="form-group">
									<label class="form-label" for="supType"><b>ėëīė í</b> <span
										class="text-danger">*</span></label> <select class="custom-select"
										id="supType" name="supType">
										<option>ėëīė í ė í</option>
										<option value="0">ė§ëĄėëī</option>
										<option value="1">ė·Ļėėëī</option>
										<option value="2">íëĄę·ļëĻėëī</option>
									</select>
									<div class="invalid-feedback">ėëīė íė ė ííīėĢžėļė.</div>
								</div>

								<div class="form-group">
									<label class="form-label" for="indId"><b>ėėąė</b></label> <input
										type="text" id="indId" name="indId" class="form-control"
										value="${loginUser.name }" readonly>
								</div>

								<div class="form-group">
									<label class="form-label" for="supTitle"><b>ė ëŠĐ</b> <span
										class="text-danger">*</span> </label> <input type="text"
										class="form-control" id="supTitle" name="supTitle"
										placeholder="ė ëŠĐė ėë ĨíīėĢžėļė.">
									<div class="invalid-feedback">ė ëŠĐė ėë ĨíīėĢžėļė.</div>
								</div>

								<div class="form-group">
									<label class="form-label" for="supPdate"><b>ėëīę°ëĨėžė</b>&nbsp;âŧėëīėžėëĨž
										ė ííė§ėė ęē―ė° ėëīėŽę° ėėëĄ ė°ë―ė ëëĶ―ëëĪ.</label> <input class="form-control"
										id="supPdate" type="date" name="supPdate">
								</div>

								<div class="form-group">
									<label class="form-label" for="supContent"><b>ėëīëīėĐ</b>
										<span class="text-danger">*</span></label>
									<textarea class="form-control" id="supContent"
										name="supContent" placeholder="ėëīė ėē­íėĪ ëīėĐė ėë ĨíīėĢžėļė." rows="7"></textarea>
									<div class="invalid-feedback">ėëīė ėē­íėĪ ëīėĐė ėë ĨíīėĢžėļė.</div>
								</div>
							</div>
							<div
								class="panel-content border-faded border-left-0 border-right-0 border-bottom-0 d-flex flex-row align-items-center">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="invalidCheck" required=""> <label
										class="custom-control-label" for="invalidCheck"> Agree
										to terms and conditions <span class="text-danger">*</span>
									</label>
									<div class="invalid-feedback">You must agree before
										submitting.</div>
								</div>
								<button
									class="btn btn-success btn-pills ml-auto waves-effect waves-themed"
									type="button" id="registBtn">ė ėē­íęļ°</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</main>
<%@ include file="/WEB-INF/views/comember/comember_js.jsp"%>
