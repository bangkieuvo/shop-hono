<!-- Start Modal Quickview cart -->
<div class="modal fade" id="modalQuickview" tabindex="-1" role="dialog"
	aria-hidden="true">
	<div class="modal-dialog  modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<div class="container-fluid">
					<div class="row">
						<div class="col text-right">
							<button type="button" class="close modal-close"
								data-bs-dismiss="modal" aria-label="Close">
								<span aria-hidden="true"> <i class="fa fa-times"></i></span>
							</button>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="product-details-gallery-area mb-7">
								<!-- Start Large Image -->
								<div
									class="product-large-image modal-product-image-large swiper-container">
									<div class="swiper-wrapper">
										<div
											class="product-image-large-image swiper-slide img-responsive">
											<img id="image-large_1"
												src="<c:url value="/resources/assets/images/product/default/home-1/default-6.jpg"/>"
												alt="">
										</div>
										<div
											class="product-image-large-image swiper-slide img-responsive">
											<img id="image-large_2"
												src="<c:url value="/resources/assets/images/product/default/home-1/default-6.jpg"/>"
												alt="">
										</div>
										<div
											class="product-image-large-image swiper-slide img-responsive">
											<img id="image-large_3"
												src="<c:url value="/resources/assets/images/product/default/home-1/default-6.jpg"/>"
												alt="">
										</div>
										<div
											class="product-image-large-image swiper-slide img-responsive">
											<img id="image-large_4"
												src="<c:url value="/resources/assets/images/product/default/home-1/default-6.jpg"/>"
												alt="">
										</div>
										<div
											class="product-image-large-image swiper-slide img-responsive">
											<img id="image-large_5"
												src="<c:url value="/resources/assets/images/product/default/home-1/default-6.jpg"/>"
												alt="">
										</div>
										<div
											class="product-image-large-image swiper-slide img-responsive">
											<img id="image-large_6"
												src="<c:url value="/resources/assets/images/product/default/home-1/default-6.jpg"/>"
												alt="">
										</div>
									</div>
								</div>
								<!-- End Large Image -->
								<!-- Start Thumbnail Image -->
								<div
									class="product-image-thumb modal-product-image-thumb swiper-container pos-relative mt-5">
									<div class="swiper-wrapper">
										<div class="product-image-thumb-single swiper-slide">
											<img class="img-fluid" id="image-thumbnail_1"
												src="<c:url value="/resources/assets/images/product/default/home-1/default-6.jpg"/>"
												alt="">
										</div>
										<div class="product-image-thumb-single swiper-slide">
											<img class="img-fluid" id="image-thumbnail_2"
												src="<c:url value="/resources/assets/images/product/default/home-1/default-6.jpg"/>"
												alt="">
										</div>
										<div class="product-image-thumb-single swiper-slide">
											<img class="img-fluid" id="image-thumbnail_3"
												src="<c:url value="/resources/assets/images/product/default/home-1/default-6.jpg"/>"
												alt="">
										</div>
										<div class="product-image-thumb-single swiper-slide">
											<img class="img-fluid" id="image-thumbnail_4"
												src="<c:url value="/resources/assets/images/product/default/home-1/default-6.jpg"/>"
												alt="">
										</div>
										<div class="product-image-thumb-single swiper-slide">
											<img class="img-fluid" id="image-thumbnail_5"
												src="<c:url value="/resources/assets/images/product/default/home-1/default-6.jpg"/>"
												alt="">
										</div>
										<div class="product-image-thumb-single swiper-slide">
											<img class="img-fluid" id="image-thumbnail_6"
												src="<c:url value="/resources/assets/images/product/default/home-1/default-6.jpg"/>"
												alt="">
										</div>
									</div>
									<!-- Add Arrows -->
									<div class="gallery-thumb-arrow swiper-button-next"></div>
									<div class="gallery-thumb-arrow swiper-button-prev"></div>
								</div>
								<!-- End Thumbnail Image -->
							</div>
						</div>
						<div class="col-md-6">
							<div class="modal-product-details-content-area">
								<!-- Start  Product Details Text Area-->
								<div class="product-details-text">
									<h4 class="title" id="product-name">...</h4>
									<div class="price" id="product-cost">...</div>
								</div>
								<!-- End  Product Details Text Area-->
								<!-- Start Product Variable Area -->
								<div class="product-details-variable">
									<!-- Product Variable Single Item -->
									<div class="variable-single-item"></div>
									<!-- Product Variable Single Item -->
									<c:if test="${not empty customer}">
										<form action="/shop-hono/addToCart" method="post">
											<input id="url" type="hidden" name="url" value="${url}">
											<input id="product-id" type="hidden" name="productID"
												value="...">
											<div class="d-flex align-items-center flex-wrap">
												<div class="variable-single-item ">
													<span>Quantity</span>
													<div class="product-variable-quantity">
														<input id="quantity" name="quantity" min="1" value="1"
															type="number">
													</div>
												</div>

												<div class="product-add-to-cart-btn">
													<button type="submit">
														<a class="btn btn-block btn-lg btn-black-default-hover">+
															Add To Cart</a>
													</button>
												</div>
											</div>
										</form>
									</c:if>
									<c:if test="${empty customer}">
										<h4>
											You are not loged in! <a style="color: blue;"
												href="/shop-hono/login?url=${url}">Log in</a> to buy!
										</h4>
									</c:if>
								</div>
								<!-- End Product Variable Area -->
								<div class="modal-product-about-text">
									<p id="product-description">...</p>
								</div>
								<!-- Start  Product Details Social Area-->
								<div class="modal-product-details-social">
									<span class="title">SHARE THIS PRODUCT</span>
									<ul>
										<li><a href="#" class="facebook"><i
												class="fa fa-facebook"></i></a></li>
										<li><a href="#" class="twitter"><i
												class="fa fa-twitter"></i></a></li>
										<li><a href="#" class="pinterest"><i
												class="fa fa-pinterest"></i></a></li>
										<li><a href="#" class="google-plus"><i
												class="fa fa-google-plus"></i></a></li>
										<li><a href="#" class="linkedin"><i
												class="fa fa-linkedin"></i></a></li>
									</ul>

								</div>
								<!-- End  Product Details Social Area-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Modal Quickview cart -->