<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Delicious Book Bread</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- Google Font -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Raleway:400,300,500,700,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css"
	type="text/css">
<!-- Theme Stylesheet -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
</head>

<body>
	<jsp:include page="include_common_top_menu.jsp"/>
	<jsp:include page="include_common_top.jsp"/>
	
	<div class="slider">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-4">
					<div class="slider small-slider">
						<div id="small-featured" class="carousel slide"
							data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#small-featured" data-slide-to="0"
									class="active"></li>
							</ol>
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active"
									style="background-image: url('images/1.불편한편의점(소설).JPG')">
									<div class="carousel-caption">
										<a href="" class="btn btn-theme">자세히&nbsp;&nbsp;&nbsp;&nbsp;></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="slider small-slider">
						<div id="small-featured" class="carousel slide"
							data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#small-featured" data-slide-to="0"
									class="active"></li>
							</ol>
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active"
									style="background-image: url('images/10.방구석미술관(예술).JPG')">
									<div class="carousel-caption">
										<a href="" class="btn btn-theme">자세히&nbsp;&nbsp;&nbsp;&nbsp;></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="slider small-slider">
						<div id="small-featured" class="carousel slide"
							data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#small-featured" data-slide-to="0"
									class="active"></li>
							</ol>
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active"
									style="background-image: url('images/11.인간관계론(자기계발).JPG')">
									<div class="carousel-caption">
										<a href="" class="btn btn-theme">자세히&nbsp;&nbsp;&nbsp;&nbsp;></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<h1>&nbsp;</h1>
				<div class="col-md-4 col-sm-4">
					<div class="slider small-slider">
						<div id="small-featured" class="carousel slide"
							data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#small-featured" data-slide-to="0"
									class="active"></li>
							</ol>
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active"
									style="background-image: url('images/12.오은영의화해(자기계발).JPG')">
									<div class="carousel-caption">
										<a href="" class="btn btn-theme">자세히&nbsp;&nbsp;&nbsp;&nbsp;></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="slider small-slider">
						<div id="small-featured" class="carousel slide"
							data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#small-featured" data-slide-to="0"
									class="active"></li>
							</ol>
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active"
									style="background-image: url('images/13.해커스토익(외국어).JPG')">
									<div class="carousel-caption">
										<a href="" class="btn btn-theme">자세히&nbsp;&nbsp;&nbsp;&nbsp;></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="slider small-slider">
						<div id="small-featured" class="carousel slide"
							data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#small-featured" data-slide-to="0"
									class="active"></li>
							</ol>
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active"
									style="background-image: url('images/15.혼자공부하는파이썬(컴퓨터).JPG')">
									<div class="carousel-caption">
										<a href="" class="btn btn-theme">자세히&nbsp;&nbsp;&nbsp;&nbsp;></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery Library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<!-- Script -->
	<script src="js/script.js"></script>
	<h1>&nbsp;</h1>
	<div id="footer">
		<!-- include_common_bottom.jsp start-->
		<jsp:include page="include_common_bottom.jsp" />
		<!-- include_common_bottom.jsp end-->
	</div>
</body>
</html>