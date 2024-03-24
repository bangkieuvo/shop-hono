<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from htmldemo.hasthemes.com/hono/hono/product-details-default.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 06 Jan 2021 00:32:21 GMT -->
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
	<c:url value="product-details/${product.productID}" var="url" />
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

	<!-- ...:::: Start Breadcrumb Section:::... -->
	<div class="breadcrumb-section breadcrumb-bg-color--golden">
		<div class="breadcrumb-wrapper">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h3 class="breadcrumb-title">Product Details - Default</h3>
						<div
							class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
							<nav aria-label="breadcrumb">
								<ul>
									<li><a href="index.html">Home</a></li>
									<li><a href="shop-grid-sidebar-left.html">Shop</a></li>
									<li class="active" aria-current="page">Product Details
										Default</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ...:::: End Breadcrumb Section:::... -->

	<!-- Start Product Details Section -->
	<div class="product-details-section">
		<div class="container">
			<div class="row">
				<div class="col-xl-5 col-lg-6">
					<div class="product-details-gallery-area" data-aos="fade-up"
						data-aos-delay="0">
						<!-- Start Large Image -->
						<div
							class="product-large-image product-large-image-horaizontal swiper-container">
							<div class="swiper-wrapper">
								<div
									class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
									<img
										src="<c:url value="/resources/assets/images/product/list/${product.productID}.jpg"/>"
										alt="">
								</div>
								<div
									class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
									<img
										src="<c:url value="/resources/assets/images/product/list/${product.productID}.jpg"/>"
										alt="">
								</div>
							</div>
						</div>
						<!-- End Large Image -->
						<!-- Start Thumbnail Image -->
						<div
							class="product-image-thumb product-image-thumb-horizontal swiper-container pos-relative mt-5">
							<div class="swiper-wrapper">
								<div class="product-image-thumb-single swiper-slide">
									<img class="img-fluid"
										src="<c:url value="/resources/assets/images/product/list/${product.productID}.jpg"/>"
										alt="">
								</div>
								<div class="product-image-thumb-single swiper-slide">
									<img class="img-fluid"
										src="<c:url value="/resources/assets/images/product/list/${product.productID}.jpg"/>"
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
				<div class="col-xl-7 col-lg-6">
					<div class="product-details-content-area product-details--golden"
						data-aos="fade-up" data-aos-delay="200">
						<!-- Start  Product Details Text Area-->
						<div class="product-details-text">
							<h4 class="title">${product.productName}</h4>
							<div class="d-flex align-items-center">
								<ul class="review-star">
									<li class="fill"><i class="ion-android-star"></i></li>
									<li class="fill"><i class="ion-android-star"></i></li>
									<li class="fill"><i class="ion-android-star"></i></li>
									<li class="fill"><i class="ion-android-star"></i></li>
									<li class="empty"><i class="ion-android-star"></i></li>
								</ul>
							</div>
							<div class="price">$${product.productCost}</div>
							<p>${product.description}</p>
						</div>
						<!-- End  Product Details Text Area-->
						<!-- Start Product Variable Area -->
						<div class="product-details-variable">
							<h4 class="title">Available Options</h4>
							<!-- Product Variable Single Item -->
							<div class="variable-single-item">
								<div class="product-stock">
									<span class="product-stock-in"><i
										class="ion-checkmark-circled"></i></span> ${product.quantity} IN
									STOCK
								</div>
							</div>
							<!-- Product Variable Single Item -->
							<form action="/shop-hono/addToCart" method="post">
								<input type="hidden" name="url"
									value="product-details/${product.productID}"> <input
									type="hidden" name="productID" value="${product.productID}">
								<div class="d-flex align-items-center ">
									<div class="variable-single-item ">
										<span>Quantity</span>
										<div class="product-variable-quantity">
											<input min="1" max="${product.quantity}" value="1"
												type="number" name="quantity">
										</div>
									</div>

									<div class="product-add-to-cart-btn">
										<button type="submit">
											<a class="btn btn-block btn-lg btn-black-default-hover"">+
												Add To Cart</a>
										</button>
									</div>
								</div>
							</form>
							<!-- Start  Product Details Meta Area-->
							<div class="product-details-meta mb-20">
								<a href="wishlist.html" class="icon-space-right"><i
									class="icon-heart"></i>Add to wishlist</a>
							</div>
							<!-- End  Product Details Meta Area-->
						</div>
						<!-- End Product Variable Area -->
						<!-- Start  Product Details Social Area-->
						<div class="product-details-social">
							<span class="title">SHARE THIS PRODUCT:</span>
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
						<!-- End  Product Details Social Area-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Product Details Section -->

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


	<br>
	<br>
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

<!-- Mirrored from htmldemo.hasthemes.com/hono/hono/product-details-default.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 06 Jan 2021 00:32:23 GMT -->
</html>
