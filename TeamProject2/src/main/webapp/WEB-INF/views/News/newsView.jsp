<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<style>
.milan2026, .games2026-2 {
	background-color: #2fad64 !important;
}

.games35.games2026-2, .games35.milan2026 {
	background-position: 0 -2368px;
}
</style>

<div id="wrapper">
	<jsp:include page="../header.jsp" flush="true" />
	
	<!-- 네비게이션 : 뒤로가기 -->
	<nav
		class="breadcrumbs breadcrumbContext tokyo2020 gallery-js-ready not-enough-slides autorotation-disabled">
		<script type="application/ld+json">{"@context": "http://schema.org","@type": "BreadcrumbList","itemListElement": [{"@type": "ListItem","position": 1,"item": {"@id": "https://www.olympic.org/news","name": "News"}}]}</script>
		<div class="holder">
			<ul style="width: 99px; margin-left: 0px;">
				<li class="active"><a href="/team/News/newsList"><span
						class="icon-arrow-left"></span> Tokyo 2020 </a></li>
			</ul>
		</div>
	</nav>

	
	
	
	<!-- 메인 -->
	<div id="main">
		<div class="main-holder">


			<section class="post-box text-content featured-article">
				<div class="info-col">
					<dl>
						<!-- 날짜 -->
						<dt>Date</dt>
						<dd>${vo.timec }</dd>
						
						<!-- 최종 수정 시간 -->
						<c:if test="${vo.timen != null }">	<!-- 수정 하기 전에는 timen이 null값입니다. -->			
							<dt>Update</dt>
							<dd>${vo.timen }</dd>
						</c:if>
						<!-- 태그 -->
						<dt>Tags</dt>
						<dd>
							<a href="/team/News/newsList">Olympic News</a>, 
							<a href="/team/News/newsList">Tokyo 2020</a>
						</dd>
						
						<!-- 설정 -->
						<dt>Configuration</dt>
						<dd>
							<a href="/team/News/newsInsert">INSERT&nbsp;&nbsp;</a> <!-- 새로 작성 -->
							<a href="/team/News/newsModify?idx=${vo.idx }">MODIFY&nbsp;&nbsp;</a> <!-- 수정 -->
							<a href="/team/News/newsDelete?idx=${vo.idx }">DELETE&nbsp;&nbsp;</a> <!-- 삭제 -->
						</dd>
					</dl>
				</div>
				<span class="news-topic-label tokyo2020">Tokyo 2020</span>
				
				<h1>
					<c:out value="${vo.title }" />
				</h1>
				<!-- 타이틀 -->

				<ul class="social-col">



				</ul>

				<h5>${vo.subTitle }&nbsp;&nbsp;</h5>
				<!-- 서브 타이틀 -->
				<br>
				<p></p>
				<div class="alt2">
					<div class="gamesPromo">
						<a href="/tokyo-2020"> <picture class="picture"> <img
								src="/team/images/2020_1.png"
								srcset="/team/images/2020_1.png?interpolation=lanczos-none&amp;resize=240:240, /team/images/2020_1.png?interpolation=lanczos-none&amp;resize=480:480 2x"
								alt=""></picture>

						</a>

						<div class="text-box">
							<h3>
								<a href="/team/index">Tokyo 2020</a>
							</h3>
						</div>
					</div>
				</div>
				<p></p>
				<br>





				<c:forEach var="context" items="${contexts }" varStatus="status">
					<p>${context }</p>
					<!-- 본문 -->
					<c:forEach var="print" items="${pictures }" begin="${status.count }" end="${status.count }">
					<c:if test="${print != null }">
						<div class="image">
							<!-- 사진 -->
							<picture><!--[if IE 9]><video style="display: none;"><![endif]-->
							<source media="(min-width: 1024px)"
								srcset="/team/news/${print }?interpolation=lanczos-none&amp;resize=1060:*, /team/news/${print }?interpolation=lanczos-none&amp;resize=2120:* 2x">
							<source media="(min-width: 768px)"
								srcset="/team/news/${print }?interpolation=lanczos-none&amp;resize=658:*, /team/news/${print }?interpolation=lanczos-none&amp;resize=1316:* 2x">
							<!--[if IE 9]></video><![endif]--> <img alt=""
								srcset="/team/news/${print }?interpolation=lanczos-none&amp;resize=320:*, /team/news/${print }?interpolation=lanczos-none&amp;resize=640:* 2x"></picture>
							<span class="label-photo"> <span class="sss-picture">
							</span>Tokyo 2020</span>
						</div>
					</c:if>	
					</c:forEach>
					
					
					
				</c:forEach>






			</section>
		</div>
	</div>
</div>

<jsp:include page="../footer.jsp" />
</body>
</html>