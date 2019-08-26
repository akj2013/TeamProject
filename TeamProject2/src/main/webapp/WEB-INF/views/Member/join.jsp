<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="../header.jsp" />

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<link media="all" rel="stylesheet" type="text/css" href="/team/resources/css/join_style.css">
<link media="all" rel="stylesheet" type="text/css" href="/team/resources/css/login_common.css">
<script type="text/javascript" async="" src="/team/resources/js/join_check.js"></script>
<body id="FS2_body_Member" class="FS2_body_Member_MemberEntryEdit sticky" xmlns:fb="http://ogp.me/ns/fb#">

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

   <script type="text/javascript">
      var eCheck = 0;
      $(function() {
         // eCheck 버튼을 클릭했을 때 
         $(".eCheck").click(function() {
            // email의 갑을 가져옴 [name="email"]
            var email = $("#email").val();
            $.ajax({
               async : true, // 동기식
               type : 'POST', // 포스트방식
               data : JSON.stringify(email), // var email의 값을 보내고 받음
               url : "eCheck.do", // url은 eCheck.do로 이동
               dataType : "json", // 데이터 전송방식은 제이슨
               contentType : "application/json; charset=UTF-8", //제이슨 방식, 한글깨짐방지
               success : function(data) {
                  if (data.result == 0) { // 같은 아이디가 존재하면
                     alert("IDが存在します。 他のIDを入力してください。");
                     $("#email").removeAttr("#email");
                     $("#reemail").removeAttr("#reemail");

                  } else if (data.result == 1) { // 같은 아이디가 존재하지 않으면
                     alert("使用可能なIDです。");

                  } else { // 그외
                     alert("Eメールを入力してください。");
                  }
               },
               error : function(error) {
                  alert("error : " + error);
               }
            });
         });
      });
   </script>

   <!-- 재입력 확인 -->
   <script type="text/javascript">
      $(function() {
         //아무것도 하지 않았을 때 상태
         //일치 시
         $("#alert-success").hide();
         //비일치 시
         $("#alert-danger").hide();
         //아무것도 입력되지 않은 상태일 시
         $("#alert-nothing").show();

         $("#alert-success2").hide();
         $("#alert-danger2").hide();
         $("#alert-nothing2").show();

         //<input>에 값이 입력 됬을 시 
         $("input").keyup(
               function() {
                  //각 값을 가져옴
                  var pwd1 = $("#email").val();
                  var pwd2 = $("#reemail").val();
                  var pwd3 = $("#userpw").val();
                  var pwd4 = $("#repwd").val();

                  if (pwd1 != "" || pwd2 != "") {
                     //이메일과 이메일 재입력 같을 시
                     if (pwd1 == pwd2) {
                        $("#alert-success").show();
                        $("#alert-danger").hide();
                        $("#alert-noting").hide();
                        //다를 시
                     } else if (pwd1 != pwd2) {
                        $("#alert-success").hide();
                        $("#alert-danger").show();
                        $("#alert-nothing").hide();

                        //회원가입 버튼을 비활성화
                        $signupbtn = $('.signupbtn').attr('disabled',
                              true);
                     } else {
                        $("#alert-success").hide();
                        $("#alert-danger").hide();
                        $("#alert-noting").show();

                        $signupbtn = $('.signupbtn').attr('disabled',
                              true);
                     }
                  }
                  //비밀번호 재입력 확인
                  if (pwd3 != "" || pwd4 != "") {
                     if (pwd3 == pwd4) {
                        $("#alert-success2").show();
                        $("#alert-danger2").hide();
                        $("#alert-noting2").hide();
                        //두 조건이 모두 충족시 회원가입버튼 활성화
                        if (pwd1 == pwd2) {
                           $signupbtn = $('.signupbtn').attr(
                                 'disabled', false);
                        }
                     } else if (pwd3 != pwd4) {
                        $("#alert-success2").hide();
                        $("#alert-danger2").show();
                        $("#alert-nothing2").hide();

                        $signupbtn = $('.signupbtn').attr('disabled',
                              true);
                     } else {
                        $("#alert-success2").hide();
                        $("#alert-danger2").hide();
                        $("#alert-noting2").show();
                        $signupbtn = $('.signupbtn').attr('disabled',
                              true);
                     }
                  }
               });
      });
   </script>

   <div class="layout_body">


      <table border="0" cellspacing="0" cellpadding="0" class="layout_table">
         <tbody>
            <tr>
               <td class="layout_content">
                  <div class="system_content">

                     <h2 class="pageTitle">会員登録</h2>

                     <form action="join" method="post" name="form" id="form" novalidate="novalidate">
                        <input border="0" id="submit" type="image" name="dummySubmit" value="" onclick="return false;" class="dummySubmit" src="/shop/img/1px_permeation.gif">






                        <p>下記の内容をご入力の上、お進みください。</p>
                        <div class="inputTableArea">
                           <table border="0" cellspacing="0" cellpadding="0" class="userTable_01">
                              <tbody>
                                 <tr>
                                    <th width="18%" colspan="2" align="right" scope="row">会員カード番号</th>
                                    <th width="24" align="center" scope="row">&nbsp;<br>&nbsp;
                                    </th>
                                    <td>新規発行</td>
                                 </tr>

                                 <tr>
                                    <th width="18%" colspan="2" align="right" scope="row">氏名</th>
                                    <th width="24" align="center" scope="row"><img src="../resources/images/icon_require.gif" alt="必須" width="24" height="11"></th>
                                    <td>

                                       <!-- 성 입력 한자 -->

                                       <input type="text" name="hiln" value="" id="ch_userId" class="fs2_required FS2_assist_required FS2_assist_error efo_invalid" maxlength="100" size="20" placeholder="山田" aria-required="true" aria-invalid="true" aria-describedby="fs2_lastName-error" style="background-color: rgb(240, 240, 240);">


                                       <!-- 이름입력 한자 -->
                                       <input type="text" name="hifn" value="" id="fs2_firstName" class="fs2_required FS2_assist_required" maxlength="100" size="20" placeholder="太郎">
                                       <!-- <div class="FS2_assist_container">
                                          <span id="fs2_lastName-error" class="FS2_assist_message">入力してください。</span>
                                       </div> -->
                                    </td>
                                 </tr>
                                 <tr>
                                    <th width="18%" colspan="2" align="right" scope="row">氏名（フリガナ）</th>
                                    <th width="24" align="center" scope="row"><img src="../resources/images/icon_require.gif" alt="必須" width="24" height="11"></th>
                                    <td>
                                       <input type="text" name="huln" value="" id="fs2_lastNameKana" class="fs2_required FS2_assist_required efo_invalid" maxlength="100" size="20" placeholder="ヤマダ" style="background-color: rgb(255, 255, 255);">
                                       <input type="text" name="hufn" value="" id="fs2_firstNameKana" class="fs2_required FS2_assist_required" maxlength="100" size="20" placeholder="タロウ">
                                    </td>
                                 </tr>
                                 <tr>
                                    <th width="18%" colspan="2" align="right" scope="row">Ｅメールアドレス</th>
                                    <th width="24" align="center" scope="row"><img src="../resources/images/icon_require.gif" alt="必須" width="24" height="11"></th>
                                    <td>
                                       <input type="text" placeholder="Eメールアドレス" name="email" id="email" size="50" maxlength="200" required class="email" onsubmit="checkEmail()">
                                       <input type="button" class="eCheck" value="중복체크" />
                                       <br>

                                       <div mailsuggest="list" style="position: absolute; background-color: rgb(255, 255, 255); border: 1px solid rgb(204, 204, 255); z-index: 1000; display: none; font-family: &amp; amp; amp; amp; amp; amp; amp; quot; Noto Sans&amp;amp; amp; amp; amp; amp; amp; quot; , &amp; amp; amp; amp; amp; amp; amp; quot; ヒラギノ角ゴ Pro W3&amp;amp; amp; amp; amp; amp; amp; quot; , &amp; amp; amp; amp; amp; amp; amp; quot; Hiragino Kakugo Pro W3&amp;amp; amp; amp; amp; amp; amp; quot; , 游ゴシック , &amp;amp; amp; amp; amp; amp; amp; quot; Yu Gothic&amp;amp; amp; amp; amp; amp; amp; quot; , メイリオ , Meiryo, sans-serif; width: 362px; top: 1199.8px; left: 579.2px;"></div>
                                       <br>

                                       <!-- 이메일 재입력 -->
                                       <input type="email" placeholder="再入力" size="50" maxlength="200" name="reemail" required class="email" id="reemail" oninput="checkEmail()">
                                       <div mailsuggest="list" style="position: absolute; background-color: rgb(255, 255, 255); border: 1px solid rgb(204, 204, 255); z-index: 1000; display: none; font-family: &amp; amp; amp; amp; amp; amp; amp; quot; Noto Sans&amp;amp; amp; amp; amp; amp; amp; quot; , &amp; amp; amp; amp; amp; amp; amp; quot; ヒラギノ角ゴ Pro W3&amp;amp; amp; amp; amp; amp; amp; quot; , &amp; amp; amp; amp; amp; amp; amp; quot; Hiragino Kakugo Pro W3&amp;amp; amp; amp; amp; amp; amp; quot; , 游ゴシック , &amp;amp; amp; amp; amp; amp; amp; quot; Yu Gothic&amp;amp; amp; amp; amp; amp; amp; quot; , メイリオ , Meiryo, sans-serif; width: 362px;"></div>
                                       <span id="fs2_emailConfirmationLabel"></span>
                                       <br>
                                       <div style="color: blue; background-color: white; padding: 8px;" class="alert alert-success" id="alert-success">Eメールが一致します。</div>
                                       <div style="color: red; background-color: white; padding: 8px;" class="alert alert-danger" id="alert-danger">Eメールが一致しません。</div>
                                       <div style="color: black; background-color: white; padding: 8px;" class="alert alert-nothing" id="alert-nothing">Eメールが入力されていません。</div>
                                    </td>
                                 </tr>

                                 <tr>
                                    <th width="18%" colspan="2" align="right" scope="row">郵便番号</th>
                                    <th width="24" align="center" scope="row"><img src="../resources/images/icon_require.gif" alt="必須" width="24" height="11"></th>
                                    <td>
                                       <input type="tel" name="postf" value="" id="fs2_zipCodeFront" class="fs2_required FS2_assist_required" maxlength="3" size="4">
                                       -
                                       <input type="tel" name="postb" value="" id="fs2_zipCodeBack" class="fs2_required FS2_assist_required" maxlength="4" size="5">
                                       <input type="button" name="addressSearch" id="fs2_addressSearch" value="住所検索" class="FS2_AddressSearchButton">
                                    </td>
                                 </tr>
                                 <tr>
                                    <th width="18%" colspan="2" align="right" scope="row">都道府県</th>
                                    <th width="24" align="center" scope="row"><img src="../resources/images/icon_require.gif" alt="必須" width="24" height="11"></th>
                                    <td>
                                       <select name="ken" id="ken" class="fs2_required FS2_assist_required">
                                          <option value="">選択してください</option>
                                          <option value="00101">北海道</option>
                                          <option value="00202">青森県</option>
                                          <option value="00203">秋田県</option>
                                          <option value="00204">岩手県</option>
                                          <option value="00305">宮城県</option>
                                          <option value="00306">山形県</option>
                                          <option value="00307">福島県</option>
                                          <option value="00408">茨城県</option>
                                          <option value="00409">栃木県</option>
                                          <option value="00410">群馬県</option>
                                          <option value="00411">埼玉県</option>
                                          <option value="00412">千葉県</option>
                                          <option value="00413">神奈川県</option>
                                          <option value="00414">東京都</option>
                                          <option value="00415">山梨県</option>
                                          <option value="00516">新潟県</option>
                                          <option value="00517">長野県</option>
                                          <option value="00618">静岡県</option>
                                          <option value="00619">愛知県</option>
                                          <option value="00620">三重県</option>
                                          <option value="00621">岐阜県</option>
                                          <option value="00722">富山県</option>
                                          <option value="00723">石川県</option>
                                          <option value="00724">福井県</option>
                                          <option value="00825">大阪府</option>
                                          <option value="00826">京都府</option>
                                          <option value="00827">滋賀県</option>
                                          <option value="00828">奈良県</option>
                                          <option value="00829">和歌山県</option>
                                          <option value="00830">兵庫県</option>
                                          <option value="00931">岡山県</option>
                                          <option value="00932">広島県</option>
                                          <option value="00933">山口県</option>
                                          <option value="00934">鳥取県</option>
                                          <option value="00935">島根県</option>
                                          <option value="01036">香川県</option>
                                          <option value="01037">徳島県</option>
                                          <option value="01038">愛媛県</option>
                                          <option value="01039">高知県</option>
                                          <option value="01140">福岡県</option>
                                          <option value="01141">佐賀県</option>
                                          <option value="01142">長崎県</option>
                                          <option value="01143">熊本県</option>
                                          <option value="01144">大分県</option>
                                          <option value="01145">宮崎県</option>
                                          <option value="01146">鹿児島県</option>
                                          <option value="01247">沖縄県</option>
                                       </select>
                                    </td>
                                 </tr>
                                 <tr>
                                    <th width="18%" colspan="2" align="right" scope="row">住所１（市区町村）</th>
                                    <th width="24" align="center" scope="row"><img src="../resources/images/icon_require.gif" alt="必須" width="24" height="11"></th>
                                    <td>
                                       <input type="text" name="address1" value="" id="fs2_addressLine1" class="fs2_required FS2_assist_required" size="50" maxlength="100">
                                    </td>
                                 </tr>
                                 <tr>
                                    <th width="18%" colspan="2" align="right" scope="row">住所２（番地）</th>
                                    <th width="24" align="center" scope="row"><img src="../resources/images/icon_require.gif" alt="必須" width="24" height="11"></th>
                                    <td>
                                       <input type="text" name="address2" value="" id="fs2_addressLine2" class="fs2_required FS2_assist_required" size="50" maxlength="100">
                                    </td>
                                 </tr>
                                 <tr>
                                    <th width="18%" colspan="2" align="right" scope="row">住所３（建物名）</th>
                                    <th width="24" align="center" scope="row">&nbsp;</th>
                                    <td>
                                       <input type="text" name="address3" value="" id="fs2_addressLine3" size="50" maxlength="100">
                                    </td>
                                 </tr>
                                 <tr>
                                    <th width="18%" colspan="2" align="right" scope="row">お電話番号</th>
                                    <th width="24" align="center" scope="row"><img src="../resources/images/icon_require.gif" alt="必須" width="24" height="11"></th>
                                    <td>
                                       <input type="tel" name="phonef" value="" id="fs2_phoneNumberPublic" size="6" maxlength="3" class="fs2_required FS2_assist_required">
                                       -
                                       <input type="tel" name="phonem" value="" id="fs2_phoneNumberLocal" size="6" maxlength="4" class="fs2_required FS2_assist_required">
                                       -
                                       <input type="tel" name="phoneb" value="" id="fs2_phoneNumberMember" size="6" maxlength="4" class="fs2_required FS2_assist_required">
                                    </td>
                                 </tr>
                                 <tr>
                                    <th width="18%" colspan="2" align="right" scope="row">性別</th>
                                    <th width="24" align="center" scope="row">&nbsp;</th>
                                    <td>
                                       <label for="fs2_gender-unspecified">
                                          <input type="radio" name="gender" id="fs2_gender-unspecified" value="00" checked="checked">
                                          指定なし
                                       </label>
                                       <label for="fs2_gender-male">
                                          <input type="radio" name="gender" id="fs2_gender-male" value="01">
                                          男性
                                       </label>
                                       <label for="fs2_gender-female">
                                          <input type="radio" name="gender" id="fs2_gender-female" value="02">
                                          女性
                                       </label>
                                    </td>
                                 </tr>
                                 <tr>
                                    <th width="18%" colspan="2" align="right" scope="row">生年月日</th>
                                    <th width="24" align="center" scope="row">&nbsp;</th>
                                    <td>
                                       <font color="#ff0000">生年月日をご登録いただくと、お誕生日月にお得なクーポンを受け取ることができます。</font><br>

                                       <span class="FS2_birthdayDateYear">
                                          <select name="birthY" id="fs2_birthdayYear">
                                             <option value=""></option>
                                             <option value="1900">1900</option>
                                             <option value="1901">1901</option>
                                             <option value="1902">1902</option>
                                             <option value="1903">1903</option>
                                             <option value="1904">1904</option>
                                             <option value="1905">1905</option>
                                             <option value="1906">1906</option>
                                             <option value="1907">1907</option>
                                             <option value="1908">1908</option>
                                             <option value="1909">1909</option>
                                             <option value="1910">1910</option>
                                             <option value="1911">1911</option>
                                             <option value="1912">1912</option>
                                             <option value="1913">1913</option>
                                             <option value="1914">1914</option>
                                             <option value="1915">1915</option>
                                             <option value="1916">1916</option>
                                             <option value="1917">1917</option>
                                             <option value="1918">1918</option>
                                             <option value="1919">1919</option>
                                             <option value="1920">1920</option>
                                             <option value="1921">1921</option>
                                             <option value="1922">1922</option>
                                             <option value="1923">1923</option>
                                             <option value="1924">1924</option>
                                             <option value="1925">1925</option>
                                             <option value="1926">1926</option>
                                             <option value="1927">1927</option>
                                             <option value="1928">1928</option>
                                             <option value="1929">1929</option>
                                             <option value="1930">1930</option>
                                             <option value="1931">1931</option>
                                             <option value="1932">1932</option>
                                             <option value="1933">1933</option>
                                             <option value="1934">1934</option>
                                             <option value="1935">1935</option>
                                             <option value="1936">1936</option>
                                             <option value="1937">1937</option>
                                             <option value="1938">1938</option>
                                             <option value="1939">1939</option>
                                             <option value="1940">1940</option>
                                             <option value="1941">1941</option>
                                             <option value="1942">1942</option>
                                             <option value="1943">1943</option>
                                             <option value="1944">1944</option>
                                             <option value="1945">1945</option>
                                             <option value="1946">1946</option>
                                             <option value="1947">1947</option>
                                             <option value="1948">1948</option>
                                             <option value="1949">1949</option>
                                             <option value="1950">1950</option>
                                             <option value="1951">1951</option>
                                             <option value="1952">1952</option>
                                             <option value="1953">1953</option>
                                             <option value="1954">1954</option>
                                             <option value="1955">1955</option>
                                             <option value="1956">1956</option>
                                             <option value="1957">1957</option>
                                             <option value="1958">1958</option>
                                             <option value="1959">1959</option>
                                             <option value="1960">1960</option>
                                             <option value="1961">1961</option>
                                             <option value="1962">1962</option>
                                             <option value="1963">1963</option>
                                             <option value="1964">1964</option>
                                             <option value="1965">1965</option>
                                             <option value="1966">1966</option>
                                             <option value="1967">1967</option>
                                             <option value="1968">1968</option>
                                             <option value="1969">1969</option>
                                             <option value="1970">1970</option>
                                             <option value="1971">1971</option>
                                             <option value="1972">1972</option>
                                             <option value="1973">1973</option>
                                             <option value="1974">1974</option>
                                             <option value="1975">1975</option>
                                             <option value="1976">1976</option>
                                             <option value="1977">1977</option>
                                             <option value="1978">1978</option>
                                             <option value="1979">1979</option>
                                             <option value="1980" selected="selected">1980</option>
                                             <option value="1981">1981</option>
                                             <option value="1982">1982</option>
                                             <option value="1983">1983</option>
                                             <option value="1984">1984</option>
                                             <option value="1985">1985</option>
                                             <option value="1986">1986</option>
                                             <option value="1987">1987</option>
                                             <option value="1988">1988</option>
                                             <option value="1989">1989</option>
                                             <option value="1990">1990</option>
                                             <option value="1991">1991</option>
                                             <option value="1992">1992</option>
                                             <option value="1993">1993</option>
                                             <option value="1994">1994</option>
                                             <option value="1995">1995</option>
                                             <option value="1996">1996</option>
                                             <option value="1997">1997</option>
                                             <option value="1998">1998</option>
                                             <option value="1999">1999</option>
                                             <option value="2000">2000</option>
                                             <option value="2001">2001</option>
                                             <option value="2002">2002</option>
                                             <option value="2003">2003</option>
                                             <option value="2004">2004</option>
                                             <option value="2005">2005</option>
                                             <option value="2006">2006</option>
                                             <option value="2007">2007</option>
                                             <option value="2008">2008</option>
                                             <option value="2009">2009</option>
                                             <option value="2010">2010</option>
                                             <option value="2011">2011</option>
                                             <option value="2012">2012</option>
                                             <option value="2013">2013</option>
                                             <option value="2014">2014</option>
                                             <option value="2015">2015</option>
                                             <option value="2016">2016</option>
                                             <option value="2017">2017</option>
                                             <option value="2018">2018</option>
                                             <option value="2019">2019</option>
                                          </select>
                                          年
                                          <select name="birthM" id="fs2_birthdayMonth">
                                             <option value="" selected="selected"></option>
                                             <option value="01">01</option>
                                             <option value="02">02</option>
                                             <option value="03">03</option>
                                             <option value="04">04</option>
                                             <option value="05">05</option>
                                             <option value="06">06</option>
                                             <option value="07">07</option>
                                             <option value="08">08</option>
                                             <option value="09">09</option>
                                             <option value="10">10</option>
                                             <option value="11">11</option>
                                             <option value="12">12</option>
                                          </select>
                                          月
                                          <select name="birthD" id="fs2_birthdayDay">
                                             <option value="" selected="selected"></option>
                                             <option value="01">01</option>
                                             <option value="02">02</option>
                                             <option value="03">03</option>
                                             <option value="04">04</option>
                                             <option value="05">05</option>
                                             <option value="06">06</option>
                                             <option value="07">07</option>
                                             <option value="08">08</option>
                                             <option value="09">09</option>
                                             <option value="10">10</option>
                                             <option value="11">11</option>
                                             <option value="12">12</option>
                                             <option value="13">13</option>
                                             <option value="14">14</option>
                                             <option value="15">15</option>
                                             <option value="16">16</option>
                                             <option value="17">17</option>
                                             <option value="18">18</option>
                                             <option value="19">19</option>
                                             <option value="20">20</option>
                                             <option value="21">21</option>
                                             <option value="22">22</option>
                                             <option value="23">23</option>
                                             <option value="24">24</option>
                                             <option value="25">25</option>
                                             <option value="26">26</option>
                                             <option value="27">27</option>
                                             <option value="28">28</option>
                                             <option value="29">29</option>
                                             <option value="30">30</option>
                                             <option value="31">31</option>
                                          </select>
                                          日
                                       </span>
                                    </td>
                                 </tr>

                                 <tr>
                                    <th width="18%" colspan="2" align="right" scope="row">パスワード</th>
                                    <th width="24" align="center" scope="row"><img src="../resources/images/icon_require.gif" alt="必須" width="24" height="11"></th>
                                    <td>
                                       <span class="FS2_pass_input">
                                          <input type="password" placeholder="パスワード" name="userpw" size="50" maxlength="200" required class="pass" id="userpw" style="background: #fff6ee;">
                                          <br /> <br />

                                          <input type="password" placeholder="再入力" size="50" maxlength="200" name="psw-repeat" required class="pass" id="repwd">
                                          （再入力）

                                       </span>
                                       <div style="color: blue; background-color: white; padding: 8px;" class="alert alert-success2" id="alert-success2">パスワードが一致します。</div>
                                       <div style="color: red; background-color: white; padding: 8px;" class="alert alert-danger2" id="alert-danger2">パスワードが一致しません。</div>
                                       <div style="color: black; background-color: white; padding: 8px;" class="alert alert-nothing2" id="alert-nothing2">パスワードが入力されていません。</div>
                                    </td>
                                 </tr>
                                 <tr>
                                    <th width="18%" colspan="2" align="right" scope="row">郵便DMのお届け</th>
                                    <th width="24" align="center" scope="row">&nbsp;</th>
                                    <td>
                                       <label for="fs2_directMail-yes">
                                          <input type="radio" name="dmagree" id="fs2_directMail-yes" value="01" checked="checked">
                                          受け取る
                                       </label>
                                       <label for="fs2_directMail-no">
                                          <input type="radio" name="dmagree" id="fs2_directMail-no" value="02">
                                          受け取らない
                                       </label>
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>

                        <div style="text-align: center;">
                           <button type="submit" id="signupbtn" class="signupbtn" disabled="disabled" onclick="location.href='join'">確認</button>
                        </div>
                     </form>
                     <!-- <div class="FS2_bottom_btn_center_1" style="text-align: center;">
                           <input type="image" src="./images/ConfirmButton.gif"
                              id="submit_1" alt="確認" border="0" name="confirm"
                              onclick="return canSubmit();"> 
                        </div> -->
                     <input type="hidden" name="fstoken" value="Z4Ybt4PvKEBD">
               </td>
            </tr>
         </tbody>
      </table>
      <jsp:include page="../footer.jsp" />
   </div>
</body>
</html>