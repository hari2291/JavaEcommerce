<%@ taglib prefix="custom" uri="customTag"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="hideClass"></c:set>
<c:if test="${empty UserSessionCart.totalQuantity or UserSessionCart.totalQuantity le 0}">
	<c:set var="hideClass">hide</c:set>
</c:if>

<div class="col-xs-12 col-md-3 col-lg-2 basket-holder">
	<div class="basket header-cart-container">
		<div class="dropdown centerAligned">
			<a class="dropdown-toggle" data-hover="dropdown" href="#">
				<div class="basket-icon">
					<img class="svg dynamicImage" alt="basket" src="images/basket.svg" />
					<span class="item-count ${hideClass}"> ${UserSessionCart.totalQuantity}</span>
				</div> 
				<span class="total-price total-items-price ${hideClass}"> Rs. ${UserSessionCart.totalPrice
					+ shippingCost} </span>
				<span class='total-price no-items verticallyCentered <c:if test="${UserSessionCart.totalQuantity gt 0}">hideItems</c:if>'> 0 items</span>
			</a>


			<ul class="dropdown-menu header-cart" id="header-cart">
				<c:forEach var="cartItem" items="${UserSessionCart.cartItemData}"
					varStatus="count">

					<li class="cart-item">
						<div class="basket-item">
							<div class="row">
								<div class="col-xs-12 col-sm-2 col-md-4">
									<div class="thumb">
										<c:set var="imagePath">${custom:getImagePath(cartItem.imageId)}</c:set>
										<img alt="" src="${imagePath}" />
									</div>
								</div>
								<div class="col-xs-12 col-sm-10 col-md-4">
									<div class="title">${cartItem.productTitle}</div>
									<div class="price">Size :
										${custom:getStaticText(cartItem.sizeId,"size")}</div>
								</div>
								<!-- <div class="col-xs-12 col-sm-10 col-md-2 le-quantity">
									<form>

										<a class="minus" href="#reduce"></a> <input name="quantity"
											readonly="readonly" type="text" value="${cartItem.quantity}" />
										<a class="plus" href="#add"></a>
									</form>
								</div>  -->
								<div class="col-xs-12 col-sm-10 col-md-4">
									<div class="price">Rs. ${cartItem.pricePerProduct}</div>
								</div>

							</div>
							<a class="close-btn" href="#"
								onclick="javascript:updateCart(${cartItem.productId},'1','Remove');"></a>
						</div>
					</li>
				</c:forEach>
					<li class="check-out ${hideClass}">
						<div class="basket-item topcontent"></div>
					</li>  
					<li class="${hideClass}">
						<div class="basket-item">
							<div class="row">
								<div class="col-xs-12 col-sm-2 col-md-2"></div>
								<div class="col-xs-12 col-sm-10 col-md-6">
									<div class="price">Sub Total:</div>
								</div>
								<div class="col-xs-12 col-sm-10 col-md-4">
									<div class="price price-data">Rs. ${UserSessionCart.totalPrice}</div>
								</div>

							</div>
						</div>
					</li>

					<li class="${hideClass}">
						<div class="basket-item">
							<div class="row">
								<div class="col-xs-12 col-sm-2 col-md-2"></div>
								<div class="col-xs-12 col-sm-10 col-md-6">
									<div class="price">Shipping Cost:</div>
								</div>
								<div class="col-xs-12 col-sm-10 col-md-4">
									<div class="price shipping-cost">Rs. ${shippingCost}</div>
								</div>

							</div>
						</div>
					</li>

					<li class="${hideClass}">
						<div class="basket-item">
							<div class="row">
								<div class="col-xs-12 col-sm-2 col-md-2"></div>
								<div class="col-xs-12 col-sm-10 col-md-6">
									<div class="price">Total:</div>
								</div>
								<div class="col-xs-12 col-sm-10 col-md-4">
									<div class="price">
										<b class="total-cost"> Rs. ${UserSessionCart.totalPrice + shippingCost}</b>
									</div>
								</div>

							</div>
						</div>
					</li>
					<li class="${hideClass}">
						<div class="basket-item topcontent"></div>

					</li>
					<li class="checkout ${hideClass}">
						<div class="merged-buttons">
							<a href="shoppingcart.html" class="btn-add-to-cart le-btn ">checkout</a>
							<!-- <a href="shopping-cart.html" class="btn-add-to-wishlist le-btn ">show
							cart</a>  -->

						</div>

					</li>
			</ul>
			<ul class="link-list inline" id="signIn">
				<li><a href="#">sign up</a></li>
				<li><a href="#">log in</a></li>
			</ul>
		</div>
	</div>
</div>