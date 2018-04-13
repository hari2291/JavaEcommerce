<!DOCTYPE html>
<%@ taglib prefix="custom" uri="customTag"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<header id="header_nav">
	<div class="container header-row">
		<div class="row">
			<div class="top-nav-holder">

				<div class="col-xs-12 col-md-2 col-lg-3">
					<div class="logo">
						<a href="index.html"> <img
							id="storelogo" class="dynamicImage" src='${custom:getImagePath(storeData.logoId)}' alt="logo" />
							<!-- <span>MarQet</span>  -->
						</a>
					</div>
				</div>
				<!-- <div class="col-xs-12 col-md-2 col-lg-1"></div>  -->
				<div class="col-xs-12 col-md-6 col-lg-7  nav-menu top-menu-holder">
					<div class="row">
						<nav class="hidden-xs visible-sm visible-lg visible-md ">
							<ul class="nav">
								<c:forEach var="category" items="${categoryMap}"
									varStatus="count">
									<li class="col-lg-4"><a
										href="productList.html?categoryId=${category.key}"><img class="dynamicImage"
											src="${custom:getImagePath(category.value.imageId)}"></img>${category.value.name}</a>
									</li>
								</c:forEach>
							</ul>
						</nav>
					</div>
				</div>
				<jsp:include page="headerCart.jsp"></jsp:include>
			</div>
		</div>
	</div>
	<!-- <div id="fixedSeperator" class="miniblankrow"></div>  -->

</header>

