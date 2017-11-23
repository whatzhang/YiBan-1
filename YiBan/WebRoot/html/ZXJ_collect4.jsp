<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>申请表模板下载</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
  ================================================== -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/zerogrid.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/component.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/responsive.css">

<link href='${pageContext.request.contextPath}/images/favicon.ico'
	rel='icon' type='image/x-icon' />
<style type="text/css">
label {
	text-align: left;
	width: 500px;
	height: 30px;
	border: 1px solid blue;
}

button {
	font-size: 12px;
	height: 25px;
	width: auto;
	border-radius: 6px;
}

.left {
	width: 90%;
	height: 100%;
	float: left;
}

.right {
	float: left;
	width: 10%;
	height: 100%;
}

p {
	height: 35px;
}
</style>
</head>
<body>
	<%
		List<String> list = (List<String>) session.getAttribute("DownInf");
	%>
	<div class="wrap-body">
		<a name="head"></a>
		<!--------------Header--------------->
		<header>
		<div class="wrap-header zerogrid">
			<div class="row">
				<div class="col-1-3">
					<div id="logo">
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/logo.png" /></a>
					</div>
				</div>
				<div class="col-2-3">
					<nav> <a class="toggleMenu" href="#">Menu</a>
					<ul class="menu">
						<li><a href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
						<li><a
							href="${pageContext.request.contextPath}/html/single.html">关于我们</a></li>
					</ul>
					</nav>
				</div>

			</div>
		</div>
		</header>


		<!--------------Content--------------->
		<section class="container page-single">
		<div class="wrap-container zerogrid">
			<div class="col-2-3">
				<div id="main-content" class="wrap-col">
					<article>
					<h3>申请表文件模板下载：</h3>
					<hr>
					<br>
					<div class="left">
						<%
							for (int i = 0; i < list.size(); i++) {
						%>
						<p><%=list.get(i)%>
						</p>
						<%
							}
						%>
					</div>
					<div class="right">
						<%
							for (int i = 0; i < list.size(); i++) {
						%>
						<p>
							<a href="downWordServlet?filename=<%=i%>">
								<button>点击下载</button>
						</p>
						<%
							}
						%>

					</div>
					<br>
					<br>
					<br>
					<br>
					</article>
				</div>
				<hr>
				<br> <br> <br> <br> <br>
				<p style="text-align: center;">注：请点击上面链接分别下载各申请表</p>
			</div>

			<div class="col-1-3">
				<div id="sidebar" class="wrap-col">
					<div class="widget wid-posts">
						<div class="wid-header">
							<h4>相关申请</h4>
						</div>
						<div class="wid-content">
							<div class="post">
								<a href="#"><img
									src="${pageContext.request.contextPath}/images/img02.jpg" /></a>
								<h6>
									<a
										href="${pageContext.request.contextPath}/html/ZXJ_collect1.html">国家奖学金申请</a>
								</h6>
								<p>2016年09月21日</p>
							</div>
							<div class="post">
								<a href="#"><img
									src="${pageContext.request.contextPath}/images/img03.jpg" /></a>
								<h6>
									<a
										href="${pageContext.request.contextPath}/html/ZXJ_collect2.html">励志奖学金申请</a>
								</h6>
								<p>2016年09月21日</p>
							</div>
							<div class="post">
								<a href="#"><img
									src="${pageContext.request.contextPath}/images/img04.jpg" /></a>
								<h6>
									<a
										href="${pageContext.request.contextPath}/html/ZXJ_collect3.html">校园奖学金申请</a>
								</h6>
								<p>2016年09月21日</p>
							</div>
							<div class="post">
								<a href="#"><img
									src="${pageContext.request.contextPath}/images/img02.jpg" /></a>
								<h6>
									<a
										href="${pageContext.request.contextPath}/html/ZXJ_collect4.html">其他申请表格</a>
								</h6>
								<p>2016年09月21日</p>
							</div>
						</div>
					</div>
					<div class="widget wid-label">
						<div class="wid-header">
							<h4>联系我们</h4>
						</div>
						<div class="wid-content">
							<span>联系邮箱：sust_helang@126.com</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a href="#head"><button id="backTop">返回顶端</button></a> </section>
		<!--------------Footer--------------->
		<footer>
		<div class="wrap-footer zerogrid">
			<div class="row">
				<div class="col-full">
					<div class="wrap-col">
						<h1>易表格</h1>
						<p>让填表成为一件享受的事情</p>
						<div class="menu-bottom">
							<ul>
								<li><a href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
								<li><a
									href="${pageContext.request.contextPath}/html/single.html">关于我们</a></li>
							</ul>
							<div class="clear"></div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="copyright">
			<p>Copyright © 2016 - 电信网络文化工作室</p>
		</div>
		</footer>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/navigation.js"></script>
</body>
</html>