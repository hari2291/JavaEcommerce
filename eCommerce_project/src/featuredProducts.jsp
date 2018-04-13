<!DOCTYPE html>
<%@ taglib prefix="custom" uri="customTag"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--  Featured Products Start -->
<section id="featured-products">
	<div class="container">
		<div class="iconic-nav-bar">
			<div class="icon-holder">
				<i class="fa fa-star"></i> <span class="triangle"></span>
			</div>
			<div class="bar">
				<h2>
					featured <span class="bold">products</span>
				</h2>

				<div class="nav-buttons">
					<a class="btn-prev" href="#prev"></a> <a class="btn-next"
						href="#next"></a>
				</div>
			</div>

		</div>
****abc****
		<div class="products-holder product-carousel owl-carousel">

			<c:forEach var="product" items="${featureProducts}">
				<div class="product-item">
					<div class="head">
						<div class="thumb">
							<a href="product.html?productId=${product.productId}"><img
								alt="" src="${custom:getImagePath(product.imageList[0])}" /></a>
						</div>

						<div class="price">
							<!-- <div class="price-old">
										<span class="currency">Rs.</span>${product.MRP}
									</div>  -->
							<div class="price-current">
								<span class="currency">Rs.</span>${product.MRP}
							</div>
						</div>
						<!-- <div class="star-holder">
									<div class="star" data-score="5"></div>
								</div>  -->
						<!-- <button class="btn-compare  btn-iconic"></button>  -->
					</div>
					<div class="body">
						<h3>
							<a href="single-product.html">${product.productTitle}</a>
						</h3>
						<div class="excerpt">${product.productDesc}</div>

						<div class="merged-buttons">
							<!-- <button class="btn-add-to-wishlist le-btn btn-iconic">wishlist</button>  -->
							<%-- <select class="variation-btn inline selectpicker capital"
								title="Size" data-width="70px" data-style="btn-inverse">
								<option>Select Size</option>
								<c:forEach var="size" items="${product.sizeList}"
									varStatus="loop">
									<option>${custom:getStaticText(size,"size")}</option>
								</c:forEach>
							</select> --%>
							<div class="dropdown dhtmlDropdown">
							    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
							    <span class="displayText">Select Size</span>
							    <span class="caret"></span></button>
							    
							    <ul class="dhtml-dropdown-menu">
							      <li data-value="0">Select Size</li>
							      
									<c:forEach var="size" items="${product.sizeList}"
										varStatus="loop">
										<li data-value="${custom:getStaticText(size,'size')}">${custom:getStaticText(size,"size")}</li>
									</c:forEach>
							    </ul>
							  </div>
							&nbsp;
							<button class="btn-add-to-cart le-btn btn-iconic"
								onclick="javascript:updateCart(${product.productId},'1','Add',this);">
								<em>to cart</em>
								<svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
									<path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
								</svg>
								</button>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

	</div>
</section>

<!--  Featured Products Ends -->
