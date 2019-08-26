<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="../header.jsp" />


<link media="all" rel="stylesheet" type="text/css"
	href="/team/resources/css/join_style.css">
<link media="all" rel="stylesheet" type="text/css"
	href="/team/resources/css/login_common.css">
<script type="text/javascript" async="" src="/team/resources/js/join_check.js"></script>

<body id="FS2_body_Member"
	class="FS2_body_Member_MemberEntryEdit sticky"
	xmlns:fb="http://ogp.me/ns/fb#">


	<script type="text/javascript">
		(function($) {
			$(function() {
				$('#FS2_MembershipCardConfirm_container').delegate(
						'.FS2_YesButton',
						'click',
						function() {
							$('#FS2_MembershipCardCertifyConfirm_container')
									.slideDown();
							$('#FS2_MembershipCardConfirm_container').hide();
							return false;
						});
			});
		})(jQuery);
	</script>

	<div class="layout_body">


		<table border="0" cellspacing="0" cellpadding="0" class="layout_table">
			<tbody>
				<tr>
					<td class="layout_content">
						<div class="system_content">

							<h2 class="pageTitle">会員登録</h2>

							<form action="/team/News/newsInsert" method="post" name="form"
								id="form" novalidate="novalidate" enctype="multipart/form-data">
								<input border="0" id="submit" type="image" name="dummySubmit"
									value="" onclick="return false;" class="dummySubmit"
									src="/shop/img/1px_permeation.gif">






								<p>下記の内容をご入力の上、お進みください。</p>
								<div class="inputTableArea">
									<table border="0" cellspacing="0" cellpadding="0"
										class="userTable_01">
										<tbody>
											

											<!-- 타이틀 -->
											<tr>
												<th width="18%" colspan="2" align="right" scope="row">TITLE</th>
												<th width="24" align="center" scope="row"><img
													src="/team/images/icon_require.gif" alt="必須" width="24"
													height="11"></th>
												<td>
												<textarea  name="title" cols="75"
													class="fs2_required FS2_assist_required FS2_assist_error efo_invalid"
													maxlength="100"  placeholder="title"
													aria-required="true" aria-invalid="true"
													style="background-color: rgb(255, 255, 255);"
													aria-describedby="fs2_lastName-error"></textarea> 

											</tr>
											
											<!-- 서브 타이틀 -->
											<tr>
												<th width="18%" colspan="2" align="right" scope="row">SUB TITLE</th>
												<th width="24" align="center" scope="row"><img
													src="/team/images/icon_require.gif" alt="必須" width="24"
													height="11"></th>
												<td>
												<textarea  name="subTitle" cols="75" rows="3"
													class="fs2_required FS2_assist_required FS2_assist_error efo_invalid"
													maxlength="100" placeholder="subtitle"
													aria-required="true" aria-invalid="true"
													style="background-color: rgb(255, 255, 255);"
													aria-describedby="fs2_lastName-error"></textarea>

											</tr>
											
											<!-- 콘텍스트 -->
											<tr>
												<th width="18%" colspan="2" align="right" scope="row">CONTEXT</th>
												<th width="24" align="center" scope="row"><img
													src="/team/images/icon_require.gif" alt="必須" width="24"
													height="11"></th>
												<td><textarea  name="context" 
													id="fs2_lastNameKana"
													class="fs2_required FS2_assist_required efo_invalid"
													maxlength="5000"  placeholder="Context"
													style="background-color: rgb(255, 255, 255);"
													rows="10" cols="75"
													></textarea> 
											</tr>
											
											<!-- 사진 -->
											<tr>
												<th width="18%" colspan="2" align="right" scope="row">PICTURE</th>
												<th width="24" align="center" scope="row"><img
													src="/team/images/icon_require.gif" alt="必須" width="24"
													height="11"></th>
												<td> <input
														type="file" placeholder="Picture" name="uploadFile" size="20"
														maxlength="200" multiple 
														multiplestyle="background-color: rgb(255, 255, 255);">
											</tr>
											
											
										</tbody>
									</table>
								</div>

								

							<div style=" text-align: center;">
							 <button type="submit" class="signupbtn" >確認</button>
							</div>
							
							<script>
							$(document).ready(function() {
								$("#uploadBtn").on("click",fuction(e) {
									var formData = new FormData();
									var inputFile = $("input[name='uploadFile']");
									var files = inputFile[0].files;
									console.log(files);
									
									for(var i = 0; i < files.length; i++) {
										formData.append("uploadFile",files[i]);
									}
									
									$.ajax({
										url : '/uploadAjaxAction',
											processData : false,
											contentType : false,
											data : formData,
											type : 'POST',
											success : function(result) {
												alert("Uploaded");
											}
									}); // $.ajax
								});
							});
						</script>
					</form>
							
							<!-- 	<div class="FS2_bottom_btn_center_1" style="text-align: center;">
									<input type="image" src="./images/ConfirmButton.gif"
										id="submit_1" alt="確認" border="0" name="confirm"
										onclick="return canSubmit();"> -->
								</div>
								<input type="hidden" name="fstoken" value="Z4Ybt4PvKEBD">
							
					</td>
				</tr>
			</tbody>
		</table>

		<jsp:include page="../footer.jsp" />


	</div>

</body>



</html>