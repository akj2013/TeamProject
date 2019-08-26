<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<jsp:include page="../header.jsp" />

<body>
	<section class="banner-box tokyo2020">
		<div class="holder">
			<h1>Tokyo 2020</h1>
		</div>
	</section>
	<div id="main">
		<div class="main-holder">


			<section class="related-posts">
				<div id="ajax-area-6f5bbd1f1f8d4b7ea3fccc4508a18223"
					class="boxes alt ajax-area" data-tmpl="newsthumbMed_tmpl">
					<div class="ajax-content">

					
					<c:if test="${!empty list }">
					<c:set var="listcnt" value="${list.size() }"/>
					<c:forEach var="list" items="${list }">
						<!-- 1번째 -->
						<article id=""
							class="box same-height-left" style="height: 454px;">
							<script type="application/ld+json"></script>
							
							<c:forEach var = "Urls" items="${list.getUrl() }" >
							<c:forTokens var= "Url" items="${Urls }" delims="||" begin="0" end="0">
							<span class="image"> <a href="/team/News/newsView?idx=${list.getIdx() }"> 
							<picture class="image"> <!--[if IE 9]><video style="display: none;"><![endif]-->
									<input type ="hidden" name="idx" value="${list.getIdx() }">
									<c:set var = "picture" value="${Url }"></c:set>
									<c:set var = "count" value="0"></c:set>
									
									<source
										srcset="/team/news/${picture }"
										media="(min-width: 1024px)">
									<source
										srcset="/team/news/${picture }"
										media="(min-width: 768px)">
									<!--[if IE 9]></video><![endif]--> <img
										src="/team/news/newsView?idx=${list.getIdx() }"
										srcset="/team/news/${picture }" style="width: 520px; height: 281px;"
										 ></picture>
										 <span class="news-topic-label tokyo2020">Tokyo 2020</span>
										 
										 
							</a>
							</span>
							</c:forTokens>
							</c:forEach>
							<h2>
								<a href="/team/News/newsView?idx=${list.getIdx() }"> ${list.getTitle() } </a>
							</h2>
							<time datetime="09 Jul 2019">${list.getTimec() }</time>
						</article>
						<!-- article 종료 -->
					<c:set var="listcnt" value="${listcnt-1 }"/>
					</c:forEach>
					</c:if>
					



						

					</div>
					<span class="btn-more"> <a
						href="/ajaxscript/loadmoreoverviewnews/{6F5BBD1F-1F8D-4B7E-A3FC-CC4508A18223}/10/0/">More</a>
					</span>
					<noscript>
						<div class="paging">
							<ul>
								<li><a><span class="icon-arrow-left"><span
											class="hide">&lt;</span></span></a></li>
								<li class="active"><a href="/team/news">1</a></li>
								<li class=""><a href="/team/news">2</a></li>
								<li class=""><a href="/team/news">3</a></li>
								<li class=""><a href="/team/news">4</a></li>
								<li><a>&hellip;</a></li>
								<li class=""><a href="/team/news">15</a></li>
								<li class=""><a href="/team/news">16</a></li>
								<li class=""><a href="/team/news">17</a></li>
								<li class=""><a href="/team/news">18</a></li>
								<li><a class="next" href="/team/news" rel="next"><span
										class="icon-arrow-right"><span class="hide">&gt;</span></span></a></li>
							</ul>
						</div>
					</noscript>
				</div>
			</section>

			<section class="cta-social">
				<div class="holder"></div>
			</section>

		</div>
	</div>
	<a href="#wrapper" class="accessibility">back to top</a>

	<jsp:include page="../footer.jsp" />
</body>
</html>