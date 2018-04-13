
<%@ taglib prefix="custom" uri="customTag"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<section id="single-product-wide" class="page-holder full-width">
	<div class="container">
		<div class="col-xs-12">
			<div id="single-product" class="row">

				<!-- PHOTO Gallery Start -->
				<div class="no-margin col-xs-12 col-sm-5 gallery-holder">
					<div
						class="product-item-holder size-big single-product-gallery small-gallery">

						<div class="single-product-slider">

							<c:forEach var="imageData" items="${productData.imageList}"
								varStatus="loop">
								<div class="single-product-gallery-item" id="slide${loop.index}">
									<c:set var="imagePath">${custom:getImagePath(imageData)}</c:set>
									<a data-rel="prettyphoto" href="${imagePath}"> <img
										class="lazy" alt="" src="${imagePath}" />
									</a>
								</div>
							</c:forEach>

						</div>

						<div class="gallery-thumbs">
							<ul>
								<c:forEach var="imageData" items="${productData.imageList}"
									varStatus="loop">
									<li <c:if test="${loop.index eq 0}">class="active"</c:if>><a
										class="horizontal-thumb" href="#slide{loop.index}"> <img
											class="lazy" alt="" src="${custom:getImagePath(imageData)}" />
									</a></li>
								</c:forEach>

							</ul>
						</div>

					</div>
				</div>
				<!-- PHOTO Gallery End -->


				<!-- Product Details Start -->
				<div class="no-margin col-xs-12 col-sm-7 body-holder">
					<div class="body">
						<h3>${productData.productTitle}</h3>


						<div class="desc">
							<p>${productData.productDesc}</p>
						</div>


						<div class="price">
							<div class="price-current">
								<span class="currency">Rs.</span>${productData.MRP}
							</div>
							<!-- <div class="price-old">
								<span class="currency">$</span>250
							</div> -->
						</div>



						<div class="buttons-holder">
							Select Size : <select
								class="variation-btn inline selectpicker capital" title="Size"
								data-width="70px" data-style="btn-inverse">
								<c:forEach var="size" items="${productData.sizeList}"
									varStatus="loop">
									<option>${size}</option>
								</c:forEach>
							</select>

							<!-- 	<div class="inline qnt-holder">
								<div class="le-quantity">
									<form>
										<a class="minus" href="#reduce"></a> <input name="quantity"
											readonly="readonly" type="text" value="1" /> <a class="plus"
											href="#add"></a>
									</form>
								</div>

							</div>  -->

							<div class="merged-buttons">
								<button class="btn-add-to-cart le-btn btn-iconic "
									onclick="javascript:updateCart(${productData.productId},'1','Add');">to
									cart</button>
								<button class="btn-add-to-wishlist le-btn btn-iconic">wishlist</button>
							</div>
						</div>
					</div>
				</div>
				<!-- Product Details End -->
			</div>

		</div>
	</div>
</section>

