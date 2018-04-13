<%@ taglib prefix="custom" uri="customTag"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="shopping-cart-page box">
	<div class="icon-holder small badge-style">
		<i class="fa fa-shopping-cart "></i> <span class="triangle"></span>
	</div>
	<div class="row cartrow topcontent">
		<div class="col-xs-12 col-md-3 desc">
			<h4>preview</h4>
		</div>
		<div class="col-xs-12 col-md-6 desc">
			<h4>product</h4>
		</div>
		<div class="col-xs-12 col-md-3 desc rightAligned">
			<h4>price</h4>
		</div>

	</div>
	<div class="row miniblankrow"></div>
	<c:forEach var="cartItem" items="${UserSessionCart.cartItemData}"
		varStatus="count">

		<div class="row cartrow">

			<div class="col-xs-12 col-md-3 thumb">
				<img alt="" src="${custom:getImagePath(cartItem.imageId)}" />
			</div>
			<div class="col-xs-12 col-md-6 desc">
				<h4>${cartItem.productTitle}</h4>
				<div>${cartItem.productDescription}</div>
				<div>Size : ${custom:getStaticText(cartItem.sizeId,"size")}</div>
			</div>


			<div class="col-xs-12 col-md-3 price rightAligned">Rs.
				${cartItem.pricePerProduct}</div>

		</div>

	</c:forEach>

	<div class="row miniblankrow rightAligned bottomcontent">
		<div class="col-xs-12 col-md-3"></div>
		<div class="col-xs-12 col-md-6 desc">
			<h4>Sub Total :</h4>

		</div>
		<div class="col-xs-12 col-md-3">Rs.
			${UserSessionCart.totalPrice}</div>

	</div>

	<div class="row miniblankrow rightAligned">
		<div class="col-xs-12 col-md-3"></div>
		<div class="col-xs-12 col-md-6 desc">
			<h4>Shipping Cost :</h4>

		</div>
		<div class="col-xs-12 col-md-3">Rs. ${shippingCost}</div>

	</div>
	<div class="row miniblankrow rightAligned">
		<div class="col-xs-12 col-md-3"></div>
		<div class="col-xs-12 col-md-6 desc">
			<h4>Total :</h4>

		</div>
		<div class="col-xs-12 col-md-3">
			<b> Rs. ${UserSessionCart.totalPrice + shippingCost}</b>
		</div>

	</div>

</div>
