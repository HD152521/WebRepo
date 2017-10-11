<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@
	page import="org.dimigo.vo.UserVO"%>

<!DOCTYPE html>
<html lang="ko">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link rel="stylesheet" href="/WebClass/css/footer.css">
<link rel="stylesheet" href="/WebClass/css/test.css">

<script>
	function menu_over(e) {
		e.setAttribute("class", "nav-item active");
	}
	function menu_out(e) {
		e.setAttribute("class", "nav-item");
	}
</script>

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/WebClass/css/test.css">
<script type="text/javascript" src="../js/test1.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
		style="width: 100%;">
		<a class="navbar-brand" href="#">Home</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<%@ include file="menu.jsp"%>
			<%
				UserVO user = (UserVO) session.getAttribute("user");
				if (user == null) {
			%>
			<%-- 세션이 없는 경우 --%>
			<a class="text-bold text-white" style="text-decoration: none"
				href="/WebClass/jsp/login.jsp">Sign in</a> <span
				class="text-bold text-white">&nbsp; or &nbsp;</span> <a
				class="text-bold text-white" style="text-decoration: none"
				href="/WebClass/jsp/signup.jsp">Sign up</a>

			<%
				} else {
			%>
			<%-- 세션이 있는 경우 --%>
			<ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
				<li class="nav-item dropdown"><a
					class="nav-item nav-link dropdown-toggle mr-md-2" href="#"
					id="bd-versions" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <%=user.getName() + "님"%>
				</a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="bd-versions">
						<form action="/WebClass/bloglogout" method="post">
							<button type="submit" class="dropdown-item">Sign out</button>
						</form>
						<div class="dropdown-divider"></div>
						<button type="button" class="dropdown-item">Action1</button>
						<button type="button" class="dropdown-item">Action2</button>
					</div></li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>

	<div class="modal" id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">로그인 결과</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						onClick="goTop()">Close</button>
				</div>
			</div>
		</div>
	</div>

	<div class="jumbotron jumbotron-fluid" id="main">
		<div style="text-align: right">
			<h3 style="color: white;">2521 안용식</h3>
			<h3 style="color: white;">blog</h3>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<%@ include file="footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>

	<div id="menu1" style="background-color: white; height: 1080px">
		.
		<div>
			<img src="/WebClass/image/dimigo.jpg"
				alt="Relevant textual alternative to the image" width="1800"
				height="600" style="padding-left: 150px; padding-top: 80px">
		</div>
		<div
			style="padding-top: 50px; padding-left: 700px; display: inline-block">
			<h2>나의 소개</h2>
			<ul>
				<li>이름 : 안용식</li>
				<li>학교 : 한국디지털미디어고등학교</li>
				<li>학과 : 해킹방어과</li>
				<li>학번 : 2521</li>
			</ul>
		</div>
		<div
			style="display: inline-block; padding-left: 2px; padding-top: 50px;">
			<h2>가족 관계</h2>
			<ul>
				<li>아버지</li>
				<li>어머니</li>
				<li>형</li>
				<li>나</li>
			</ul>
		</div>
	</div>
	<div style="background-color: white; height: 1080px" id="menu2">
		.
		<div class="container" style="margin-top: 55px;">
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<a
							href="https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=%EB%B0%95%EB%B3%B4%EC%98%81&oquery=%EB%B0%95%EB%B3%B4%EC%96%91&tqi=TkvCHdpVuE0sstpohnRsssssszZ-045779"
							target="_blank"> <img class="d-block w-100"
							src="/WebClass/image/1.jpg" alt="First slide">
							<div class="carousel-caption d-none d-md-block">
								<h3>좋아하는 연예인</h3>
							</div>
						</a>
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="/WebClass/image/boad.jpg"
							alt="Second slide">
						<div class="carousel-caption d-none d-md-block">
							<h3>종아하는 운동</h3>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="/WebClass/image/food.jpg"
							alt="Third slide">
						<div class="carousel-caption d-none d-md-block">
							<h3>종아하는 음식</h3>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>

		</div>

		<div
			style="margin-top: 0px; margin-left: 50px; margin-top: 50px; display: inline-block;">
			<h3 style="color: black">박보영</h3>
			<h5 style="color: black">
				박보영을 무척이나 좋아한다.<br>사실 좋아하게 된지는 1년이 <br>조금 안됬지만 박보영이 나온<br>
				드라마나 영화는 항상 챙겨보는 중이다.<br> 아무리 생각해도 박보영은 <br>너무 귀여운것 같다 ㅎㅎ
			</h5>
		</div>
		<div
			style="margin-left: 300px; margin-bottom: 300px; display: inline-block;">
			<h3 style="color: black">수상보드</h3>
			<h5 style="color: black">
				제작년에 수상보드를 처음타게 되었다.<br>지금 기억하기로 수상보드를 타고<br>물위를 달리는 기분은
				정말 끝내줬다. <br>차안에서 바람을 가르며 고속도로를<br> 달리는 것과 또 다른기분이다.<br>그런
				기분 때문에 수상보드를 <br>계속 타게 되는것 같다.
			</h5>
		</div>

		<div
			style="margin-left: 300px; margin-bottom: 300px; display: inline-block;">
			<h3 style="color: black">음식</h3>
			<h5 style="color: black">
				왠만한 음식은 다 먹을 수 있다. <br>근데 고기류를 제일 좋아한다. <br>그 중에서도 특히 소고기를
				좋아한다. <br>밥을 같이먹고 싶은 사람은 <br>항상 나를 불러 <br>단, 밥은 부름사람이<br>
				사주는 걸로 하자 ㅎㅎ
			</h5>
		</div>

	</div>

	<div style="background-color: green; height: 1080px" id="menu3">
		.

		<div
			style="margin-top: 300px; margin-left: 100px; display: inline-block;">
			<div class="card" style="width: 22rem; height: 24rem;">
				<img class="card-img-top" src="/WebClass/image/1.jpg"
					alt="Card image cap">
				<div class="card-body">
					<h4 class="card-title">박모영 실물로 보기</h4>
					<p class="card-text">항상 티비로만 보던 박보영을 실제로 티비가 아닌 실물로 보기</p>
					<a href="test_park.html" class="btn btn-primary" target="_blank">박보영
						실물 보기</a>
				</div>
			</div>
		</div>

		<div
			style="margin-left: 100px; display: inline-block; margin-bottom: 50px;">
			<div class="card" style="width: 22rem; height: 23.5rem">
				<img class="card-img-top" src="/WebClass/image/1.jpg"
					alt="Card image cap">
				<div class="card-body">
					<h4 class="card-title">세계일주하기</h4>
					<p class="card-text">어릴때 부터 꼭 해보고 싶었던 것 중 하나, 금수저가 아니더라도 꼭 할
						것이다.</p>
					<a href="http://ch.yes24.com/Article/View/34214"
						class="btn btn-primary" target="_blank">세계일주 기사</a>
				</div>
			</div>
		</div>

		<div style="margin-left: 100px; display: inline-block;">
			<div class="card" style="width: 22rem; height: 24rem;">
				<img class="card-img-top" src="/WebClass/image/space.jpg"
					alt="Card image cap" height="185">
				<div class="card-body">
					<h4 class="card-title">우주 여행</h4>
					<p class="card-text">우주는 신비롭고 아직 모르는 사실이 많다. 그래서 더욱 가보고 싶기도하다.
						어릴 때우주비행사가 꿈이었었다.</p>
					<a
						href="http://kids.hankooki.com/lpage/news/201709/kd20170906151111125650.htm"
						class="btn btn-primary" target="_blank">우주 여행후 그리웠던 점</a>
				</div>
			</div>
		</div>

		<div style="margin-left: 100px; display: inline-block;">
			<div class="card" style="width: 22rem; height: 24rem;">
				<img class="card-img-top" src="/WebClass/image/shoes.jpg"
					alt="Card image cap" height="180">
				<div class="card-body">
					<h4 class="card-title">아무 걱정 없이 쇼핑</h4>
					<p class="card-text">백화점가서 돈 걱정 없이 "여기서 부터 저기까지 다 주세요" 해보기</p>
				</div>
			</div>
		</div>

	</div>

	<script type="text/javascript" src="/WebClass/js/test.js"></script>

</body>
</html>