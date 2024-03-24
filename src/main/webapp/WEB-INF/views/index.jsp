<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from htmldemo.hasthemes.com/hono/hono/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 06 Jan 2021 00:31:04 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>HONO - Multi Purpose HTML Template</title>

<!-- ::::::::::::::Favicon icon::::::::::::::-->
<link rel="shortcut icon"
	href="<c:url value="/resources/assets/images/favicon.ico"/>"
	type="image/png">


<!-- Use the minified version files listed below for better performance and remove the files listed above -->
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/vendor/vendor.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/plugins/plugins.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/style.min.css"/>">

</head>
<body>
	<c:url value="index" var="url" />
	<!-- Start Header Area -->
	<header class="header-section d-none d-xl-block">
		<div class="header-wrapper">
			<div
				class="header-bottom header-bottom-color--golden section-fluid sticky-header sticky-color--golden">
				<div class="container-fluid">
					<div class="row">
						<div
							class="col-12 d-flex align-items-center justify-content-between">
							<!-- Start Header Logo -->
							<div class="header-logo">
								<div class="logo">
									<a href="/shop-hono/index"><img
										src="<c:url value="/resources/assets/images/logo/logo_black.png"/>"
										alt=""></a>
								</div>
							</div>
							<!-- End Header Logo -->
							<!-- Start Header Main Menu -->
							<div class="main-menu menu-color--black menu-hover-color--golden">
								<nav>
									<ul>
										<li><a href="/shop-hono/index">Home</a></li>
										<li><a href="/shop-hono/shop">Shop</a></li>
										<li class="has-dropdown"><a href="/shop-hono/my-account">Account
												<i class="fa fa-angle-down"></i>
										</a> <!-- Sub Menu -->
											<ul class="sub-menu">
												<li><a href="/shop-hono/my-account">My account</a></li>
												<li><a href="/shop-hono/cart">Cart</a></li>
												<li><a href="/shop-hono/wishlist">Wish list</a></li>
												<c:if test="${empty customer}">
													<li><a href="/shop-hono/login?url=${url}">Login</a></li>
												</c:if>
												<c:if test="${not empty customer}">
													<li><a href="/shop-hono/logout?url=${url}">Logout</a></li>
												</c:if>
											</ul></li>
									</ul>
								</nav>
							</div>
							<!-- End Header Main Menu Start -->

							<!-- _Data -->
							<!-- Start Header Action Link -->
							<ul
								class="header-action-link action-color--black action-hover-color--golden">
								<li><a href="#offcanvas-wishlish" class="offcanvas-toggle">
										<i class="icon-heart"></i> <c:if test="${not empty customer}">
											<span class="item-count">${customer.wishList.listItem.size()}</span>
										</c:if>
								</a></li>
								<li><a href="#offcanvas-add-cart" class="offcanvas-toggle">
										<i class="icon-bag"></i> <c:if test="${not empty customer}">
											<span class="item-count">${customer.cart.listItem.size()}</span>
										</c:if>
								</a></li>
								<li><a href="#search"> <i class="icon-magnifier"></i>
								</a></li>
								<li><a href="#offcanvas-about"
									class="offacnvas offside-about offcanvas-toggle"> <i
										class="icon-menu"></i>
								</a></li>
							</ul>
							<!-- End Header Action Link -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- End Header Area -->

	<!-- Start Mobile Header -->
	<div
		class="mobile-header mobile-header-bg-color--golden section-fluid d-lg-block d-xl-none">
		<div class="container">
			<div class="row">
				<div
					class="col-12 d-flex align-items-center justify-content-between">
					<!-- Start Mobile Left Side -->
					<div class="mobile-header-left">
						<ul class="mobile-menu-logo">
							<li><a href="/shop-hono/index">
									<div class="logo">
										<img
											src="<c:url value="/resources/assets/images/logo/logo_black.png"/>"
											alt="">
									</div>
							</a></li>
						</ul>
					</div>
					<!-- End Mobile Left Side -->

					<!-- Start Mobile Right Side -->
					<div class="mobile-right-side">
						<ul
							class="header-action-link action-color--black action-hover-color--golden">
							<li><a href="#search"> <i class="icon-magnifier"></i>
							</a></li>
							<li><a href="#offcanvas-wishlish" class="offcanvas-toggle">
									<i class="icon-heart"></i> <c:if test="${not empty customer}">
										<span class="item-count">${customer.wishList.listItem.size()}</span>
									</c:if>
							</a></li>
							<li><a href="#offcanvas-add-cart" class="offcanvas-toggle">
									<i class="icon-bag"></i> <c:if test="${not empty customer}">
										<span class="item-count">${customer.cart.listItem.size()}</span>
									</c:if>
							</a></li>
							<li><a href="#mobile-menu-offcanvas"
								class="offcanvas-toggle offside-menu"> <i class="icon-menu"></i>
							</a></li>
						</ul>
					</div>
					<!-- End Mobile Right Side -->
				</div>
			</div>
		</div>
	</div>
	<!-- End Mobile Header -->

	<!--  Start Offcanvas Mobile Menu Section -->
	<div id="mobile-menu-offcanvas"
		class="offcanvas offcanvas-rightside offcanvas-mobile-menu-section">
		<!-- Start Offcanvas Header -->
		<div class="offcanvas-header text-right">
			<button class="offcanvas-close">
				<i class="ion-android-close"></i>
			</button>
		</div>
		<!-- End Offcanvas Header -->
		<!-- Start Offcanvas Mobile Menu Wrapper -->
		<div class="offcanvas-mobile-menu-wrapper">
			<!-- Start Mobile Menu  -->
			<div class="mobile-menu-bottom">
				<!-- Start Mobile Menu Nav -->
				<div class="offcanvas-menu">
					<ul>
						<li><a href="/shop-hono/index"><span>Home</span></a></li>
						<li><a href="/shop-hono/shop"><span>Shop</span></a></li>
						<li><a href="/shop-hono/my-account"><span>Account</span></a>
							<ul class="mobile-sub-menu">
								<li><a href="/shop-hono/my-account">My account</a></li>
								<li><a href="/shop-hono/cart">Cart</a></li>
								<li><a href="/shop-hono/wishlist">Wishlist</a></li>
								<c:if test="${empty customer}">
									<li><a href="/shop-hono/login?url=${url}">Login</a></li>
								</c:if>
								<c:if test="${not empty customer}">
									<li><a href="/shop-hono/logout?url=${url}">Logout</a></li>
								</c:if>
							</ul></li>
					</ul>
				</div>
				<!-- End Mobile Menu Nav -->
			</div>
			<!-- End Mobile Menu -->

			<!-- Start Mobile contact Info -->
			<div class="mobile-contact-info">
				<div class="logo">
					<a href="/shop-hono/index"><img
						src="<c:url value="/resources/assets/images/logo/logo_white.png"/>"
						alt=""></a>
				</div>

				<address class="address">
					<span>Address: 4710-4890 Breckinridge St, Fayettevill</span> <span>Call
						Us: (+800) 345 678, (+800) 123 456</span> <span>Email:
						yourmail@mail.com</span>
				</address>

				<ul class="social-link">
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-instagram"></i></a></li>
					<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
				</ul>

				<ul class="user-link">
					<li><a href="/shop-hono/wishlist">Wishlist</a></li>
					<li><a href="/shop-hono/cart">Cart</a></li>
					<li><a href="/shop-hono/checkout">Checkout</a></li>
				</ul>
			</div>
			<!-- End Mobile contact Info -->

		</div>
		<!-- End Offcanvas Mobile Menu Wrapper -->
	</div>
	<!-- ...:::: End Offcanvas Mobile Menu Section:::... -->

	<!-- Start Offcanvas Mobile Menu Section -->
	<div id="offcanvas-about"
		class="offcanvas offcanvas-rightside offcanvas-mobile-about-section">
		<!-- Start Offcanvas Header -->
		<div class="offcanvas-header text-right">
			<button class="offcanvas-close">
				<i class="ion-android-close"></i>
			</button>
		</div>
		<!-- End Offcanvas Header -->
		<!-- Start Offcanvas Mobile Menu Wrapper -->
		<!-- Start Mobile contact Info -->
		<div class="mobile-contact-info">
			<div class="logo">
				<a href="/shop-hono/index"><img
					src="<c:url value="/resources/assets/images/logo/logo_white.png"/>"
					alt=""></a>
			</div>

			<address class="address">
				<span>Address: 4710-4890 Breckinridge St, Fayettevill</span> <span>Call
					Us: (+800) 345 678, (+800) 123 456</span> <span>Email:
					yourmail@mail.com</span>
			</address>

			<ul class="social-link">
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-instagram"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
			</ul>

			<ul class="user-link">
				<li><a href="/shop-hono/wishlist">Wishlist</a></li>
				<li><a href="/shop-hono/cart">Cart</a></li>
				<li><a href="/shop-hono/my-account">My Account</a></li>
			</ul>
		</div>
		<!-- End Mobile contact Info -->
	</div>
	<!-- ...:::: End Offcanvas Mobile Menu Section:::... -->

	<!-- Start Offcanvas Addcart Section -->
	<div id="offcanvas-add-cart"
		class="offcanvas offcanvas-rightside offcanvas-add-cart-section">
		<!-- Start Offcanvas Header -->
		<div class="offcanvas-header text-right">
			<button class="offcanvas-close">
				<i class="ion-android-close"></i>
			</button>
		</div>
		<!-- End Offcanvas Header -->
		<!-- Start  Offcanvas Addcart Wrapper -->
		<div class="offcanvas-add-cart-wrapper">
			<h4 class="offcanvas-title">Shopping Cart</h4>
			<ul class="offcanvas-cart">
				<c:if test="${not empty customer}">
					<c:forEach var="item" items="${customer.cart.listItem}">
						<li class="offcanvas-cart-item-single">
							<div class="offcanvas-cart-item-block">
								<a href="/shop-hono/product-details/${item.itemID}"
									class="offcanvas-cart-item-image-link"> <img
									src="<c:url value="/resources/assets/images/product/list/${item.itemID}.jpg"/>"
									alt="" class="offcanvas-cart-image">
								</a>
								<div class="offcanvas-cart-item-content">
									<a href="/shop-hono/product-details/${item.itemID}"
										class="offcanvas-cart-item-link">${item.itemName}</a>
									<div class="offcanvas-cart-item-details">
										<span class="offcanvas-cart-item-details-quantity">${item.quantity}
											x </span><span class="offcanvas-cart-item-details-price">$${item.itemCost}
											= $${item.quantity*item.itemCost}</span>
									</div>
								</div>
							</div>
							<div class="offcanvas-cart-item-delete text-right">
								<a
									href="/shop-hono/deleteFromCart?itemID=${item.itemID}&url=${url}"
									class="offcanvas-cart-item-delete"><i class="fa fa-trash-o"></i></a>
							</div>
						</li>
					</c:forEach>
				</c:if>
			</ul>
			<div class="offcanvas-cart-total-price">
				<span class="offcanvas-cart-total-price-text">Subtotal:</span> <span
					class="offcanvas-cart-total-price-value">$${customer.cart.getSubTotal()}</span>
			</div>
			<ul class="offcanvas-cart-action-button">
				<li><a href="/shop-hono/cart" class="btn btn-block btn-golden">View
						Cart</a></li>
			</ul>
			<br>
			<ul class="offcanvas-cart-action-button">
				<li><a href="/shop-hono/payCart"
					class="btn btn-block btn-golden">View Pay Cart</a></li>
			</ul>
		</div>
		<!-- End  Offcanvas Addcart Wrapper -->

	</div>
	<!-- End  Offcanvas Addcart Section -->

	<!-- Start Offcanvas Mobile Menu Section -->
	<div id="offcanvas-wishlish"
		class="offcanvas offcanvas-rightside offcanvas-add-cart-section">
		<!-- Start Offcanvas Header -->
		<div class="offcanvas-header text-right">
			<button class="offcanvas-close">
				<i class="ion-android-close"></i>
			</button>
		</div>
		<!-- ENd Offcanvas Header -->

		<!-- Start Offcanvas wish list Wrapper -->
		<div class="offcanvas-wishlist-wrapper">
			<h4 class="offcanvas-title">Wishlist</h4>
			<ul class="offcanvas-wishlist">
				<c:if test="${not empty customer}">
					<c:forEach var="item" items="${customer.wishList.listItem}">
						<li class="offcanvas-wishlist-item-single">
							<div class="offcanvas-wishlist-item-block">
								<a href="/shop-hono/product-details/${item.itemID}"
									class="offcanvas-wishlist-item-image-link"> <img
									src="<c:url value="/resources/assets/images/product/list/${item.itemID}.jpg"/>"
									alt="" class="offcanvas-wishlist-image">
								</a>
								<div class="offcanvas-wishlist-item-content">
									<a href="/shop-hono/product-details/${item.itemID}"
										class="offcanvas-wishlist-item-link">${item.itemName}</a>
									<div class="offcanvas-wishlist-item-details">
										<span class="offcanvas-wishlist-item-details-price">$${item.itemCost}</span>
									</div>
								</div>
							</div>
							<div class="offcanvas-wishlist-item-delete text-right">
								<a
									href="/shop-hono/deleteFromWishList?itemID=${item.itemID}&url=${url}"
									class="offcanvas-wishlist-item-delete"><i
									class="fa fa-trash-o"></i></a>
							</div>
						</li>
					</c:forEach>
				</c:if>
			</ul>
			<ul class="offcanvas-wishlist-action-button">
				<li><a href="/shop-hono/wishlist"
					class="btn btn-block btn-golden">View wishlist</a></li>
			</ul>
		</div>
		<!-- End Offcanvas wish list Wrapper -->
	</div>
	<!-- Offcanvas Overlay -->
	<div class="offcanvas-overlay"></div>

	<!-- Start Hero Slider Section-->
	<div class="hero-slider-section">
		<!-- Slider main container -->
		<div class="hero-slider-active swiper-container">
			<!-- Additional required wrapper -->
			<div class="swiper-wrapper">
				<!-- Start Hero Single Slider Item -->
				<div class="hero-single-slider-item swiper-slide">
					<!-- Hero Slider Image -->
					<div class="hero-slider-bg">
						<img
							src="<c:url value="/resources/assets/images/hero-slider/home-1/hero-slider-1.jpg"/>"
							alt="">
					</div>
					<!-- Hero Slider Content -->
					<div class="hero-slider-wrapper">
						<div class="container">
							<div class="row">
								<div class="col-auto">
									<div class="hero-slider-content">
										<h4 class="subtitle">New collection</h4>
										<h2 class="title">
											Best Of NeoCon <br> Gold Award
										</h2>
										<a href="/shop-hono/shop"
											class="btn btn-lg btn-outline-golden">shop now </a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End Hero Single Slider Item -->
				<!-- Start Hero Single Slider Item -->
				<div class="hero-single-slider-item swiper-slide">
					<!-- Hero Slider Image -->
					<div class="hero-slider-bg">
						<img
							src="<c:url value="/resources/assets/images/hero-slider/home-1/hero-slider-2.jpg"/>"
							alt="">
					</div>
					<!-- Hero Slider Content -->
					<div class="hero-slider-wrapper">
						<div class="container">
							<div class="row">
								<div class="col-auto">
									<div class="hero-slider-content">
										<h4 class="subtitle">New collection</h4>
										<h2 class="title">
											Luxy Chairs <br> Design Award
										</h2>
										<a href="/shop-hono/shop"
											class="btn btn-lg btn-outline-golden">shop now </a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End Hero Single Slider Item -->
			</div>

			<!-- If we need pagination -->
			<div class="swiper-pagination active-color-golden"></div>

			<!-- If we need navigation buttons -->
			<div class="swiper-button-prev d-none d-lg-block"></div>
			<div class="swiper-button-next d-none d-lg-block"></div>
		</div>
	</div>
	<!-- End Hero Slider Section-->

	<!-- Start Service Section -->
	<div class="service-promo-section section-top-gap-100">
		<div class="service-wrapper">
			<div class="container">
				<div class="row">
					<!-- Start Service Promo Single Item -->
					<div class="col-lg-3 col-sm-6 col-12">
						<div class="service-promo-single-item" data-aos="fade-up"
							data-aos-delay="0">
							<div class="image">
								<img
									src="<c:url value="/resources/assets/images/icons/service-promo-1.png"/>"
									alt="">
							</div>
							<div class="content">
								<h6 class="title">FREE SHIPPING</h6>
								<p>Get 10% cash back, free shipping, free returns, and more
									at 1000+ top retailers!</p>
							</div>
						</div>
					</div>
					<!-- End Service Promo Single Item -->
					<!-- Start Service Promo Single Item -->
					<div class="col-lg-3 col-sm-6 col-12">
						<div class="service-promo-single-item" data-aos="fade-up"
							data-aos-delay="200">
							<div class="image">
								<img
									src="<c:url value="/resources/assets/images/icons/service-promo-2.png"/>"
									alt="">
							</div>
							<div class="content">
								<h6 class="title">30 DAYS MONEY BACK</h6>
								<p>100% satisfaction guaranteed, or get your money back
									within 30 days!</p>
							</div>
						</div>
					</div>
					<!-- End Service Promo Single Item -->
					<!-- Start Service Promo Single Item -->
					<div class="col-lg-3 col-sm-6 col-12">
						<div class="service-promo-single-item" data-aos="fade-up"
							data-aos-delay="400">
							<div class="image">
								<img
									src="<c:url value="/resources/assets/images/icons/service-promo-3.png"/>"
									alt="">
							</div>
							<div class="content">
								<h6 class="title">SAFE PAYMENT</h6>
								<p>Pay with the worldâs most popular and secure payment
									methods.</p>
							</div>
						</div>
					</div>
					<!-- End Service Promo Single Item -->
					<!-- Start Service Promo Single Item -->
					<div class="col-lg-3 col-sm-6 col-12">
						<div class="service-promo-single-item" data-aos="fade-up"
							data-aos-delay="600">
							<div class="image">
								<img
									src="<c:url value="/resources/assets/images/icons/service-promo-4.png"/>"
									alt="">
							</div>
							<div class="content">
								<h6 class="title">LOYALTY CUSTOMER</h6>
								<p>Card for the other 30% of their purchases at a rate of 1%
									cash back.</p>
							</div>
						</div>
					</div>
					<!-- End Service Promo Single Item -->
				</div>
			</div>
		</div>
	</div>
	<!-- End Service Section -->

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

	<!-- Start Instagramr Section -->
	<div class="instagram-section section-top-gap-100 section-inner-bg">
		<div class="instagram-wrapper" data-aos="fade-up" data-aos-delay="0">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="instagram-box">
							<div id="instagramFeed" class="instagram-grid clearfix">
								<a href="https://www.instagram.com/p/CCFOZKDDS6S/"
									target="_blank"
									class="instagram-image-link float-left banner-animation"><img
									src="<c:url value="/resources/assets/images/instagram/instagram-1.jpg"/>"
									alt=""></a> <a
									href="https://www.instagram.com/p/CCFOYDNjWF5/" target="_blank"
									class="instagram-image-link float-left banner-animation"><img
									src="<c:url value="/resources/assets/images/instagram/instagram-2.jpg"/>"
									alt=""></a> <a
									href="https://www.instagram.com/p/CCFOXH6D-zQ/" target="_blank"
									class="instagram-image-link float-left banner-animation"><img
									src="<c:url value="/resources/assets/images/instagram/instagram-3.jpg"/>"
									alt=""></a> <a
									href="https://www.instagram.com/p/CCFOVcrDDOo/" target="_blank"
									class="instagram-image-link float-left banner-animation"><img
									src="<c:url value="/resources/assets/images/instagram/instagram-4.jpg"/>"
									alt=""></a> <a
									href="https://www.instagram.com/p/CCFOUajjABP/" target="_blank"
									class="instagram-image-link float-left banner-animation"><img
									src="<c:url value="/resources/assets/images/instagram/instagram-5.jpg"/>"
									alt=""></a> <a
									href="https://www.instagram.com/p/CCFOS2MDmjj/" target="_blank"
									class="instagram-image-link float-left banner-animation"><img
									src="<c:url value="/resources/assets/images/instagram/instagram-6.jpg"/>"
									alt=""></a>
							</div>
							<div class="instagram-link">
								<h5>
									<a href="https://www.instagram.com/myfurniturecom/"
										target="_blank" rel="noopener noreferrer">HONOTEMPLATE</a>
								</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Instagramr Section -->

	<!-- Start Footer Section -->
	<footer class="footer-section footer-bg">
		<div class="footer-wrapper">
			<!-- Start Footer Center -->
			<div class="footer-center">
				<div class="container">
					<div class="row mb-n6">
						<div class="col-xl-3 col-lg-4 col-md-6 mb-6">
							<div class="footer-social" data-aos="fade-up" data-aos-delay="0">
								<h4 class="title">FOLLOW US</h4>
								<ul class="footer-social-link">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-instagram"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="col-xl-7 col-lg-6 col-md-6 mb-6">
							<div class="footer-newsletter" data-aos="fade-up"
								data-aos-delay="200">
								<h4 class="title">DON'T MISS OUT ON THE LATEST</h4>
								<div class="form-newsletter">
									<form action="#" method="post">
										<div
											class="form-fild-newsletter-single-item input-color--golden">
											<input type="email" placeholder="Your email address..."
												required>
											<button type="submit">SUBSCRIBE!</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Start Footer Center -->

			<!-- Start Footer Bottom -->
			<div class="footer-bottom">
				<div class="container">
					<div
						class="row justify-content-between align-items-center align-items-center flex-column flex-md-row mb-n6">
						<div class="col-auto mb-6">
							<div class="footer-copyright">
								<p>
									COPYRIGHT &copy; <a href="https://hasthemes.com/"
										target="_blank">HasThemes</a>. ALL RIGHTS RESERVED.
								</p>
							</div>
						</div>
						<div class="col-auto mb-6">
							<div class="footer-payment">
								<div class="image">
									<img
										src="<c:url value="/resources/assets/images/company-logo/payment.png"/>"
										alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Start Footer Bottom -->
		</div>
	</footer>
	<!-- End Footer Section -->

	<!-- material-scrolltop button -->

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
											<h4>You are not loged in! <a style="color: blue;" href="/shop-hono/login?url=${url}">Log in</a> to buy!</h4>
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

	<!-- Use the minified version files listed below for better performance and remove the files listed above -->
	<script
		src="<c:url value="/resources/assets/js/vendor/vendor.min.js"/>"></script>
	<script
		src="<c:url value="/resources/assets/js/plugins/plugins.min.js"/>"></script>

	<!-- Main JS -->
	<script src="<c:url value="/resources/assets/js/main.js"/>"></script>
	<script src="<c:url value="/resources/assets/js/core.js"/>"></script>
	<script src="<c:url value="/resources/assets/js/API.js"/>"></script>
</body>

<!-- Mirrored from htmldemo.hasthemes.com/hono/hono/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 06 Jan 2021 00:31:38 GMT -->
</html>