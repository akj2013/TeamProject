<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<jsp:include page="../header.jsp" />
<link media="all" rel="stylesheet" type="text/css" href="/team/css/login_common.css">
<script async="" src="//cdn.contx.net/collect.js"></script>

<script type="text/javascript">
function LoginCheck() {
   var f = document.form;

   if (f.email.value == "") {
      alert("이메일을 입력하세요.");
      f.email.focus();
      return false;
   }

   if (f.userpw.value == "") {
      alert("비밀번호를 입력하세요.");
      f.userpw.focus();
      return false;
   }
   
   
}
</script>

</head>
<body id="FS2_body_Member" class="FS2_body_Member_MemberEntryEdit">
   <div class="layout_body">
      <table border="0" cellspacing="0" cellpadding="0" class="layout_table">
         <tbody>
            <tr>
               <td class="layout_content">
                  <div class="system_content">

                     <div class="user_content FS2_upper_comment">
                        <!-- ▼ 会員登録上部 ▼ -->
                        <!--Veピクセルタグ-->
                        <script type="text/javascript">
                           !function() {
                              var a = document
                                    .createElement("script");
                                    a.type = "text/javascript",
                                    a.async = !0,
                                    a.src = "//configjp2.veinteractive.com/tags/B7553F10/D3D4/41FE/80B6/02DE6EBFB976/tag.js";
                              var b = document
                                    .getElementsByTagName("head")[0];
                              if (b)
                                 b.appendChild(a, b);
                              else {
                                 var b = document
                                       .getElementsByTagName("script")[0];
                                 b.parentNode.insertBefore(a, b)
                              }
                           }();
                        </script>
                     </div>

                     <form action="/team/Member/login" method="POST" name="form" id="form">

                        <h2 class="pageTitle" style="font-size: 20px;">ログイン</h2>

                        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="FS2_login_layout_table">
                           <tbody>
                              <tr>
                                 <td valign="top" class="FS2_login_layout_table_td_left">
                                    <h3 class="CrossHead">会員登録がお済みのお客様</h3>

                                    <div class="inputTableArea" style="text-align: center; padding: 37px;">
                                       <table border="0" cellspacing="0" cellpadding="0" class="userTable_01">

                                          <tbody>
                                             <tr>
                                                <th width="40%" align="right" nowrap="nowrap">Eメールアドレス</th>
                                                <td>
                                                   <input name="email" type="text" size="24" maxlength="16000" id="email" value="">
                                                </td>
                                             </tr>
                                             <tr>
                                                <th align="right">パスワード</th>
                                                <td>
                                                   <input name="userpw" type="password" size="24" id="userpw" value="">
                                                </td>
                                             </tr>
                                          </tbody>
                                       </table>
                                       <div class="FS2_holdEmailAddress">
                                          <label for="holdEmail">
                                             <input type="checkbox" name="holdEmail" id="holdEmail" checked="checked">
                                             Eメールアドレスを保存する
                                          </label>
                                       </div>

                                       <div class="itemCenter">
                                          <h2>
                                             <br>
                                             <br>
                                          </h2>
                                          <input src="/team/images/LoginButton.gif" alt="ログイン" id="submit" border="0" type="image" name="login" onclick="return LoginCheck()">
                                       </div>
                                       <div align="right" style="text-align: center;">

                                          <!-- 비밀번호 찾기 페이지 -->
                                          <a href="https://ssl.knot-designs.com/fs/knot/PasswordReminderEdit.html" onclick="return canSubmit();">&gt;&gt;パスワードをお忘れの場合</a>
                                       </div>
                                    </div>
                                    <div class="FS2_OtherServiceLogin_area"></div>
                                 </td>
                                 <td width="50%" valign="top" class="FS2_login_layout_table_td_right">
                                    <h3 class="CrossHead">まだ会員登録がお済みでないお客様</h3>
                                    <p class="FS2_Login_comment_area"></p>
                                    <p align="center"></p>
                                    <br>
                                    <p>
                                       会員登録は無料、入会金、年会費等も一切不要です。<br>一度会員登録いただくと、ご注文の際に個人情報の入力の手間が省け、メールアドレス・パスワードのみでオンラインショッピングをご利用いただけます。<br> またオンラインショップでも店舗でも共通ポイントを貯め、使うことができます。<br>
                                       <a href="http://knot-designs.com/fs/knot/c/guide2">会員について詳しくはこちら</a>
                                    </p>
                                    <p></p>
                                    <div class="FS2_Login_btn_position" style="text-align: center;">
                                       <input src="/team/images/MemberEntryButton.gif" alt="会員登録" border="0" id="submit_0" type="image" name="entry" onclick="location.href='join'; return false;">
                                    </div>
                                 </td>
                              </tr>
                           </tbody>
                        </table>

                        <input type="hidden" name="fstoken" value="5JNB2CB2b3sr">
                     </form>

                     <div class="user_content FS2_lower_comment">
                        <!-- <script type="text/javascript"
                           src="//f1.zenclerk.com/publish/knot-designs.js"></script> -->
                     </div>

                  </div>
               </td>

            </tr>
         </tbody>
      </table>
   </div>


   <jsp:include page="../footer.jsp" />
</body>
</html>