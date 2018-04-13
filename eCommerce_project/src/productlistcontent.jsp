
<section id="products-grid-sidebar" class="section-products-grid">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-md-12">
				<div class="row">
					<div class="mosaic-holder col-xs-12">
						<div class="mosaic-banner big  ">
							<img width="100%" alt="" src="images/tabbed-banner-02.jpg" />
							<div class="caption ">
								<h1>
									<span class="light ">${categoryData.name}</span><br>
									collection
								</h1>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<div class="row">
			<jsp:include page="filter.jsp"></jsp:include>
			<div class="col-xs-12 col-md-9 ">
				<div class="row">
					<jsp:include page="productGroup.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</div>


</section>

