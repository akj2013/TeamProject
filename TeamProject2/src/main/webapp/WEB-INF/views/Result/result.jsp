<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="../header.jsp" />
<script type="text/javascript" async=""
	src="/team/resources/js/result_check.js"></script>

<style type="text/css">
.js-drop-hidden {
	position: absolute !important;
	left: -9999px !important;
	top: -9999px !important;
	display: block !important
}
</style>
<style type="text/css">
.js-slide-hidden {
	position: absolute !important;
	left: -9999px !important;
	top: -9999px !important;
	display: block !important
}
</style>
<style type="text/css">
.js-tab-hidden {
	position: absolute !important;
	left: -9999px !important;
	top: -9999px !important;
	display: block !important
}
</style>
<style></style>
<style></style>
<body>
	<script>var dataLayer = [{"language":"en","section":"Results","subsection":"","newstopic":"","games":"","season":"","parentsport":"","sport":"","sportevent":""}]</script>


	<script>
    (function (w, d, s, l, i) {
        w[l] = w[l] || []; w[l].push({
            'gtm.start':
            new Date().getTime(), event: 'gtm.js'
        }); var f = d.getElementsByTagName(s)[0],
        j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
        '//www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-NTJZ3D');
</script>
	<noscript>
		<div>Javascript must be enabled for the correct page display</div>
	</noscript>
	<a href="#main" class="accessibility">skip to content</a>

	<div id="wrapper">

		<script>
(function() { window.satismeter = window.satismeter || function() {(window.satismeter.q = window.satismeter.q || []).push(arguments);};window.satismeter.l = 1 * new Date();var script = document.createElement('script');var parent = document.getElementsByTagName('script')[0].parentNode;script.async = 1;script.src = 'https://app.satismeter.com/satismeter.js';parent.appendChild(script);})();
satismeter({
writeKey: 'SBttTQBMVJ2zVrmu',
});
</script>
		<style>
.milan2026, .games2026-2 {
	background-color: #2fad64 !important;
}

.games35.games2026-2, .games35.milan2026 {
	background-position: 0 -2368px;
}
</style>



		<section class="results-box">
			<div class="holder" style="height: 554px;">
				<h1>Results</h1>
				<div class="tab-gallery gallery-js-ready autorotation-disabled">
					<ul class="tabset">
						<li class="active"><a href="#">By Games</a></li>

					</ul>

					<div class="tab-content">
						<div class="tab-slider" style="width: 1040px; margin-left: 0px;">
							<div class="tab-section active" style="width: 520px;">



								<!-- result 제출 폼 -->
								<form id="results-form" class="results-form results-game-form">
									<div class="row">
										<select required class="games" id="game"
											onchange="checkGames()" title="Games">
											<option value="" selected="selected">Games</option>
											<option value="tokyo-2020">Tokyo 2020</option>

										</select> <span class="txt">* Required</span>
									</div>

									<!-- 올림픽 선택 -->
									<div class="row">
										<select required class="sports" id="sport"
											onchange="checkSports()" title="Sports">
											<option value="" selected="selected">Sports</option>
											<option value="Football">Football</option>
										</select> <span class="txt">* Required</span>
									</div>

									

										<input type="submit" class="signupbtn"
											value="Results" onclick="location.href='/team/Result/match_graph'">
										<input type="reset" value="Clear">
	
								</form>
							</div>
							<!-- <div class="row">

										<input type="reset" value="Clear">
									</div> -->


							<!-- 경기선택 -->
							<!-- 									<div class="row">
										<input type="submit" class="signupbtn" value="Results" onclick="location.href='/team/index'">
										<input type="reset" value="Clear">
									</div>
								</form>
							</div> -->
							<!-- <div class="tab-section" style="width: 520px;">
								<form id="results-form" 
									class="results-form results-discipline-form">
									<div class="row">
										<select required class="sports" id="sport" onchange="checkSports()"
											title="Sports">
											<option class="default">Sports</option>
											<option value="">Sports</option>
												<option value="football">Football</option>
										</select><span
											class="jcf-select jcf-unselectable jcf-select-ajax-select"
											title="Sports"><span class="jcf-select-text"><span
												class="jcf-option-default ">Sports</span></span><span
											class="jcf-select-opener"></span></span> <span class="txt">*
											Required</span>
									</div>
									
									<div class="row">
										<select required class="games" id="game" onchange="checkGames()"
											title="Games" disabled="disabled">
											<option class="default">Games</option>
											<option value="">Games</option>
											<option value="football">Football</option>
										</select>
										
										여기여기여기여기여기
										<span
											class="jcf-select jcf-unselectable jcf-select-ajax-select jcf-disabled" title="Games">
											<span class="jcf-select-text">
											<span class="jcf-option-default ">Games</span></span><span
											class="jcf-select-opener"></span></span> <span class="txt">*
											Optional</span>
									</div>
									<div class="row">
										<input type="submit" > <input
											type="reset" value="Clear">
									</div>
								</form>
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</section>

		<div class="main">
			<div class="main-holder"></div>

		</div>


		<a href="#wrapper" class="accessibility">back to top</a>



		<!-- footer -->
		<jsp:include page="../footer.jsp" />


	</div>
	<script async="" src="https://app.satismeter.com/satismeter.js"></script>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="https://stillres.olympic.org/js/jquery-1.11.1.min.js"><\/script>')</script>
	<script src="https://stillres.olympic.org/js/jquery.main.js"></script>
	<script src="https://stillres.olympic.org/js/jquery.cookie.js"></script>
	<script src="https://stillres.olympic.org/js/jquery.collageCaption.js"></script>
	<script src="https://stillres.olympic.org/js/jquery.collagePlus.js"></script>
	<script
		src="https://stillres.olympic.org/js/jquery.removeWhitespace.js"></script>
	<script src="https://stillres.olympic.org/js/jquery.betd.js"></script>
	<script src="https://stillres.olympic.org/js/ss-social.js"></script>
	<script src="https://stillres.olympic.org/js/ss-standard.js"></script>
	<!--[if IE]><script src="https://stillres.olympic.org/js/ie.js"></script><![endif]-->
	<script src="https://stillres.olympic.org/js/smartbanner.min.js"></script>
	<script src="https://stillres.olympic.org/js/geoip2.js"></script>
	<noscript>
		<div>Javascript must be enabled for the correct page display</div>
	</noscript>

	<!-- No JS added -->


	<iframe id="font-resize-frame-760" class="font-resize-helper"
		style="width: 100em; height: 10px; position: absolute; border-width: 0px; top: -9999px; left: -9999px;"></iframe>
	<div id="fancybox-tmp"></div>

	<div id="fancybox-overlay"></div>
	<div id="fancybox-wrap">
		<div id="fancybox-outer">
			<div class="fancybox-bg" id="fancybox-bg-n"></div>
			<div class="fancybox-bg" id="fancybox-bg-ne"></div>
			<div class="fancybox-bg" id="fancybox-bg-e"></div>
			<div class="fancybox-bg" id="fancybox-bg-se"></div>
			<div class="fancybox-bg" id="fancybox-bg-s"></div>
			<div class="fancybox-bg" id="fancybox-bg-sw"></div>
			<div class="fancybox-bg" id="fancybox-bg-w"></div>
			<div class="fancybox-bg" id="fancybox-bg-nw"></div>
			<div id="fancybox-content"></div>
			<a id="fancybox-close"></a>
			<div id="fancybox-title"></div>
			<a href="javascript:;" id="fancybox-left"><span class="fancy-ico"
				id="fancybox-left-ico"></span></a><a href="javascript:;"
				id="fancybox-right"><span class="fancy-ico"
				id="fancybox-right-ico"></span></a>
		</div>
	</div>


	<style>
@media only screen and (max-width: 1023px) {
	#header {
		position: absolute;
		top: 0;
	}
	#wrapper {
		padding-top: 66px;
	}
	.banner-box {
		margin: 0 0 41px;
	}
}

@media only screen and (max-width: 767px) {
	#wrapper {
		padding-top: 55px;
	}
	.banner-home {
		margin: 0 0 42px;
	}
	.image-box {
		margin: 0 auto -18px;
	}
	.banner-box {
		margin: 0 0 34px;
	}
}
</style>
	<script type="text/javascript" id="">window.addEventListener("beforeunload",function(){window.dataLayer.push({event:"beforeunload"})});</script>
	<script
		src="https://analytics.twitter.com/i/adsct?p_id=Twitter&amp;p_user_id=0&amp;txn_id=nyvl3&amp;events=%5B%5B%22pageview%22%2Cnull%5D%5D&amp;tw_sale_amount=0&amp;tw_order_quantity=0&amp;tw_iframe_status=0&amp;tpx_cb=twttr.conversion.loadPixels&amp;tw_document_href=https%3A%2F%2Fwww.olympic.org%2Folympic-results"
		type="text/javascript"></script>
</body>
</html>