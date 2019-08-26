<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<jsp:include page="header.jsp" />
<div id="wrapper">
	<div>
		<section class="profiles alt2">
			<!-- Main 화면 전환 화살표 왼쪽 -->
			<!-- <div class="btn-hold">
			<a href="/pyeongchang-2018"> <span class="btn-prev"> <span
					class="icon-arrow-left"> <span class="hide"></span>
				</span>
			</span> <span class="txt">PyeongChang 2018</span>
			</a>
		</div>

		Main 화살 전환 화살표 오른쪽
		<div class="btn-hold right">
			<a href="/beijing-2022"> <span class="btn-next"> <span
					class="icon-arrow-right"> <span class="hide"></span>
				</span>
			</span> <span class="txt">Beijing 2022</span>
			</a>
		</div> -->

			<!-- 메인 화면 해상도별 자동 이미지 변환 로딩 -->
			<div class="bg-image">
				<picture class="image">

				<source
					srcset="/team/images/Tokyo_2020_banner.jpg?interpolation=lanczos-none&amp;resize=3840:1280"
					media="(min-width: 1921px)">
				<source
					srcset="/team/images/Tokyo_2020_banner.jpg?interpolation=lanczos-none&amp;resize=1920:640, /team/images/Tokyo_2020_banner.jpg?interpolation=lanczos-none&amp;resize=3840:1280 2x"
					media="(min-width: 1024px)">
				<source
					srcset="/team/images/Tokyo_2020_banner.jpg?interpolation=lanczos-none&amp;fit=around|1024:250&amp;crop=1024:250;*,*, /team/images/Tokyo_2020_banner.jpg?interpolation=lanczos-none&amp;fit=around|2048:500&amp;crop=2048:500;*,* 2x"
					media="(min-width: 768px)">



				<!-- 도쿄 올림픽 메인 화면사진 --> <img src="/team/images/Tokyo_2020_banner.jpg"
					srcset="/team/images/Tokyo_2020_banner.jpg?interpolation=lanczos-none&amp;fit=around|768:500&amp;crop=768:500;*,*, /team/images/Tokyo_2020_banner.jpg?interpolation=lanczos-none&amp;fit=around|1536:1000&amp;crop=1536:1000;*,* 2x"
					alt="Tokyo 2020"
					style="width: 1890px; height: 630px; margin-top: 0px; margin-left: -185.5px; opacity: 1; transition: opacity 0.2s ease 0s;"></picture>
			</div>
			<div class="holder">
				<article class="profile-box"
					data-gtm-vis-recent-on-screen-1734713_78="234"
					data-gtm-vis-first-on-screen-1734713_78="234"
					data-gtm-vis-total-visible-time-1734713_78="100"
					data-gtm-vis-has-fired-1734713_78="1">
					<picture class="image"> <!--[if IE 9]><video style="display: none;"><![endif]-->

					<source
						srcset="/team/images/2020_1.png?interpolation=lanczos-none&amp;resize=240:240, /team/images/2020_1.png?interpolation=lanczos-none&amp;resize=480:480 2x"
						media="(min-width: 1024px)">
					<source
						srcset="/team/images/2020_1.png?interpolation=lanczos-none&amp;resize=70:70, /team/images/2020_1.png?interpolation=lanczos-none&amp;resize=140:140 2x"
						media="(min-width: 768px)">
					<!--[if IE 9]></video><![endif]--> <img src="/team/images/2020_1.png"
						srcset="/team/images/2020_1.png?interpolation=lanczos-none&amp;resize=140:140, /team/images/2020_1.png?interpolation=lanczos-none&amp;resize=280:280 2x"
						alt="Tokyo 2020"></picture>
					<div class="text-box">
						<h1>
							<a href="/team/index">Tokyo 2020</a>
						</h1>
					</div>
				</article>
			</div>
		</section>

		<section class="id-card gallery-js-ready games2020-1">
			<div class="holder">
				<div class="frame" style="height: 68px; overflow: hidden;">
					<ul
						style="position: relative; height: 100%; margin-left: -165.012px;">
						<li class=""
							style="position: absolute; left: 3180px; width: 1060px;">
							<div class="text-box">
								<strong class="title">Date</strong> 24 Jul - 09 Aug
							</div>
						</li>
						<li style="position: absolute; left: -1060px; width: 1060px;"
							class="">
							<div class="text-box">
								<strong class="title">Country</strong> <a href="/japan">Japan</a>
							</div>
						</li>
						<li id="countdown" data-start-time="07/24/2020 09:32:00"
							style="position: absolute; left: 0px; width: 1060px;" class="">
							<div class="text-box">
								<strong class="title">CountDown</strong> <span class="days">378</span>
								Days To Go
							</div>
						</li>
						<li style="position: absolute; left: 1060px; width: 1060px;"
							class="">
							<div class="text-box">
								<strong class="title">Website</strong> <a
									href="https://tokyo2020.org/en/">tokyo2020.org</a>
							</div>
						</li>
						<li style="position: absolute; left: 2120px; width: 1060px;"
							class="active">
							<div class="text-box">
								<strong class="title">Follow</strong> <a class="ss-icon"
									href="https://www.facebook.com/tokyo2020.jp">facebook</a> <a
									class="ss-icon" href="https://twitter.com/Tokyo2020">twitter</a>
								<a class="ss-icon" href="http://www.youtube.com/tokyo2020">youtube</a>
							</div>
						</li>
					</ul>
				</div>
				<div class="switcher">
					<ul>
						<li class=""><a href="#">1</a></li>
						<li class=""><a href="#">2</a></li>
						<li class=""><a href="#">3</a></li>
						<li class=""><a href="#">4</a></li>
						<li class="active"><a href="#">5</a></li>
					</ul>
				</div>
			</div>
		</section>

	</div>

	<section
		class="cta-carousel-news gallery-js-ready autorotation-disabled">
		<div class="holder">
			<div class="heading">
				<h2>Latest news</h2>
				<ul class="add-links">
					<li><a href="/team/News/news">Go to News →</a></li>
				</ul>
			</div>
		</div>
		<div class="frame2">
			<span class="mask-l" style="width: 219.5px;">mask left</span> <span
				class="mask-r" style="width: 219.5px;">mask right</span>
			<div class="holder">
				<div class="frame">
					<a class="btn-prev disabled" href="#"> <span
						class="icon-arrow-left"> <span class="hide">prev</span>
					</span>
					</a> <a class="btn-next" href="#"> <span class="icon-arrow-right">
							<span class="hide">next</span>
					</span>
					</a>
					<ul class="cta-carousel-list" data-slides=""
						style="margin-left: 0px; width: 4320px;">

						<li class=""><script type="application/ld+json"></script>
						
						 <!-- 뉴스 1  -->
							<article>
								<a href="/team/News/news1"> <picture class="image">

									<source
										srcset="/team/images/2019-07-09-tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;resize=340:191;crop=340:191;*,*, /team/images/2019-07-09-tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;resize=680:382&amp;crop=680:382;*,* 2x"
										media="(min-width: 1024px)">
									<source
										srcset="/team/images/2019-07-09-tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;resize=340:191&amp;crop=340:191;*,*, /team/images/2019-07-09-tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;resize=680:382&amp;crop=680:382;*,* 2x"
										media="(min-width: 768px)">
									<!--[if IE 9]></video><![endif]--> <img
										src="/team/images/2019-07-09-tokyo-thumbnail.png"
										srcset="/team/images/2019-07-09-tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;resize=250:140&amp;crop=250:140;*,*, /team/images/2019-07-09-tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;resize=500:280&amp;crop=500:280;*,* 2x"
										alt=""></picture>

								</a> <span class="news-topic-label tokyo2020">Tokyo 2020</span>
								<h2>
									<a
										href="/team/News/news1">Great
										excitement in Japan as 3.2 million tickets sold during first
										phase of sales </a>
								</h2>
								<time datetime="09 Jul 2019">09 Jul 2019</time>
							</article></li>
							
							
						<!-- 뉴스 2 -->
						<li class=""><script type="application/ld+json"></script>
							<article>
								<a
									href="/team/News/news2">
									<picture class="image"> <!--[if IE 9]><video style="display: none;"><![endif]-->

									<source
										srcset="/team/images/2019-07-08-weightlifting-thumbnail.jpg?interpolation=lanczos-none&amp;resize=340:191&amp;crop=340:191;*,*, /team/images/2019-07-08-weightlifting-thumbnail.jpg?interpolation=lanczos-none&amp;resize=680:382&amp;crop=680:382;*,* 2x"
										media="(min-width: 1024px)">
									<source
										srcset="/team/images/2019-07-08-weightlifting-thumbnail.jpg?interpolation=lanczos-none&amp;resize340:191&amp;crop=340:191;*,*, /team/images/2019-07-08-weightlifting-thumbnail.jpg?interpolation=lanczos-none&amp;resize=680:382&amp;crop=680:382;*,* 2x"
										media="(min-width: 768px)">
									<!--[if IE 9]></video><![endif]--> <img
										src="/team/images/2019-07-08-weightlifting-thumbnail.jpg"
										srcset="/team/images/2019-07-08-weightlifting-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|250:140&amp;crop=250:140;*,*, /team/images/2019-07-08-weightlifting-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|500:280&amp;crop=500:280;*,* 2x"
										alt=""></picture>

								</a> <span class="news-topic-label tokyo2020">Tokyo 2020</span>
								<h2>
									<a
										href="/team/News/news2">Tokyo
										International Forum sets new standard for watching
										weightlifting </a>
								</h2>
								<time datetime="08 Jul 2019">08 Jul 2019</time>
							</article></li>
							
							
						<!-- 뉴스3 -->
						<li class=""><script type="application/ld+json"></script>
							<article>
								<a
									href="/team/News/news3">
									<picture class="image"> <!--[if IE 9]><video style="display: none;"><![endif]-->

									<source
										srcset="/team/images/2019-07-01-Pent-thumbnail.jpg?interpolation=lanczos-none&amp;resize=340:191&amp;crop=340:191;*,*, /team/images/2019-07-01-Pent-thumbnail.jpg?interpolation=lanczos-none&amp;resize=680:382&amp;crop=680:382;*,* 2x"
										media="(min-width: 1024px)">
									<source
										srcset="/team/images/2019-07-01-Pent-thumbnail.jpg?interpolation=lanczos-none&amp;resize=340:191&amp;crop=340:191;*,*, /team/images/2019-07-01-Pent-thumbnail.jpg?interpolation=lanczos-none&amp;resize=680:382&amp;crop=680:382;*,* 2x"
										media="(min-width: 768px)">
									<!--[if IE 9]></video><![endif]--> <img
										src="/team/images/2019-07-01-Pent-thumbnail.jpg"
										srcset="/team/images/2019-07-01-Pent-thumbnail.jpg?interpolation=lanczos-none&amp;resize=250:140&amp;crop=250:140;*,*, /team/images/2019-07-01-Pent-thumbnail.jpg?interpolation=lanczos-none&amp;resize=500:280&amp;crop=500:280;*,* 2x"
										alt=""></picture>

								</a> <span class="news-topic-label tokyo2020">Tokyo 2020</span>
								<h2>
									<a
										href="/team/News/news3">Tokyo
										looks back to the future with modern pentathlon test success </a>
								</h2>
								<time datetime="01 Jul 2019">01 Jul 2019</time>
							</article></li>
							
							
						<!-- 뉴스 4 -->
						<li class=""><script type="application/ld+json"></script>
							<article>
								<a
									href="/team/News/news4">
									<picture class="image"> <!--[if IE 9]><video style="display: none;"><![endif]-->

									<source
										srcset="/team/images/2019-06-18-rowing-canoe-thumbnail.jpg?interpolation=lanczos-none&amp;resize=340:191&amp;crop=340:191;*,*, /team/images/2019-06-18-rowing-canoe-thumbnail.jpg?interpolation=lanczos-none&amp;resize=680:382&amp;crop=680:382;*,* 2x"
										media="(min-width: 1024px)">
									<source
										srcset="/team/images/2019-06-18-rowing-canoe-thumbnail.jpg?interpolation=lanczos-none&amp;resize=340:191&amp;crop=340:191;*,*, /team/images/2019-06-18-rowing-canoe-thumbnail.jpg?interpolation=lanczos-none&amp;resize=680:382&amp;crop=680:382;*,* 2x"
										media="(min-width: 768px)">
									<!--[if IE 9]></video><![endif]--> <img
										src="/team/images/2019-06-18-rowing-canoe-thumbnail.jpg"
										srcset="/team/images/2019-06-18-rowing-canoe-thumbnail.jpg?interpolation=lanczos-none&amp;resize=250:140&amp;crop=250:140;*,*, /team/images/2019-06-18-rowing-canoe-thumbnail.jpg?interpolation=lanczos-none&amp;resize=500:280&amp;crop=500:280;*,* 2x"
										alt=""></picture>

								</a> <span class="news-topic-label tokyo2020">Tokyo 2020</span>
								<h2>
									<a
										href="/team/News/news4">Rowing
										and canoe venues for Tokyo 2020 inaugurated </a>
								</h2>
								<time datetime="18 Jun 2019">18 Jun 2019</time>
							</article></li>
						
						
						<!-- 뉴스 5 -->
						<li class=""><script type="application/ld+json"></script>
							<article>
								<a href="/team/News/news5">
									<picture class="image"> <!--[if IE 9]><video style="display: none;"><![endif]-->

									<source
										srcset="/team/images/2019-06-17-tokyo-flowers-thumbnail.jpg?interpolation=lanczos-none&amp;resize=340:191&amp;crop=340:191;*,*, /team/images/2019-06-17-tokyo-flowers-thumbnail.jpg?interpolation=lanczos-none&amp;resize=680:382&amp;crop=680:382;*,* 2x"
										media="(min-width: 1024px)">
									<source
										srcset="/team/images/2019-06-17-tokyo-flowers-thumbnail.jpg?interpolation=lanczos-none&amp;resize=340:191&amp;crop=340:191;*,*, /team/images/2019-06-17-tokyo-flowers-thumbnail.jpg?interpolation=lanczos-none&amp;resize=680:382&amp;crop=680:382;*,* 2x"
										media="(min-width: 768px)">
									<!--[if IE 9]></video><![endif]--> <img
										src="/team/images/2019-06-17-tokyo-flowers-thumbnail.jpg"
										srcset="/team/images/2019-06-17-tokyo-flowers-thumbnail.jpg?interpolation=lanczos-none&amp;resize=250:140&amp;crop=250:140;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/06/17/Tokyo/2019-06-17-tokyo-flowers-thumbnail.jpg?interpolation=lanczos-none&amp;resize=500:280&amp;crop=500:280;*,* 2x"
										alt=""></picture>

								</a> <span class="news-topic-label tokyo2020">Tokyo 2020</span>
								<h2>
									<a href="/team/News/news5">Tokyo
										2020 flower lanes will welcome spectators </a>
								</h2>
								<time datetime="17 Jun 2019">17 Jun 2019</time>
							</article></li>
						
						<!-- 뉴스 6 -->
						<li class=""><script type="application/ld+json"></script>
							<article>
								<a
									href="/team/News/news6">
									<picture class="image"> <!--[if IE 9]><video style="display: none;"><![endif]-->

									<source
										srcset="/team/images/2019_06_15_Softball_Victoria_Hayward_thumbnail_02.jpg?interpolation=lanczos-none&amp;resize=340:191&amp;crop=340:191;*,*, /team/images/2019_06_15_Softball_Victoria_Hayward_thumbnail_02.jpg?interpolation=lanczos-none&amp;resize=680:382&amp;crop=680:382;*,* 2x"
										media="(min-width: 1024px)">
									<source
										srcset="/team/images/2019_06_15_Softball_Victoria_Hayward_thumbnail_02.jpg?interpolation=lanczos-none&amp;resize=340:191&amp;crop=340:191;*,*, /team/images/2019_06_15_Softball_Victoria_Hayward_thumbnail_02.jpg?interpolation=lanczos-none&amp;resize=680:382&amp;crop=680:382;*,* 2x"
										media="(min-width: 768px)">
									<!--[if IE 9]></video><![endif]--> <img
										src="/team/images/2019-06-15_Softball-Victoria-Hayward-thumbnail-02.jpg"
										srcset="/team/images/2019-06-15_Softball-Victoria-Hayward-thumbnail-02.jpg?interpolation=lanczos-none&amp;resize=250:140&amp;crop=250:140;*,*, /team/images/2019_06_15_Softball_Victoria_Hayward_thumbnail_02.jpg?interpolation=lanczos-none&amp;resize=500:280&amp;crop=500:280;*,* 2x"
										alt=""></picture>

								</a> <span class="news-topic-label tokyo2020">Tokyo 2020</span>
								<h2>
									<a
										href="/team/News/news6">Secrets
										of softball with Canada’s Victoria Hayward</a>
								</h2>
								<time datetime="15 Jun 2019">15 Jun 2019</time>
							</article></li>
					</ul>
				</div>
			</div>
		</div>
	</section>


	<div id="main">
		<div class="main-holder main-container">
			<div class="boxes alt2 ajax-content">
				<article id="box-c97c83c382fb4aeda771720e58afd5d0"
					class="box same-height-left same-height-right"
					style="height: 742px;">
					<!-- TOKYO 2020 LAUNCHES TICKET LOTTERY -->
					<span class="image"> <a
						href="/team/news/tokyo-2020-launches-ticket-lottery"> <picture
								class="image"> <!--[if IE 9]><video style="display: none;"><![endif]-->

							<source
								srcset="/team/images/2019-05-09-tokyo-thumbnail2.jpg?interpolation=lanczos-none&amp;resize=1060:600&amp;crop=1060:600;*,*, /team/images/2019-05-09-tokyo-thumbnail2.jpg?interpolation=lanczos-none&amp;resize=2120:1200&amp;crop=2120:1200;*,* 2x"
								media="(min-width: 1024px)">
							<source
								srcset="/team/images/2019-05-09-tokyo-thumbnail2.jpg?interpolation=lanczos-none&amp;resize=658:343&amp;crop=658:343;*,*, /team/images/2019-05-09-tokyo-thumbnail2.jpg?interpolation=lanczos-none&amp;resize=1316:686&amp;crop=1316:686;*,* 2x"
								media="(min-width: 768px)">
							<!--[if IE 9]></video><![endif]--> <img
								src="/team/images/2019-05-09-tokyo-thumbnail2.jpg"
								srcset="/team/images/2019/05/09/2019-05-09-tokyo-thumbnail2.jpg?interpolation=lanczos-none&amp;resize=280:157&amp;crop=280:157;*,*, /team/images/2019-05-09-tokyo-thumbnail2.jpg?interpolation=lanczos-none&amp;resize=560:314&amp;crop=560:314;*,* 2x"
								alt=""></picture>
					</a>
					</span>
					<!-- 티켓팅 제목 -->
					<h2>
						<a href="/news/tokyo-2020-launches-ticket-lottery"> Tokyo 2020
							launches ticket lottery </a>
					</h2>

					<!-- 티켓팅 날짜 -->
					<time datetime="09 May 2019">09 May 2019</time>
				</article>
			</div>

			<!-- 탭, 페이징 기능 및 네비 -->
			<noscript>
				<div class="paging">
					<ul>
						<li><a><span class="icon-arrow-left"><span
									class="hide">&lt;</span></span></a></li>
						<li><a class="next"
							href="https://www.olympic.org/tokyo-2020/0" rel="next"><span
								class="icon-arrow-right"><span class="hide">&gt;</span></span></a></li>
					</ul>
				</div>
			</noscript>
			</section>
			<hr>
			<section class="tabs-section alt" id="tabsSection">
				<nav>
					<div class="tabset-box">
						<select class="nav-select"><option class="opt-level-1"
								value="#more-about">More about</option>
							<option class="opt-level-1" value="#more-about-the-election">
								More about the election</option>
							<option class="opt-level-1" value="#emblem">Emblem</option>
							<option class="opt-level-1" value="#mascot">Mascot</option>
							<option class="opt-level-1" value="#torch">Torch</option>
							<option class="opt-level-1" value="#sports-programme">
								Sports Programme</option>
						</select>
						<ul class="tabset">


							<li class="active"><a href="#more-about"
								data-class="games2020-1" target="" class="games2020-1"> More
									about <i class="icon-arrow-right"> <span class="hide">arrow</span>
								</i>
							</a></li>

							<li class=""><a href="#more-about-the-election"
								data-class="games2020-1" target=""> More about the election
									<i class="icon-arrow-right"> <span class="hide">arrow</span>
								</i>
							</a></li>

							<li class=""><a href="#emblem" data-class="games2020-1"
								target=""> Emblem <i class="icon-arrow-right"> <span
										class="hide">arrow</span>
								</i>
							</a></li>

							<li class=""><a href="#mascot" data-class="games2020-1"
								target=""> Mascot <i class="icon-arrow-right"> <span
										class="hide">arrow</span>
								</i>
							</a></li>

							<li class=""><a href="#torch" data-class="games2020-1"
								target=""> Torch <i class="icon-arrow-right"> <span
										class="hide">arrow</span>
								</i>
							</a></li>

							<li class=""><a href="#sports-programme"
								data-class="games2020-1" target=""> Sports Programme <i
									class="icon-arrow-right"> <span class="hide">arrow</span>
								</i>
							</a></li>
						</ul>
					</div>

				</nav>


				<!-- more about 내용 -->
				<div id="more-about" class="" style="display: block;">


					<section class="text-post">

						<div>
							<p>Fifty-six years after having organised the Olympic Games,
								the Japanese capital will be hosting a Summer edition for the
								second time, from 24 July to 9 August 2020. The Games in 1964
								radically transformed the country. According to the organisers
								of the event in 2020, the Games of the XXXII Olympiad of the
								modern era will be “the most innovative ever organised, and will
								rest on three fundamental principles to transform the world:
								striving for your personal best (achieving your personal best);
								accepting one another (unity in diversity); and passing on a
								legacy for the future (connecting to tomorrow)”.</p>

							<p>Aligning with the reforms advocated by Olympic Agenda
								2020, the Tokyo Games will use as many existing competition
								venues as possible, namely those built for the Games in 1964,
								such as the prestigious Nippon Budokkan for judo, the Baji Koen
								Park for equestrian events, and the Yoyogi National Gymnasium
								for handball. The Tokyo National Stadium, where the Opening and
								Closing Ceremonies and athletics competitions will be staged,
								will be completely revamped and replaced by a new arena.</p>

							<p>Japan has been an Olympic land since the Summer Games of
								1964, which were the first to be staged in Asia. In 2020, the
								country will host its fourth Games, if we include the Winter
								Games of 1972 in Sapporo and of 1998 in Nagano.</p>
						</div>
					</section>

				</div>

				<!-- more about the election 내용 -->
				<div id="more-about-the-election" class="js-tab-hidden"
					style="display: none; width: 3821px;">


					<section class="text-post">

						<div>
							<p>On September 7, 2013, the International Olympic Committee
								awarded the Games of the XXXII Olympiad in 2020 to Tokyo, which
								was chosen over fellow Candidate Cities Istanbul and Madrid
								after two rounds of voting during the 125th IOC Session in
								Buenos Aires.</p>
							<p>Tokyo received 60 votes to Istanbul’s 36 in the final
								round, with Madrid having been eliminated in the first round
								after losing a tie-breaker with Istanbul. Tokyo, which also bid
								for the 2016 Olympic Games, previously hosted the Games in 1964.</p>
							<p>“Congratulations to the city of Tokyo on its election as
								host of the 2020 Olympic Games,” said IOC President Jacques
								Rogge.. “Tokyo presented a very strong technical bid from the
								outset – and it needed to in competition with two such
								high-calibre bids from Istanbul and Madrid. All three cities
								were capable of staging excellent Games in 2020, but in the end
								it was Tokyo’s bid that resonated the most with the IOC
								membership, inviting us to “discover tomorrow” by delivering a
								well-organised and safe Games that will reinforce the Olympic
								values while demonstrating the benefits of sport to a new
								generation.”</p>
							<p>
								<strong>RESULTS:</strong>
							</p>
							<p>
								<span style="text-decoration: underline;">Round 1</span><br>
								Tokyo: 42<br> Istanbul: 26<br> Madrid: 26
							</p>
							<p>
								<span style="text-decoration: underline;">Round 1
									tie-breaker</span><br> Istanbul: 49<br> Madrid: 45
							</p>
							<p>
								<span style="text-decoration: underline;">Round 2</span><br>
								Tokyo: 60<br> Istanbul: 36
							</p>
						</div>
					</section>
				</div>

				<!-- emblem 내용 -->
				<div id="emblem" class="js-tab-hidden"
					style="display: none; width: 700px;">


					<section class="text-post">

						<div>
							<picture>
							<source media="(min-width: 768px)"
								srcset="/team/images/Tokyo_2020_emblem.jpg?interpolation=lanczos-none&resize=350:*, /team/images/Tokyo_2020_emblem.jpg?interpolation=lanczos-none&resize=700:* 2x">
							<img alt="Tokyo 2020 Emblem"
								srcset="/team/images/Tokyo_2020_emblem.jpg?interpolation=lanczos-none&resize=350:*, /team/images/Tokyo_2020_emblem.jpg?interpolation=lanczos-none&resize=700:* 2x" style="width: 700px;"></picture>
						</div>
					</section>

				</div>


				<!-- mascot 내용 -->
				<div id="mascot" class="js-tab-hidden"
					style="display: none; width: 1377px;">

					<section class="text-post">
						<div>
							<picture>
							<source media="(min-width: 768px)"
								srcset="/team/images/Tokyo_2020_tab.jpg?interpolation=lanczos-none&amp;resize=350:*, /team/images/Tokyo_2020_tab.jpg?interpolation=lanczos-none&amp;resize=700:* 2x">
							<img alt=""
								srcset="/team/images/Tokyo_2020_tab.jpg?interpolation=lanczos-none&amp;resize=350:*, /team/images/Tokyo_2020_tab.jpg?interpolation=lanczos-none&amp;resize=700:* 2x"
								style="width: 700px;"></picture>
							<p>
								<br>
							</p>
							<p>
								The Olympic mascot is called Miraitowa, which is derived from
								the Japanese words <em>mirai</em> (future) and <em>towa</em>
								(eternity). This name was chosen to promote a future full of
								eternal hope in the hearts of people all over the world.
							</p>
							<div>
								<p>
									&nbsp; <span class="btn-more-ext"><a
										href="tokyo-2020-mascot">More info</a></span>
								</p>
							</div>
						</div>
					</section>

				</div>
				<div id="torch" class="js-tab-hidden"
					style="display: none; width: 1445px;">


					<section class="text-post">

						<div>
							<p>
								<picture>
								<source media="(min-width: 768px)"
									srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Torchs/Summer/Tokyo_2020/Tokyo-2020-Torch-tab-small.jpg?interpolation=lanczos-none&amp;resize=700:*, https://stillmed.olympic.org/media/Images/OlympicOrg/Torchs/Summer/Tokyo_2020/Tokyo-2020-Torch-tab-small.jpg?interpolation=lanczos-none&amp;resize=1400:* 2x">
								<img alt=""
									srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Torchs/Summer/Tokyo_2020/Tokyo-2020-Torch-tab-small.jpg?interpolation=lanczos-none&amp;resize=350:*, https://stillmed.olympic.org/media/Images/OlympicOrg/Torchs/Summer/Tokyo_2020/Tokyo-2020-Torch-tab-small.jpg?interpolation=lanczos-none&amp;resize=700:* 2x"></picture>
							</p>
							<p>The Olympic torch for the Olympic Games Tokyo 2020
								incorporates several elements of Japanese culture, and
								reinforces Tokyo 2020’s Olympic Torch Relay concept: “Hope
								lights our way”.</p>
							<p>The concept is designed to bring the Japanese people
								together around messages of support, acceptance and
								encouragement of one another, while also reflecting the Olympic
								flame’s ability to promote peace and hope to the world.</p>
							<p>Not only do Japan’s famed cherry blossoms happen to bloom
								in March, coinciding with the start of the Olympic Torch Relay,
								but the shape of the torch also resembles a Japanese traditional
								“Sakuramon” cherry blossom emblem.</p>
							<span class="btn-more-ext"><a
								href="/tokyo-2020-torch-relay">More info</a></span>
						</div>
					</section>

				</div>
				<div id="sports-programme" class="js-tab-hidden"
					style="display: none; width: 3905px;">


					<section class="text-post">

						<div>
							<p>
								<picture>
								<source media="(min-width: 768px)"
									srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Games/Summer/Tokyo_2020/Tokyo-2020-Sports-Programme-TAB.jpg?interpolation=lanczos-none&amp;resize=700:*, https://stillmed.olympic.org/media/Images/OlympicOrg/Games/Summer/Tokyo_2020/Tokyo-2020-Sports-Programme-TAB.jpg?interpolation=lanczos-none&amp;resize=1400:* 2x">
								<img alt=""
									srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Games/Summer/Tokyo_2020/Tokyo-2020-Sports-Programme-TAB.jpg?interpolation=lanczos-none&amp;resize=350:*, https://stillmed.olympic.org/media/Images/OlympicOrg/Games/Summer/Tokyo_2020/Tokyo-2020-Sports-Programme-TAB.jpg?interpolation=lanczos-none&amp;resize=700:* 2x"></picture>
								<span class="label-photo"><span class="sss-picture"></span>Illustration
									by Taisei Corporation, Azusa Sekkei, Kengo Kuma and Associates</span>
							</p>
							<p>As the Olympic Games make their way back to Tokyo for the
								first time since 1964, the Tokyo 2020 Sports programme features
								several innovations. In addition to the 28 sports on the Olympic
								Programme, five additional sports have been added at the request
								of the Tokyo 2020 Organising Committee: Baseball/Softball,
								Karate, Skateboarding, Sport climbing and Surfing. This will add
								to the Games youth and urban appeal. Meanwhile, with 165 events
								for men, 156 for women and 18 mixed or open events, Tokyo is
								also on track to be the most gender equal Olympic Games yet with
								a predicted 48.2% participation by women.</p>
							<p>
								<a target="_blank" class="sss-file"
									href="https://stillmed.olympic.org/media/Document%20Library/OlympicOrg/Games/Summer-Games/Games-Tokyo-2020-Olympic-Games/Programme-Tokyo2020-EN.pdf">Discover
									the Tokyo 2020 Sports programme here.</a>
							</p>
						</div>
					</section>

				</div>
			</section>
			<hr>
			<script type="application/ld+json">{

}</script>
			<section class="main-video">
				<div class="video">
					<picture>
					<source
						srcset="https://stillmed.olympic.org/media/Videos/2013/09/07/Tokyos%20big%20moment/Tokyos%20big%20moment_thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|1060:600&amp;crop=1060:600;*,*, https://stillmed.olympic.org/media/Videos/2013/09/07/Tokyos%20big%20moment/Tokyos%20big%20moment_thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|2120:1200&amp;crop=2120:1200;*,* 2x"
						media="(min-width: 1024px)">
					<source
						srcset="https://stillmed.olympic.org/media/Videos/2013/09/07/Tokyos%20big%20moment/Tokyos%20big%20moment_thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|658:343&amp;crop=658:343;*,*, https://stillmed.olympic.org/media/Videos/2013/09/07/Tokyos%20big%20moment/Tokyos%20big%20moment_thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|1316:686&amp;crop=1316:686;*,* 2x"
						media="(min-width: 768px)">
					<img
						src="https://stillmed.olympic.org/media/Videos/2013/09/07/Tokyos%20big%20moment/Tokyos%20big%20moment_thumbnail.jpg"
						srcset="https://stillmed.olympic.org/media/Videos/2013/09/07/Tokyos%20big%20moment/Tokyos%20big%20moment_thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|320:140&amp;crop=320:140;*,*, https://stillmed.olympic.org/media/Videos/2013/09/07/Tokyos%20big%20moment/Tokyos%20big%20moment_thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|640:280&amp;crop=640:280;*,* 2x"
						alt=""></picture>
					<a
						href="/ajaxscript/showvideolightboxalone/{68CD742E-089A-49F2-9F2E-37031BFCF81E}/"
						data-href="/ajaxscript/showvideolightboxalone/{68CD742E-089A-49F2-9F2E-37031BFCF81E}/"
						data-ocvideoid="" data-playerid="oc"
						class="btn-play sss-play lightbox-link" rel="group3"> <span
						class="hide">play</span>
					</a>
				</div>


				<h2>
					<a
						href="/sitecore/content/Home/Games/Summer Games/Summer/Tokyo 2020">
						Tokyo 2020's big moment </a>
				</h2>
			</section>
			<hr>
			<section class="related-posts">
				<header class="heading">
					<h2>Featured Stories</h2>
					<ul class="add-links">
						<li><a href="Go to Featured Stories">Go to Featured
								Stories →</a></li>
					</ul>
				</header>
				<div id="ajax-area-82ad86a7473e40099352c28c5d9af4e1"
					class="boxes alt ajax-area" data-tmpl="newsthumbMed_tmpl">
					<div class="ajax-content">
						<article id="box-1923409ae2cc4a5483fcef6265866e4f"
							class="box same-height-left" style="height: 454px;">
							<script type="application/ld+json">{

}</script>
							<span class="image"> <a
								href="/news/tokyo-2020-unveils-games-pictograms"> <picture
										class="image">

									<source
										srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/03/12/2019-03-12-pictograms-tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|520:292&amp;crop=520:292;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/03/12/2019-03-12-pictograms-tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|1040:584&amp;crop=1040:584;*,* 2x"
										media="(min-width: 1024px)">
									<source
										srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/03/12/2019-03-12-pictograms-tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|326:183&amp;crop=326:183;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/03/12/2019-03-12-pictograms-tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|652:366&amp;crop=652:366;*,* 2x"
										media="(min-width: 768px)">
									<img
										src="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/03/12/2019-03-12-pictograms-tokyo-thumbnail.jpg"
										srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/03/12/2019-03-12-pictograms-tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|280:157&amp;crop=280:157;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/03/12/2019-03-12-pictograms-tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|560:314&amp;crop=560:314;*,* 2x"
										alt=""></picture> <span class="news-topic-label tokyo2020">Tokyo
										2020</span>
							</a>
							</span>
							<h2>
								<a href="/news/tokyo-2020-unveils-games-pictograms"> Tokyo
									2020 unveils Games pictograms </a>
							</h2>
							<time datetime="12 Mar 2019">12 Mar 2019</time>
						</article>
						<article id="box-6045c97e014a421a8f6862711c7bcb33"
							class="box same-height-right" style="height: 454px;">
							<script type="application/ld+json">{

}</script>
							<span class="image"> <a
								href="/news/tokyo-2020-reveals-olympic-torch-design-ambassadors-and-relay-emblem">
									<picture class="image">

									<source
										srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/03/20/otr/2019-03-20-Tokyo-2020-otr-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|520:292&amp;crop=520:292;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/03/20/otr/2019-03-20-Tokyo-2020-otr-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|1040:584&amp;crop=1040:584;*,* 2x"
										media="(min-width: 1024px)">
									<source
										srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/03/20/otr/2019-03-20-Tokyo-2020-otr-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|326:183&amp;crop=326:183;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/03/20/otr/2019-03-20-Tokyo-2020-otr-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|652:366&amp;crop=652:366;*,* 2x"
										media="(min-width: 768px)">
									<img
										src="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/03/20/otr/2019-03-20-Tokyo-2020-otr-thumbnail.jpg"
										srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/03/20/otr/2019-03-20-Tokyo-2020-otr-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|280:157&amp;crop=280:157;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/News/2019/03/20/otr/2019-03-20-Tokyo-2020-otr-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|560:314&amp;crop=560:314;*,* 2x"
										alt=""></picture> <span class="news-topic-label tokyo2020">Tokyo
										2020</span>
							</a>
							</span>
							<h2>
								<a
									href="/news/tokyo-2020-reveals-olympic-torch-design-ambassadors-and-relay-emblem">
									Tokyo 2020 reveals Olympic torch design, Ambassadors and Relay
									emblem </a>
							</h2>
							<time datetime="20 Mar 2019">20 Mar 2019</time>
						</article>
						<article id="box-85dc5bb703d84cdd82ecc71b8200e73e"
							class="box same-height-left" style="height: 454px;">
							<script type="application/ld+json">
}</script>
							<span class="image"> <a
								href="/news/tokyo-2020-sports-programme-what-to-watch-when">
									<picture class="image">

									<source
										srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2018/09/11/2018-09-11-Tokyo-2020-Sports-Programme-thumbnail-1.jpg?interpolation=lanczos-none&amp;fit=around|520:292&amp;crop=520:292;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/News/2018/09/11/2018-09-11-Tokyo-2020-Sports-Programme-thumbnail-1.jpg?interpolation=lanczos-none&amp;fit=around|1040:584&amp;crop=1040:584;*,* 2x"
										media="(min-width: 1024px)">
									<source
										srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2018/09/11/2018-09-11-Tokyo-2020-Sports-Programme-thumbnail-1.jpg?interpolation=lanczos-none&amp;fit=around|326:183&amp;crop=326:183;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/News/2018/09/11/2018-09-11-Tokyo-2020-Sports-Programme-thumbnail-1.jpg?interpolation=lanczos-none&amp;fit=around|652:366&amp;crop=652:366;*,* 2x"
										media="(min-width: 768px)">
									<img
										src="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2018/09/11/2018-09-11-Tokyo-2020-Sports-Programme-thumbnail-1.jpg"
										srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2018/09/11/2018-09-11-Tokyo-2020-Sports-Programme-thumbnail-1.jpg?interpolation=lanczos-none&amp;fit=around|280:157&amp;crop=280:157;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/News/2018/09/11/2018-09-11-Tokyo-2020-Sports-Programme-thumbnail-1.jpg?interpolation=lanczos-none&amp;fit=around|560:314&amp;crop=560:314;*,* 2x"
										alt=""></picture> <span class="news-topic-label tokyo2020">Tokyo
										2020</span>
							</a>
							</span>
							<h2>
								<a href="/news/tokyo-2020-sports-programme-what-to-watch-when">
									Tokyo 2020 sports programme: what to watch when </a>
							</h2>
							<time datetime="11 Sep 2018">11 Sep 2018</time>
						</article>
						<article id="box-f484ef6323ec4df08f0ef06f08ea6c6f"
							class="box same-height-right" style="height: 454px;">
							<script type="application/ld+json">{
  
}</script>
							<span class="image"> <a
								href="/news/naomi-kawase-appointed-to-direct-the-official-film-of-tokyo-2020">
									<picture class="image">

									<source
										srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2018/10/23/2018-10-23-Tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|520:292&amp;crop=520:292;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/News/2018/10/23/2018-10-23-Tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|1040:584&amp;crop=1040:584;*,* 2x"
										media="(min-width: 1024px)">
									<source
										srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2018/10/23/2018-10-23-Tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|326:183&amp;crop=326:183;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/News/2018/10/23/2018-10-23-Tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|652:366&amp;crop=652:366;*,* 2x"
										media="(min-width: 768px)">
									<!--[if IE 9]></video><![endif]--> <img
										src="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2018/10/23/2018-10-23-Tokyo-thumbnail.jpg"
										srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/News/2018/10/23/2018-10-23-Tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|280:157&amp;crop=280:157;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/News/2018/10/23/2018-10-23-Tokyo-thumbnail.jpg?interpolation=lanczos-none&amp;fit=around|560:314&amp;crop=560:314;*,* 2x"
										alt="Naomi Kawase appointed to direct the Official Film of the Olympic Games Tokyo 2020"></picture>

									<span class="news-topic-label tokyo2020">Tokyo 2020</span>
							</a>
							</span>
							<h2>
								<a
									href="/news/naomi-kawase-appointed-to-direct-the-official-film-of-tokyo-2020">
									Naomi Kawase appointed to direct the Official Film of Tokyo
									2020 </a>
							</h2>
							<time datetime="23 Oct 2018">23 Oct 2018</time>
						</article>
					</div>
					<noscript>
						<div class="paging">
							<ul>
								<li><a><span class="icon-arrow-left"><span
											class="hide">&lt;</span></span></a></li>
								<li><a class="next"
									href="https://www.olympic.org/tokyo-2020/0" rel="next"><span
										class="icon-arrow-right"><span class="hide">&gt;</span></span></a></li>
							</ul>
						</div>
					</noscript>
				</div>
			</section>
			<hr>
			<section class="mosaic-box">
				<header class="heading">
					<h2>Gallery</h2>
				</header>

				<div class="ajax-area-mosaic" data-tmpl="photoItem_tmpl">
					<div class="Collage effect-parent images ajax-content">
						<div class="Image_Wrapper scroll-item"
							style="width: 222px; height: 373px; margin-bottom: 10px; margin-right: 10px; display: inline-block; vertical-align: bottom; overflow: hidden; opacity: 1;">
							<a href="/photos/tokyo-2020-torch-relay-5" class="lightbox-link"
								data-href="#popupa25ddf3ba73649908daa27bc0c2d5b60"
								rel="lightbox01"> <picture class="img image1"> <!--[if IE 9]><video style="display: none;"><![endif]-->

								<source
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-06.jpg?interpolation=lanczos-none&amp;resize=*:480, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-06.jpg?interpolation=lanczos-none&amp;resize=*:960 2x"
									media="(min-width: 1024px)">
								<source
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-06.jpg?interpolation=lanczos-none&amp;resize=*:310, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-06.jpg?interpolation=lanczos-none&amp;resize=*:620 2x"
									media="(min-width: 768px)">
								<!--[if IE 9]></video><![endif]--> <img
									src="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-06.jpg"
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-06.jpg?interpolation=lanczos-none&amp;resize=*:185, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-06.jpg?interpolation=lanczos-none&amp;resize=*:370 2x"
									alt="Tokyo 2020 Torch Relay"
									style="width: 222px; height: 373px;"></picture>

							</a>

							<div class="lightbox-article"
								id="popupa25ddf3ba73649908daa27bc0c2d5b60">
								<span class="image js-lightbox-image"> <span
									class="holder"> <picture> <img
											data-src="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-06.jpg?interpolation=lanczos-none&amp;resize=*:1600, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-06.jpg?interpolation=lanczos-none&amp;resize=*:3200 2x"
											alt="Image Alt Text" style="width: 222px; height: 373px;">
										</picture>
								</span>
								</span>
								<div class="text-box js-lightbox-aside">
									<h2>Tokyo 2020 Torch Relay</h2>
									<div></div>

									<div class="tags">
										<strong><a
											href="/search?q=Tokyo 2020&amp;filter=photos">Tokyo 2020</a></strong>
										, <strong><a
											href="/search?q=Olympic Torch Relay&amp;filter=photos">Olympic
												Torch Relay</a></strong>
									</div>

									<span class="label-photo"><span class="sss-picture"></span>IOC</span>

									<ul class="social-col">
										<li><a class="facebook"
											href="http://www.facebook.com/sharer/sharer.php?u=https://www.olympic.org/photos/tokyo-2020-torch-relay-5"><span
												class="ico ss-icon">facebook</span><span class="txt">Share</span></a></li>

										<li><a class="twitter"
											href="http://twitter.com/share?url=https://www.olympic.org/photos/tokyo-2020-torch-relay-5&amp;text=Tokyo 2020 Torch Relay&amp;via=olympics"><span
												class="ico ss-icon">twitter</span><span class="txt">tweet</span></a></li>
									</ul>
								</div>
							</div>

						</div>
						<div class="Image_Wrapper scroll-item"
							style="width: 265px; height: 373px; margin-bottom: 10px; margin-right: 10px; display: inline-block; vertical-align: bottom; overflow: hidden; opacity: 1;">
							<a href="/photos/tokyo-2020-torch-relay-4" class="lightbox-link"
								data-href="#popup79015ca1ba6a4704b6bc44e80e335c19"
								rel="lightbox01"> <picture class="img image1"> <!--[if IE 9]><video style="display: none;"><![endif]-->

								<source
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-05.jpg?interpolation=lanczos-none&amp;resize=*:480, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-05.jpg?interpolation=lanczos-none&amp;resize=*:960 2x"
									media="(min-width: 1024px)">
								<source
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-05.jpg?interpolation=lanczos-none&amp;resize=*:310, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-05.jpg?interpolation=lanczos-none&amp;resize=*:620 2x"
									media="(min-width: 768px)">
								<!--[if IE 9]></video><![endif]--> <img
									src="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-05.jpg"
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-05.jpg?interpolation=lanczos-none&amp;resize=*:185, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-05.jpg?interpolation=lanczos-none&amp;resize=*:370 2x"
									alt="Tokyo 2020 Torch Relay"
									style="width: 265px; height: 373px;"></picture>

							</a>

							<div class="lightbox-article"
								id="popup79015ca1ba6a4704b6bc44e80e335c19">
								<span class="image js-lightbox-image"> <span
									class="holder"> <picture> <img
											data-src="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-05.jpg?interpolation=lanczos-none&amp;resize=*:1600, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-05.jpg?interpolation=lanczos-none&amp;resize=*:3200 2x"
											alt="Image Alt Text" style="width: 265px; height: 373px;">
										</picture>
								</span>
								</span>
								<div class="text-box js-lightbox-aside">
									<h2>Tokyo 2020 Torch Relay</h2>
									<div></div>

									<div class="tags">
										<strong><a
											href="/search?q=Tokyo 2020&amp;filter=photos">Tokyo 2020</a></strong>
										, <strong><a
											href="/search?q=Olympic Torch Relay&amp;filter=photos">Olympic
												Torch Relay</a></strong>
									</div>

									<span class="label-photo"><span class="sss-picture"></span>Getty
										Images</span>

									<ul class="social-col">
										<li><a class="facebook"
											href="http://www.facebook.com/sharer/sharer.php?u=https://www.olympic.org/photos/tokyo-2020-torch-relay-4"><span
												class="ico ss-icon">facebook</span><span class="txt">Share</span></a></li>

										<li><a class="twitter"
											href="http://twitter.com/share?url=https://www.olympic.org/photos/tokyo-2020-torch-relay-4&amp;text=Tokyo 2020 Torch Relay&amp;via=olympics"><span
												class="ico ss-icon">twitter</span><span class="txt">tweet</span></a></li>
									</ul>
								</div>
							</div>

						</div>
						<div class="Image_Wrapper scroll-item"
							style="width: 560px; height: 373px; margin-bottom: 10px; margin-right: 0px; display: inline-block; vertical-align: bottom; overflow: hidden; opacity: 1;">
							<a href="/photos/tokyo-2020-torch-relay-3" class="lightbox-link"
								data-href="#popupd4c750ed65e14325895f6dbd83ac306b"
								rel="lightbox01"> <picture class="img image1"> <!--[if IE 9]><video style="display: none;"><![endif]-->

								<source
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-04.jpg?interpolation=lanczos-none&amp;resize=*:480, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-04.jpg?interpolation=lanczos-none&amp;resize=*:960 2x"
									media="(min-width: 1024px)">
								<source
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-04.jpg?interpolation=lanczos-none&amp;resize=*:310, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-04.jpg?interpolation=lanczos-none&amp;resize=*:620 2x"
									media="(min-width: 768px)">
								<!--[if IE 9]></video><![endif]--> <img
									src="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-04.jpg"
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-04.jpg?interpolation=lanczos-none&amp;resize=*:185, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-04.jpg?interpolation=lanczos-none&amp;resize=*:370 2x"
									alt="Tokyo 2020 Torch Relay"
									style="width: 560px; height: 373px;"></picture>

							</a>

							<div class="lightbox-article"
								id="popupd4c750ed65e14325895f6dbd83ac306b">
								<span class="image js-lightbox-image"> <span
									class="holder"> <picture> <img
											data-src="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-04.jpg?interpolation=lanczos-none&amp;resize=*:1600, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-04.jpg?interpolation=lanczos-none&amp;resize=*:3200 2x"
											alt="Image Alt Text" style="width: 560px; height: 373px;">
										</picture>
								</span>
								</span>
								<div class="text-box js-lightbox-aside">
									<h2>Tokyo 2020 Torch Relay</h2>
									<div></div>

									<div class="tags">
										<strong><a
											href="/search?q=Tokyo 2020&amp;filter=photos">Tokyo 2020</a></strong>
										, <strong><a
											href="/search?q=Olympic Torch Relay&amp;filter=photos">Olympic
												Torch Relay</a></strong>
									</div>

									<span class="label-photo"><span class="sss-picture"></span>Getty
										Images</span>

									<ul class="social-col">
										<li><a class="facebook"
											href="http://www.facebook.com/sharer/sharer.php?u=https://www.olympic.org/photos/tokyo-2020-torch-relay-3"><span
												class="ico ss-icon">facebook</span><span class="txt">Share</span></a></li>

										<li><a class="twitter"
											href="http://twitter.com/share?url=https://www.olympic.org/photos/tokyo-2020-torch-relay-3&amp;text=Tokyo 2020 Torch Relay&amp;via=olympics"><span
												class="ico ss-icon">twitter</span><span class="txt">tweet</span></a></li>
									</ul>
								</div>
							</div>

						</div>
						<div class="Image_Wrapper scroll-item"
							style="width: 276px; height: 277px; margin-bottom: 10px; margin-right: 10px; display: inline-block; vertical-align: bottom; overflow: hidden; opacity: 1;">
							<a href="/photos/tokyo-2020-torch-relay-2" class="lightbox-link"
								data-href="#popup8b2eba355e2c4c5d84b3d1a46e47c797"
								rel="lightbox01"> <picture class="img image1"> <!--[if IE 9]><video style="display: none;"><![endif]-->

								<source
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-03.jpg?interpolation=lanczos-none&amp;resize=*:480, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-03.jpg?interpolation=lanczos-none&amp;resize=*:960 2x"
									media="(min-width: 1024px)">
								<source
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-03.jpg?interpolation=lanczos-none&amp;resize=*:310, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-03.jpg?interpolation=lanczos-none&amp;resize=*:620 2x"
									media="(min-width: 768px)">
								<!--[if IE 9]></video><![endif]--> <img
									src="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-03.jpg"
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-03.jpg?interpolation=lanczos-none&amp;resize=*:185, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-03.jpg?interpolation=lanczos-none&amp;resize=*:370 2x"
									alt="Tokyo 2020 Torch Relay"
									style="width: 276px; height: 277px;"></picture>

							</a>

							<div class="lightbox-article"
								id="popup8b2eba355e2c4c5d84b3d1a46e47c797">
								<span class="image js-lightbox-image"> <span
									class="holder"> <picture> <img
											data-src="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-03.jpg?interpolation=lanczos-none&amp;resize=*:1600, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-03.jpg?interpolation=lanczos-none&amp;resize=*:3200 2x"
											alt="Image Alt Text" style="width: 276px; height: 277px;">
										</picture>
								</span>
								</span>
								<div class="text-box js-lightbox-aside">
									<h2>Tokyo 2020 Torch Relay</h2>
									<div></div>

									<div class="tags">
										<strong><a
											href="/search?q=Tokyo 2020&amp;filter=photos">Tokyo 2020</a></strong>
										, <strong><a
											href="/search?q=Olympic Torch Relay&amp;filter=photos">Olympic
												Torch Relay</a></strong>
									</div>

									<span class="label-photo"><span class="sss-picture"></span>IOC</span>

									<ul class="social-col">
										<li><a class="facebook"
											href="http://www.facebook.com/sharer/sharer.php?u=https://www.olympic.org/photos/tokyo-2020-torch-relay-2"><span
												class="ico ss-icon">facebook</span><span class="txt">Share</span></a></li>

										<li><a class="twitter"
											href="http://twitter.com/share?url=https://www.olympic.org/photos/tokyo-2020-torch-relay-2&amp;text=Tokyo 2020 Torch Relay&amp;via=olympics"><span
												class="ico ss-icon">twitter</span><span class="txt">tweet</span></a></li>
									</ul>
								</div>
							</div>

						</div>
						<div class="Image_Wrapper scroll-item"
							style="width: 276px; height: 277px; margin-bottom: 10px; margin-right: 10px; display: inline-block; vertical-align: bottom; overflow: hidden; opacity: 1;">
							<a href="/photos/tokyo-2020-torch-relay-1" class="lightbox-link"
								data-href="#popup00233fa077314f96a1f7a0a4405da80c"
								rel="lightbox01"> <picture class="img image1"> <!--[if IE 9]><video style="display: none;"><![endif]-->

								<source
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-02.jpg?interpolation=lanczos-none&amp;resize=*:480, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-02.jpg?interpolation=lanczos-none&amp;resize=*:960 2x"
									media="(min-width: 1024px)">
								<source
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-02.jpg?interpolation=lanczos-none&amp;resize=*:310, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-02.jpg?interpolation=lanczos-none&amp;resize=*:620 2x"
									media="(min-width: 768px)">
								<!--[if IE 9]></video><![endif]--> <img
									src="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-02.jpg"
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-02.jpg?interpolation=lanczos-none&amp;resize=*:185, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-02.jpg?interpolation=lanczos-none&amp;resize=*:370 2x"
									alt="Tokyo 2020 Torch Relay"
									style="width: 276px; height: 277px;"></picture>

							</a>

							<div class="lightbox-article"
								id="popup00233fa077314f96a1f7a0a4405da80c">
								<span class="image js-lightbox-image"> <span
									class="holder"> <picture> <img
											data-src="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-02.jpg?interpolation=lanczos-none&amp;resize=*:1600, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-02.jpg?interpolation=lanczos-none&amp;resize=*:3200 2x"
											alt="Image Alt Text" style="width: 276px; height: 277px;">
										</picture>
								</span>
								</span>
								<div class="text-box js-lightbox-aside">
									<h2>Tokyo 2020 Torch Relay</h2>
									<div></div>

									<div class="tags">
										<strong><a
											href="/search?q=Tokyo 2020&amp;filter=photos">Tokyo 2020</a></strong>
										, <strong><a
											href="/search?q=Olympic Torch Relay&amp;filter=photos">Olympic
												Torch Relay</a></strong>
									</div>

									<span class="label-photo"><span class="sss-picture"></span>IOC</span>

									<ul class="social-col">
										<li><a class="facebook"
											href="http://www.facebook.com/sharer/sharer.php?u=https://www.olympic.org/photos/tokyo-2020-torch-relay-1"><span
												class="ico ss-icon">facebook</span><span class="txt">Share</span></a></li>

										<li><a class="twitter"
											href="http://twitter.com/share?url=https://www.olympic.org/photos/tokyo-2020-torch-relay-1&amp;text=Tokyo 2020 Torch Relay&amp;via=olympics"><span
												class="ico ss-icon">twitter</span><span class="txt">tweet</span></a></li>
									</ul>
								</div>
							</div>

						</div>
						<div class="Image_Wrapper scroll-item"
							style="width: 495px; height: 277px; margin-bottom: 10px; margin-right: 0px; display: inline-block; vertical-align: bottom; overflow: hidden; opacity: 1;">
							<a href="/photos/tokyo-2020-torch-relay" class="lightbox-link"
								data-href="#popupadcb701126a342f1b6af786deb8b80d7"
								rel="lightbox01"> <picture class="img image1"> <!--[if IE 9]><video style="display: none;"><![endif]-->

								<source
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-01.jpg?interpolation=lanczos-none&amp;resize=*:480, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-01.jpg?interpolation=lanczos-none&amp;resize=*:960 2x"
									media="(min-width: 1024px)">
								<source
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-01.jpg?interpolation=lanczos-none&amp;resize=*:310, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-01.jpg?interpolation=lanczos-none&amp;resize=*:620 2x"
									media="(min-width: 768px)">
								<!--[if IE 9]></video><![endif]--> <img
									src="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-01.jpg"
									srcset="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-01.jpg?interpolation=lanczos-none&amp;resize=*:185, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-01.jpg?interpolation=lanczos-none&amp;resize=*:370 2x"
									alt="Tokyo 2020 Torch Relay"
									style="width: 495px; height: 277px;"></picture>

							</a>

							<div class="lightbox-article"
								id="popupadcb701126a342f1b6af786deb8b80d7">
								<span class="image js-lightbox-image"> <span
									class="holder"> <picture> <img
											data-src="https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-01.jpg?interpolation=lanczos-none&amp;resize=*:1600, https://stillmed.olympic.org/media/Photos/2019/06/04/Tokyo-2020-Torch-Relay-01.jpg?interpolation=lanczos-none&amp;resize=*:3200 2x"
											alt="Image Alt Text" style="width: 495px; height: 277px;">
										</picture>
								</span>
								</span>
								<div class="text-box js-lightbox-aside">
									<h2>Tokyo 2020 Torch Relay</h2>
									<div></div>

									<div class="tags">
										<strong><a
											href="/search?q=Tokyo 2020&amp;filter=photos">Tokyo 2020</a></strong>
										, <strong><a
											href="/search?q=Olympic Torch Relay&amp;filter=photos">Olympic
												Torch Relay</a></strong>
									</div>

									<span class="label-photo"><span class="sss-picture"></span>IOC</span>

									<ul class="social-col">
										<li><a class="facebook"
											href="http://www.facebook.com/sharer/sharer.php?u=https://www.olympic.org/photos/tokyo-2020-torch-relay"><span
												class="ico ss-icon">facebook</span><span class="txt">Share</span></a></li>

										<li><a class="twitter"
											href="http://twitter.com/share?url=https://www.olympic.org/photos/tokyo-2020-torch-relay&amp;text=Tokyo 2020 Torch Relay&amp;via=olympics"><span
												class="ico ss-icon">twitter</span><span class="txt">tweet</span></a></li>
									</ul>
								</div>
							</div>

						</div>
					</div>
					<span class="btn-more"><a
						href="/ajaxscript/loadmoremedias/%7B82AD86A7-473E-4009-9352-C28C5D9AF4E1%7D/6/0/"
						title="More">More</a></span>
				</div>



			</section>

			<hr>
			<hr>
			<section
				class="cta-carousel-games gallery-js-ready not-enough-slides autorotation-disabled">
				<div class="heading">
					<h2>All Olympic Games</h2>
					<ul class="add-links">
						<li><a href="/olympic-games">All Olympic Games →</a></li>
					</ul>
				</div>
				<div class="holder">
					<a href="#" class="btn-prev"> <span class="icon-arrow-left">
							<span class="hide"></span>
					</span>
					</a> <a href="#" class="btn-next"> <span class="icon-arrow-right">
							<span class="hide"></span>
					</span>
					</a>
					<div class="frame">
						<ul
							data-slides="/ajaxscript/timeline/{82AD86A7-473E-4009-9352-C28C5D9AF4E1}"
							data-tmpl="gamesTimeline_tmpl"
							style="width: 1080px; margin-left: 0px;">
							<li class="active"><a href="/rio-2016"> <picture
										class="image"> <!--[if IE 9]><video style="display: none;"><![endif]-->
									<source
										srcset="https://stillimg.olympic.org/games/170x170/2016_1.png?interpolation=lanczos-none&amp;resize=170:170, https://stillimg.olympic.org/games/170x170/2016_1.png?interpolation=lanczos-none&amp;resize=340:340 2x"
										media="(min-width: 768px)">
									<!--[if IE 9]></video><![endif]--> <img
										srcset="https://stillimg.olympic.org/games/170x170/2016_1.png?interpolation=lanczos-none&amp;resize=140:140, https://stillimg.olympic.org/games/170x170/2016_1.png?interpolation=lanczos-none&amp;resize=280:280 2x"
										alt="Rio 2016"> </picture> Rio 2016
							</a></li>
							<li><a href="/pyeongchang-2018"> <picture class="image">
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source
										srcset="https://stillimg.olympic.org/games/170x170/2018_2.png?interpolation=lanczos-none&amp;resize=170:170, https://stillimg.olympic.org/games/170x170/2018_2.png?interpolation=lanczos-none&amp;resize=340:340 2x"
										media="(min-width: 768px)">
									<!--[if IE 9]></video><![endif]--> <img
										srcset="https://stillimg.olympic.org/games/170x170/2018_2.png?interpolation=lanczos-none&amp;resize=140:140, https://stillimg.olympic.org/games/170x170/2018_2.png?interpolation=lanczos-none&amp;resize=280:280 2x"
										alt="PyeongChang 2018"> </picture> PyeongChang 2018
							</a></li>
							<li><a href="/tokyo-2020"> <picture class="image">
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source
										srcset="https://stillimg.olympic.org/games/170x170/2020_1.png?interpolation=lanczos-none&amp;resize=170:170, https://stillimg.olympic.org/games/170x170/2020_1.png?interpolation=lanczos-none&amp;resize=340:340 2x"
										media="(min-width: 768px)">
									<!--[if IE 9]></video><![endif]--> <img
										srcset="https://stillimg.olympic.org/games/170x170/2020_1.png?interpolation=lanczos-none&amp;resize=140:140, https://stillimg.olympic.org/games/170x170/2020_1.png?interpolation=lanczos-none&amp;resize=280:280 2x"
										alt="Tokyo 2020"> </picture> Tokyo 2020
							</a></li>
							<li><a href="/beijing-2022"> <picture class="image">
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source
										srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Games/Winter/Beijing_2022/Beijing_2022_emblem.png?interpolation=lanczos-none&amp;resize=170:170, https://stillmed.olympic.org/media/Images/OlympicOrg/Games/Winter/Beijing_2022/Beijing_2022_emblem.png?interpolation=lanczos-none&amp;resize=340:340 2x"
										media="(min-width: 768px)">
									<!--[if IE 9]></video><![endif]--> <img
										srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Games/Winter/Beijing_2022/Beijing_2022_emblem.png?interpolation=lanczos-none&amp;resize=140:140, https://stillmed.olympic.org/media/Images/OlympicOrg/Games/Winter/Beijing_2022/Beijing_2022_emblem.png?interpolation=lanczos-none&amp;resize=280:280 2x"
										alt="Beijing 2022"> </picture> Beijing 2022
							</a></li>
						</ul>
					</div>
				</div>
			</section>



			<a href="#wrapper" class="accessibility">back to top</a>

			<div class="popup-holder">
				<div id="popup2" class="lightbox-link simple-size">
					<div class="share-social">
						<h2>Share this!</h2>
						<ul class="social-networks">
							<li><a
								href="http://www.facebook.com/sharer/sharer.php?u=https%3a%2f%2fwww.olympic.org%2ftokyo-2020"
								onclick="ga('send', 'social', 'Facebook', 'share', 'https://www.olympic.org/tokyo-2020');"
								class="facebook" target="_blank"></a></li>
							<li><a
								href="http://twitter.com/share?url=https%3a%2f%2fwww.olympic.org%2ftokyo-2020&amp;text=2020+Olympics+-+Next+Summer+Olympic+Games+%7c+Tokyo+2020+++++&amp;via=olympics"
								onclick="ga('send', 'social', 'Twitter', 'share', 'https://www.olympic.org/tokyo-2020');"
								class="twitter" target="_blank"></a></li>
							<li><a
								href="http://www.linkedin.com/shareArticle?url=https%3a%2f%2fwww.olympic.org%2ftokyo-2020&amp;title=2020+Olympics+-+Next+Summer+Olympic+Games+%7c+Tokyo+2020+++++&amp;summary=2020+Olympics+-+Next+Summer+Olympic+Games+%7c+Tokyo+2020+++++"
								onclick="ga('send', 'social', 'Linkedin', 'share', 'https://www.olympic.org/tokyo-2020');"
								class="linkedin" target="_blank"></a></li>
							<li><a
								href="https://pinterest.com/pin/create/button/?url=https%3a%2f%2fwww.olympic.org%2ftokyo-2020&amp;media=&amp;description=2020+Olympics+-+Next+Summer+Olympic+Games+%7c+Tokyo+2020+++++"
								onclick="ga('send', 'social', 'Pinterest', 'share', 'https://www.olympic.org/tokyo-2020');"
								class="pinterest" target="_blank"></a></li>
							<li><a
								href="http://vk.com/share.php?url=https%3a%2f%2fwww.olympic.org%2ftokyo-2020&amp;title=2020+Olympics+-+Next+Summer+Olympic+Games+%7c+Tokyo+2020+++++&amp;description=2020+Olympics+-+Next+Summer+Olympic+Games+%7c+Tokyo+2020+++++&amp;image="
								onclick="ga('send', 'social', 'Vkontakte', 'share', 'https://www.olympic.org/tokyo-2020');"
								class="vkontakte" target="_blank"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>
			<a href="#wrapper" class="accessibility">back to top</a>
		<jsp:include page="footer.jsp" />
</div>

</body>
</html>