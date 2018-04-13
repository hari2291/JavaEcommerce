<!DOCTYPE html>


<form action="confirmOrderAjax.do" id="paymentSubmit" method="post" name="paymentSubmit">
	<div class="box">
		<div class="icon-holder small badge-style">
			<i class="fa fa-check-circle-o "></i> <span class="triangle"></span>
		</div>
		<div class="box-holder">
			<div class="miniblankrow"></div>
			<h2>Payment Option</h2>
			<div class="row">
				<div class="col-xs-12 col-md-12">
					<div class="table-form ">
						<div class="row">
							<div class="col-xs-12 col-md-12">
								<input type="radio" class="le-input" name="paymentOption"
									value="COD">&nbsp;Cash On Delivery
							</div>
							<div class="col-xs-12 col-md-12">
								<input type="radio" class="le-input" name="paymentOption"
									value="Online">&nbsp;Online Payment (Debit Card, Credit
								Cart, NetBanking)
							</div>
							<div class="col-xs-12 col-md-12">
								<input type="radio" class="le-input" name="paymentOption"
									value="Test">&nbsp;Test Order
							</div>
						</div>
						<div class="miniblankrow"></div>
						<div class="col-xs-12 col-md-12">
							<div class="table-form ">
								<div class="row">
									<div class="col-xs-12 col-md-12 centerAligned">
										<div class="field-group">
											<a href="javascript:placeOrder();" class="le-btn small">Place
												Order</a>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>

				</div>

			</div>

		</div>
	</div>
</form>