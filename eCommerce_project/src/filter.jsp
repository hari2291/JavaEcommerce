<%@ taglib prefix="custom" uri="customTag"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="col-xs-12 col-md-3">
	<div class="sidebar">
		<div class="accordion-widget category-accordions widget">
			<div class="icon-holder small">
				<i class="fa fa-chain"></i> <span class="triangle"></span>
			</div>
			<h2>categories</h2>
			<div class="accordion">
				<div class="accordion-group">
					<div id="collapseOne" class="accordion-body collapse in">
						<div class="accordion-inner">
							<ul>
								<c:forEach var="category" items="${childCategoryList}"
									varStatus="count">
									<li><a href="#">${category.name}</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- <div class="price-filter widget">
			<div class="icon-holder small">
				<i class="fa fa-dollar"></i> <span class="triangle"></span>
			</div>
			<h2>price filter</h2>
			<div class="price-range-holder">

				<input type="text" class="price-slider" value=""> <span
					class="min-max"> Price: $100 - $700 </span> <span
					class="filter-button"> <a href="#">filter</a>
				</span>
			</div>
		</div>  -->


		<div class="size-filter widget">
			<div class="icon-holder small">
				<i class="fa fa-cube"></i> <span class="triangle"></span>
			</div>
			<h2>size filter</h2>
			<div class="accordion">
				<div class="accordion-group">
					<div id="collapseOne" class="accordion-body collapse in">
						<div class="accordion-inner">
							<ul>
								<c:forEach var="sizeData" items="${sizeList}"
									varStatus="count">
									<li><a href="#">${sizeData.text}</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>