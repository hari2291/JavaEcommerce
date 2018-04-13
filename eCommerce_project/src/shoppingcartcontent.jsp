

<section id="cart" class="page-holder ">
	<div class="container">
		<div class="row blankrow"></div>
		<div class="row blankrow"></div>
		<div class="row ">
			<div class="col-xs-12 col-md-6" id="cartDetails">
				<jsp:include page="cartDetails.jsp"></jsp:include>
			</div>
			<div class="col-xs-12 col-md-6 ">
				<div id="login"><jsp:include page="headerLogin.jsp"></jsp:include></div>
				<div id="register"><jsp:include page="register.jsp"></jsp:include></div>
				<div id="address"><jsp:include page="address.jsp"></jsp:include></div>
				<div id="paymentoption"><jsp:include page="paymentoption.jsp"></jsp:include></div>
			</div>

			<script type="text/javascript">
				checkIfUserLoggedIn('${UserSession}');
			</script>

		</div>
		<div class="row blankrow"></div>

	</div>

</section>

