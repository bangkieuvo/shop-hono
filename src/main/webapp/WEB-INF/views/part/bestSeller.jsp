<!-- Start Product Default Slider Section -->
<div
	class="product-default-slider-section section-top-gap-100 section-fluid section-inner-bg">
	<!-- Start Section Content Text Area -->
	<div class="section-title-wrapper" data-aos="fade-up"
		data-aos-delay="0">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-content-gap">
						<div class="secton-content">
							<h3 class="section-title">BEST SELLERS</h3>
							<p>Add our best sellers to your weekly lineup.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Start Section Content Text Area -->
	<div class="product-wrapper" data-aos="fade-up" data-aos-delay="0">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="product-slider-default-1row default-slider-nav-arrow">
						<!-- Slider main container -->
						<div class="swiper-container product-default-slider-4grid-1row">
							<!-- Additional required wrapper -->
							<div class="swiper-wrapper">
								<c:if test="${not empty bestSeller}">
									<c:forEach var="product" items="${bestSeller}">
										<!-- Start Product Default Single Item -->
										<div
											class="product-default-single-item product-color--golden swiper-slide">
											<div class="image-box">
												<a href="/shop-hono/product-details/${product.productID}"
													class="image-link"> <img
													src="<c:url value="/resources/assets/images/product/list/${product.productID}.jpg"/>"
													alt=""> <img
													src="<c:url value="/resources/assets/images/product/list/${product.productID}.jpg"/>"
													alt="">
												</a>
												<div class="action-link">
													<div class="action-link-left">
														<form action="/shop-hono/addToCart" method="post">
															<input type="hidden" name="productID"
																value="${product.productID}"> <input
																type="hidden" name="url" value="${url}">
															<c:if test="${not empty customer}">
																<button type="submit"
																	style="color: white; font-size: 20">
																	<a>Add to Cart</a>
																</button>
															</c:if>
															<c:if test="${empty customer}">
																<p style="color: white;">
																	You are not loged in! <a
																		href="/shop-hono/login?url=${url}">Login</a>
																</p>
															</c:if>
														</form>
													</div>

													<div class="action-link-right">
														<c:if test="${not empty customer}">
															<a
																href="/shop-hono/addToWishList?productID=${product.productID}&&url=${url}"><i
																class="icon-heart"></i></a>
														</c:if>
														<button
															onclick="viewModalQuickView(${product.productID}, '${product.productName}', ${product.productCost},${product.quantity},'${product.description}',${not empty customer})">
															<a href="#" data-bs-toggle="modal"
																data-bs-target="#modalQuickview"><i
																class="icon-magnifier"></i></a>
														</button>

													</div>
												</div>

											</div>
											<div class="content">
												<div class="content-left">
													<h6 class="title">
														<a href="/shop-hono/product-details/${product.productID}">${product.productName}</a>
													</h6>
													<ul class="review-star">
														<li class="fill"><i class="ion-android-star"></i></li>
														<li class="fill"><i class="ion-android-star"></i></li>
														<li class="fill"><i class="ion-android-star"></i></li>
														<li class="fill"><i class="ion-android-star"></i></li>
														<li class="fill"><i class="ion-android-star"></i></li>
													</ul>
												</div>
												<div class="content-right">
													<span class="price"> price: $${product.productCost}</span>
												</div>

											</div>
										</div>
										<!-- End Product Default Single Item -->
									</c:forEach>
								</c:if>
							</div>
						</div>
						<!-- If we need navigation buttons -->
						<div class="swiper-button-prev"></div>
						<div class="swiper-button-next"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Product Default Slider Section -->