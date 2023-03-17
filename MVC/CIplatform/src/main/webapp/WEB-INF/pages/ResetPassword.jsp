<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;900&display=swap"
	rel="stylesheet">
<title>Reset password</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<link rel="icon" href="" type="images/x-icon">
<link rel="stylesheet" href="css/ResetPass.css">
<script type="text/javascript" src="<c:url value='../js/home.js'/>"></script>
</head>


<body>

	<div class="main">

		<div class="container-fluid">

			<div class="row">

				<div class="col-md-8 m-auto">

					<div id="carouselExampleDark" class="carousel carousel-dark slide"
						data-bs-ride="carousel">
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#carouselExampleDark"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Slide 1"></button>
							<button type="button" data-bs-target="#carouselExampleDark"
								data-bs-slide-to="1" aria-label="Slide 2"></button>
							<button type="button" data-bs-target="#carouselExampleDark"
								data-bs-slide-to="2" aria-label="Slide 3"></button>
							<button type="button" data-bs-target="#carouselExampleDark"
								data-bs-slide-to="3" aria-label="Slide 4"></button>
						</div>
						<div class="carousel-inner">

							<div class="carousel-item active" data-bs-interval="1000">
								<img
									src="images/Grow-Trees-On-the-path-to-environment-sustainability-login.png"
									class="d-block w-100 size-fix" alt="...">
								<div class="carousel-caption d-none d-md-block"
									style="color: white; text-align: left;">
									<h5>Lorem ipsum dolor sit amet consectetur.</h5>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Quia mollitia excepturi tenetur architecto saepe enim
										facere tempora minus earum similique.</p>
								</div>
							</div>
							<div class="carousel-item" data-bs-interval="2000">
								<img
									src="images/Grow-Trees-On-the-path-to-environment-sustainability-login.png"
									class="d-block w-100 size-fix" alt="...">
								<div class="carousel-caption d-none d-md-block"
									style="color: white; text-align: left;">
									<h5>Lorem ipsum dolor sit amet consectetur.</h5>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Quia mollitia excepturi tenetur architecto saepe enim
										facere tempora minus earum similique.</p>
								</div>
							</div>
							<div class="carousel-item" data-bs-interval="2000">
								<img
									src="images/Grow-Trees-On-the-path-to-environment-sustainability-login.png"
									class="d-block w-100 size-fix" alt="...">
								<div class="carousel-caption d-none d-md-block"
									style="color: white; text-align: left;">
									<h5>Lorem ipsum dolor sit amet consectetur.</h5>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Quia mollitia excepturi tenetur architecto saepe enim
										facere tempora minus earum similique.</p>
								</div>
							</div>
							<div class="carousel-item" data-bs-interval="2000">
								<img
									src="images/Grow-Trees-On-the-path-to-environment-sustainability-login.png"
									class="d-block w-100 size-fix" alt="...">
								<div class="carousel-caption d-none d-md-block"
									style="color: white; text-align: left;">
									<h5>Lorem ipsum dolor sit amet consectetur.</h5>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Quia mollitia excepturi tenetur architecto saepe enim
										facere tempora minus earum similique.</p>
								</div>
							</div>

						</div>
					</div>

				</div>
				<div
					class="col-md-4 col-sm-12 d-flex flex-column justify-content-between">
					<div class="row"></div>
					<div class="row">
						<div class="myform form">
							<div class="logo mb-3">
								<div class="col-md-12 text-center newpass">
									<h4 style="font-size: 22px;">New Password</h4>
									<p style="font-size: 12px;">Please enter a new password in
										the fields below.</p>
								</div>
							</div>
							<form action="../passwordReset" method="POST" name="login">
								<input type="hidden" name="email" value="${email}">
								<div class="form-group" style="padding-bottom: 4%;">
									<label for="exampleInputEmail1" class="box">New
										Password</label> <input type="password" name="password" id="password"
										class="form-control" aria-describedby="emailHelp"
										placeholder="**********" required>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1" class="box">Confirm
										Password</label> <input type="password" name="confpassword"
										id="password" class="form-control"
										aria-describedby="emailHelp" placeholder="**********" required>
								</div>
								<div class="col-md-12 d-grid gap-2 text-center mt-4">
									<button type="submit"
										class=" btn btn-block mybtn btn-outline-warning tx-tfm"
										style="border-radius: 50px;" onclick="return verifyPassword()">Change
										password</button>
								</div>
								<div class="form-group mt-3 link">
									<p class="text-center lostpass"
										style="font-size: 14px; color: #8d8a8a;">
										<a href="/D:/Project/SRS/HTML/ForgotPass.html"
											style="color: grey !important; font-weight: 500;">Login</a>
									</p>
								</div>
							</form>

						</div>
						<div class="privacylogin"
							style="font-size: 0.8rem; color: #8d8a8a;">
							<p>Privacy Policy</p>
						</div>
					</div>


				</div>

			</div>
		</div>


	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
		integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
		crossorigin="anonymous"></script>
</body>

</html>