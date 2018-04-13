<!DOCTYPE html>
<%@ taglib prefix="custom" uri="customTag"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- SLIDE SHOW START -->
<section id="banners-mosaic">
	<div class="container no-padding mosaic-holder">

		<div class="col-xs-12 col-md-6 ">
			<div class="mosaic-banner big  wow bounceInLeft">
				<img alt="" src="${custom:getImagePath(slideShow[0].imageId)}" />
				<div class="caption">
					<h1>
						<span class="light">${slideShow[0].text1}</span><br>
						${slideShow[0].text2}
					</h1>
					<a class="le-btn medium" href="${slideShow[0].link}">Browse </a>
				</div>
			</div>
		</div>
		<div class="col-xs-12 col-md-3 ">
			<div class="mosaic-banner inverse wow bounceInRight">
				<img alt="" src="${custom:getImagePath(slideShow[1].imageId)}" />
				<div class="caption">
					<h1>
						<span class="light">${slideShow[1].text1}</span><br>
						${slideShow[1].text2}
					</h1>
					<a class="le-btn medium" href="${slideShow[1].link}">Browse </a>
				</div>

			</div>
			<div class="mosaic-banner wow bounceInRight">
				<img alt="" src="${custom:getImagePath(slideShow[2].imageId)}" />
				<div class="caption">
					<h1>
						<span class="light">${slideShow[2].text1}</span><br>
						${slideShow[2].text2}
					</h1>
					<a class="le-btn medium" href="${slideShow[2].link}">Browse </a>
				</div>
			</div>
		</div>
		<div class="col-xs-12 col-md-3 ">
			<div class="mosaic-banner wow bounceInRight" data-wow-delay="0.1s">
				<img alt="" src="${custom:getImagePath(slideShow[3].imageId)}" />
				<div class="caption">
					<h1>
						<span class="light">${slideShow[3].text1}</span><br>
						${slideShow[3].text2}
					</h1>
					<a class="le-btn medium" href="${slideShow[3].link}">Browse </a>
				</div>

			</div>
			<div class="mosaic-banner wow bounceInRight" data-wow-delay="0.1s">
				<img alt="" src="${custom:getImagePath(slideShow[4].imageId)}" />
				<div class="caption">
					<h1>
						<span class="light">${slideShow[4].text1}</span><br>
						${slideShow[4].text2}
					</h1>
					<a class="le-btn medium" href="${slideShow[4].link}">Browse </a>
				</div>

			</div>
		</div>
	</div>
</section>

<!-- SLIDE SHOW END -->
