<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="../header.jsp" />
<body>
	<table border="0" cellspacing="0" cellpadding="0" class="layout_table">
		<tbody>
			<tr>

				<td class="layout_content">

					<div class="system_content">





						<h2 class="pageTitle">パスワードをお忘れの場合</h2>
						<ol>
							<li>下記フォームにてご登録メールアドレスと仮パスワードをご入力ください。</li>
							<li>パスワード変更用ページのURLを記載したメールを送信します。</li>
							<li>記載されているURLにアクセスし、パスワードの変更を行ってください。</li>
						</ol>
						<form action="PasswordReminderEdit.html" method="post" name="form"
							id="form">
							<div class="inputTableArea">
								<table border="0" cellspacing="0" cellpadding="0"
									class="userTable_01">
									<tbody>
										<tr>
											<th width="30%" align="right" nowrap="nowrap" scope="row">メールアドレス</th>
											<th width="24" align="center" nowrap="nowrap" scope="row"><span
												class="thStrong"><img
													src="/shop/img/icon/icon_require.gif" alt="必須" width="24"
													height="11"></span></th>
											<td scope="col"><input name="mailAddress" type="text"
												size="40" maxlength="16000" id="mailAddress" value="">
											</td>
										</tr>
										<tr>
											<th width="30%" align="right" nowrap="nowrap" scope="row">仮パスワード</th>
											<th width="24" align="center" nowrap="nowrap" scope="row"><span
												class="thStrong"><img
													src="/shop/img/icon/icon_require.gif" alt="必須" width="24"
													height="11"></span></th>
											<td scope="col"><input name="tempPassword"
												type="password" size="40" maxlength="40" id="tempPassword"
												value=""></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="FS2_bottom_btn_center_1">
								<input id="submit" border="0" type="image" name="send"
									src="/shop/item/knot/design/template01/btn/SendDecideButton.gif"
									alt="送信確定" onclick="return canSubmit();">
							</div>
						</form>
					</div>

				</td>

			</tr>
		</tbody>
	</table>



	<jsp:include page="../footer.jsp" />
</body>
</html>