<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<jsp:include page="../header.jsp" />

<link media="all" rel="stylesheet" type="text/css"
	href="/team/resources/css/gamecenter.css">

<body>
	<div id="wrap">

		<div id="header">

			<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

			<script type="text/javascript" src="/team/resources/js/comments.js"></script>





		<hr>
		<div id="container" class="kbo_gc_type2">

			<div class="section_vs2" id="top_vs_scoreboard">
				<div class="team_lft">
					<span class="t_logo" style="margin-top:23px;"><img
						src="https://dthumb-phinf.pstatic.net/?type=f108_108&amp;refresh=1&amp;src=https://imgsports.pstatic.net/images/emblem/new/kbo/default/HT.png"
						width="105" height="80" alt="<c:out value="${ home.getNname() }" />"
						onerror="javascript:this.src='/team/images/Brazil.png';"></span>
					<dl class="t_name">
						<dt>
							<span class="t_name_txt"><c:out
									value="${ home.getNname() }" /></span>
						</dt>
						<dd id="awayVsResult" style="margin: 0 auto;">
							<span class="t_rank"><c:out
									value="${ match.getHranking() }" />위</span> <span class="t_record">
								<c:out value="${ home.getWcount() }" />승 <c:out
									value="${ home.getDcount() }" />무 <c:out
									value="${ home.getLcount() }" />패
							</span>
						</dd>
					</dl>

					<p class="p_score" id="away_total_score" style="display: none">
						0<span class="blind">점</span>
					</p>
				</div>

				<div class="team_cen" id="top_vs_content">



					<img
						src="https://imgnews.pstatic.net/image/sports/nsports/2010/txt_vs.gif"
						width="57" height="33" alt="VS" style="height: 69px;">

				</div>

				<div class="team_rgt">
					<p class="p_score" id="home_total_score" style="display: none">
						0<span class="blind">점</span>
					</p>
					<dl class="t_name">
						<dt>
							<span class="t_name_txt"><c:out
									value="${ away.getNname() }" /></span>
						</dt>
						<dd id="homeVsResult">
							<span class="t_rank"><c:out
									value="${ match.getAranking() }" />위</span> <span class="t_record">
								<c:out value="${ away.getWcount() }" />승 <c:out
									value="${ away.getDcount() }" />무 <c:out
									value="${ away.getLcount() }" />패
							</span>
						</dd>
					</dl>
					<span class="t_logo" style="margin-top:23px;"><img
						src="https://dthumb-phinf.pstatic.net/?type=f108_108&amp;refresh=1&amp;src=https://imgsports.pstatic.net/images/emblem/new/kbo/default/OB.png"
						width="105" height="80" alt="<c:out value="${ away.getNname() }" />"
						onerror="javascript:this.src='/team/images/Colombia.png';"></span>
				</div>
			</div>

			<div id="content" style="height: 500px;">
				<div class="cnt_lft">
					<div id="home_player_box">
						<h3 class="h_player">
							<c:out value="${ home.getNname() }" />
							コメント
						</h3>

					</div>



					<!-- 코멘트 박스 div > div > form -->


					<div class="section_cbox" id="cbox_lft">

						<div class="cbox_write_area">


							<form action="#" id="commentInsertForm">

								<fieldset>
									<input id="lft_category_id" type="hidden" value="0"> <input
										id="lft_view_category_id" type="hidden" value="0">
									<legend></legend>
									<table cellpadding="0" border="0" class="cbox_txt"
										summary="덧글 입력하기">

										<colgroup>
											<col>
											<col width="64">
										</colgroup>
										<tbody>
											<tr>


												<!-- 코멘트 입력란 -->
												<td><textarea id="txtarea_lft" cols="30" rows="10"
														style="ime-mode: active;" placeholder="コメントを入力してください。"></textarea></td>

												<!-- 코멘트 버튼 -->
												<td class="cbox_btn">
												<input id="commentInsertBtn_lft"
													type="image" onclick="return false;"
													src="https://imgnews.pstatic.net/image/sports/nsports/2010/btn_registry.gif"
													alt="입력">
													 
													 </td>
											</tr>
										</tbody>
									</table>
								</fieldset>
							</form>
						</div>

						<script>
							
							
							$(document).ready(function(){
								var mnumc = '${ match.mnum }';
								var team = '${ match.hteam }';
								var replyUL = $("#cbox_list_lft");
								var box = $("#box_lft");
								
								showList();
								
								function showList(){
									commentsService.getList({mnumc: mnumc, team: team}, function(cnt, list){
										var str = "";
										var query = "";
										

										if(list == null || list.length == 0){
											replyUL.html("");
											box.html('<span class="c_total">現在 <strong>'+0+'</strong>コメント</span>');
											return;
										}
										
										query += '<span class="c_total">現在 <strong>'+cnt+'</strong>コメント</span>';
										
										for(var i = 0, len = list.length; i < len; i++){
											str += '<li data-idx="'+list[i].idx+'"><div class="cbx_info"><span class="c_id">'+list[i].emailc+'</span> <span class="c_date">'+commentsService.displayTime(list[i].timec)+'</span></div>';
											str += '<div class="cbx_cmt">'+list[i].context+'</div></li>';										
										}
										replyUL.html(str);
										box.html(query);
									});		// end function
								}	// end showList 
								
								var insertBtn = $("#commentInsertBtn_lft");
								var context = $("#txtarea_lft");
								
								insertBtn.on("click", function(e){
									var comments = {
											emailc: '${Login.email}',
											context: context.val(),
											mnumc: mnumc,
											team: team
									};
									
									commentsService.add(comments, function(result){
										alert(result);
										showList();
										context.val('');
									});
								});
							});
							
							
						</script>


						<div class="cbox_list_area"	>
							<div class="cbox_list_top" id="box_lft">
								<span class="c_total">현재 <strong>503</strong>개의 응원글
								</span>

								<div class="ly_block_id" id="commentBlockIdManage_lft"
									style="display: none;"></div>
							</div>

							<ul class="cbox_list" id="cbox_list_lft" style="padding: 0;">
								<li>
									<div class="cbx_info">
										<span class="c_id">taew****</span> <span class="c_date">2019.07.24
											19:11</span>

									</div>
									<div class="cbx_cmt">기아는 달라진 모숩을보여주어라 그래야 계속야구본다</div>
								</li>


								<li class="last">
									<div class="cbx_info">
										<span class="c_id">leey****</span> <span class="c_date">2019.07.24
											18:02</span>

									</div>
									<div class="cbx_cmt">

										압으로기아는포수김민식이나신범수를써라한승택이는2군으로내리던지방출시켜라너무못한다</div>
								</li>
							</ul>







							<div class="cbx_page">



								<strong>1</strong> <a href=""
									onclick="javascript:showComment({page_no:2}, 0);return false;">2</a>



								<a href=""
									onclick="javascript:showComment({page_no:3}, 0);return false;">3</a>



								<a href=""
									onclick="javascript:showComment({page_no:4}, 0);return false;">4</a>



								<a href=""
									onclick="javascript:showComment({page_no:5}, 0);return false;">5</a>




								<a href=""
									onclick="javascript:showComment({page_no:6}, 0);return false;"
									class="cbx_next">다음</a>
							</div>
						</div>

					</div>

				</div>
				<div class="cnt_cen">
					<div id="center_area">




						<div class="ad_remain" id="ad_remain" style="display: none;">
							<p class="default"></p>
						</div>
						<div class="critdate_area" id="critdate_area"
							style="display: block;">
							<p class="default" id="critdate_area_txt"></p>
						</div>
						<div id="record_tab">
							<div class="section_record" id="season_record">
								<h3 class="blind">시즌성적</h3>
								<table cellspacing="0" border="1" class="record_area"
									summary="양팀 시즌성적 비교">
									<colgroup>
										<col width="143">
										<col>
										<col width="143">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="home"><c:out
													value="${ home.getNname() }" /></th>
											<th scope="col" class="vs"><span>VS</span></th>
											<th scope="col" class="away"><c:out
													value="${ away.getNname() }" /></th>
										</tr>
									</thead>
									<tbody>
										<tr class="frst">
											<td class="home"><c:out value="${ home.getWcount() }" />승
												<c:out value="${ home.getDcount() }" />무 <c:out
													value="${ home.getLcount() }" />패</td>
											<th scope="row">승무패</th>
											<td class="away"><c:out value="${ away.getWcount() }" />승
												<c:out value="${ away.getDcount() }" />무 <c:out
													value="${ away.getLcount() }" />패</td>
										</tr>
										<tr class="row2">
											<td class="home"><c:out value="${ match.getHranking() }" />위</td>
											<th scope="row">FIFA랭킹</th>
											<td class="away"><c:out value="${ match.getAranking() }" />위</td>
										</tr>
										<tr>
											<td class="home"><c:out
													value="${ match.getHdirector() }" /></td>
											<th scope="row">감독</th>
											<td class="away"><c:out
													value="${ match.getAdirector() }" /></td>
										</tr>
										<tr class="row2">
											<td class="home"><c:out value="${ match.getHcaptain() }" /></td>
											<th scope="row">주장</th>
											<td class="away"><c:out value="${ match.getAcaptain() }" /></td>
										</tr>
										<tr>
											<td class="home"><c:out
													value="${ match.getHattackpoint() }" /></td>
											<th scope="row">공격 포인트</th>
											<td class="away"><c:out
													value="${ match.getAattackpoint() }" /></td>
										</tr>
										<tr class="row2">
											<td class="home"><c:out value="${ match.getHfoul() }" /></td>
											<th scope="row">반칙 수</th>
											<td class="away"><c:out value="${ match.getAfoul() }" /></td>
										</tr>
										<tr class="last">
											<td class="home"><c:out value="${ match.getHrrecord() }" /></td>
											<th scope="row">상대 전적</th>
											<td class="away"><c:out value="${ match.getArrecord() }" /></td>
										</tr>
									</tbody>
								</table>
							</div>



							<div class="section_games">
								<h3>
									올림픽 중 승무패 <span id="recent_vs_games_date"><b>현재</b></span>
								</h3>

								<table cellspacing="0" border="0" class="record_area"
									summary="올림픽 중 승무패">
									<colgroup>
										<col width="91">
										<col width="28">
										<col width="42">
										<col>
										<col width="42">
										<col width="28">
										<col width="90">
									</colgroup>
									<tbody id="recent_vs_games">
										<tr class="frst">

											<td rowspan="3" class="line_lft name"><c:out
													value="${ home.getNname() }" /></td>




											<td class="result lft"><div class="win">
													<span>금</span>
												</div></td>
											<td class="score"><c:out value="${ match.getHgmedal() }" /></td>
											<th scope="row" class="date">金</th>
											<td class="score"><c:out value="${ match.getAgmedal() }" /></td>
											<td class="result rgt"><div class="win">
													<span>금</span>
												</div></td>

											<td rowspan="3" class="line_rgt name"><c:out
													value="${ away.getNname() }" /></td>

										</tr>
										<tr>
											<td class="result lft"><div class="draw">
													<span>은</span>
												</div></td>
											<td class="score"><c:out value="${ match.getHsmedal() }" /></td>
											<th scope="row" class="date">銀</th>
											<td class="score"><c:out value="${ match.getAsmedal() }" /></td>
											<td class="result rgt"><div class="draw">
													<span>은</span>
												</div></td>
										</tr>
										<tr class="last">
											<td class="result lft"><div class="lose">
													<span>동</span>
												</div></td>
											<td class="score"><c:out value="${ match.getHbmedal() }" /></td>
											<th scope="row" class="date">銅</th>
											<td class="score"><c:out value="${ match.getAbmedal() }" /></td>
											<td class="result rgt"><div class="lose">
													<span>동</span>
												</div></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- /////////////////// 삭제한부분 -->
				</div>
				<div class="cnt_rgt">
					<div id="home_player_box">
						<h3 class="h_player">
							<c:out value="${ away.getNname() }" />
							コメント
						</h3>
					</div>
					<div class="section_cbox" id="cbox_rgt" >

						<div class="cbox_write_area">
							<form action="#">
								<fieldset>
									<input id="rgt_category_id" type="hidden" value="1"> <input
										id="rgt_view_category_id" type="hidden" value="1">
									<legend></legend>
									<table cellpadding="0" border="0" class="cbox_txt"
										summary="덧글 입력하기">
										<colgroup>
											<col>
											<col width="64">
										</colgroup>
										<tbody>
											<tr>
												<td><textarea id="txtarea_rgt" cols="30" rows="10"
														name="" style="ime-mode: active;" placeholder="コメントを入力してください。"></textarea></td>
												<td class="cbox_btn"><input id="commentInsertBtn_rgt"
													onclick="return false;" type="image"
													src="https://imgnews.pstatic.net/image/sports/nsports/2010/btn_registry.gif"
													alt="입력"></td>
											</tr>
										</tbody>
									</table>
									<!-- /////////////////////////////////////////////////////// 삭제2 -->
								</fieldset>
							</form>
						</div>
						<div class="cbox_list_area">
							<div class="cbox_list_top" id="box_rgt">
								<span class="c_total">현재 <strong>4,494</strong>개의 응원글
								</span> 

								<div class="ly_block_id" id="commentBlockIdManage_rgt"
									style="display: none;"></div>
							</div>

							<ul class="cbox_list" id="cbox_list_rgt"  style="padding:0;">
														
							</ul>
							
						<script>
							
							
							$(document).ready(function(){
								var mnumc = '${ match.mnum }';
								var team = '${ match.ateam }';
								var replyUL = $("#cbox_list_rgt");
								var box = $("#box_rgt");
								
								showList();
								
								function showList(){
									commentsService.getList({mnumc: mnumc, team: team}, function(cnt, list){
										var str = "";
										var query = "";
									
										if(list == null || list.length == 0){
											replyUL.html("");
											box.html('<span class="c_total">現在 <strong>'+0+'</strong>コメント</span>');
											return;
										}
										
										query += '<span class="c_total">現在 <strong>'+cnt+'</strong>コメント</span>';
										
											
										for(var i = 0, len = list.length ; i < len; i++){
											str += '<li data-idx="'+list[i].idx+'"><div class="cbx_info"><span class="c_id">'+list[i].emailc+'</span> <span class="c_date">'+commentsService.displayTime(list[i].timec)+'</span></div>';
											str += '<div class="cbx_cmt">'+list[i].context+'</div></li>';										
										}
										replyUL.html(str);
										box.html(query);
									});
								}
								
								
								var insertBtn = $("#commentInsertBtn_rgt");
								var context = $("#txtarea_rgt");
								
								insertBtn.on("click", function(e){
									var comments = {
											emailc: '${Login.email}',
											context: context.val(),
											mnumc: mnumc,
											team: team
									};
									
									commentsService.add(comments, function(result){
										alert(result);
										showList();
										context.val('');										
									});
								});
							});
							
							
						</script>
							


							<div class="cbx_page">



								<strong>1</strong> <a href=""
									onclick="javascript:showComment({page_no:2}, 1);return false;">2</a>



								<a href=""
									onclick="javascript:showComment({page_no:3}, 1);return false;">3</a>



								<a href=""
									onclick="javascript:showComment({page_no:4}, 1);return false;">4</a>



								<a href=""
									onclick="javascript:showComment({page_no:5}, 1);return false;">5</a>




								<a href=""
									onclick="javascript:showComment({page_no:6}, 1);return false;"
									class="cbx_next">다음</a>
							</div>
						</div>

					</div>


				</div>
				<div class="ly_lineup lft_lineup" style="display: none;"
					id="lineup_box"></div>
			</div>
		</div>

	</div>
	</div>
	<jsp:include page="../footer.jsp" />

</body>
</html>
