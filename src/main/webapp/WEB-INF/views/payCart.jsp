<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from htmldemo.hasthemes.com/hono/hono/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 06 Jan 2021 00:32:24 GMT -->
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
	<var></var>
	<c:url value="payCart" var="url" />
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
						<h3 class="breadcrumb-title">Cart</h3>
						<div
							class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
							<nav aria-label="breadcrumb">
								<ul>
									<li><a href="index.html">Home</a></li>
									<li><a href="shop-grid-sidebar-left.html">Shop</a></li>
									<li class="active" aria-current="page">Cart</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ...:::: End Breadcrumb Section:::... -->

	<!-- ...:::: Start Cart Section:::... -->
	<c:if test="${empty customer}">
		<h2>
			You are not loged in! Please <a href="/shop-hono/login?url=${url}">login</a>
			to pay!
		</h2>
	</c:if>
	<div class="cart-section">
		<!-- Start Cart Table -->
		<div class="cart-table-wrapper" data-aos="fade-up" data-aos-delay="0">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="table_desc">
							<form action="/shop-hono/pay" method="post">
								<div class="table_page table-responsive">
									<table>
										<!-- Start Cart Table Head -->
										<thead>
											<tr>
												<th>Delete</th>
												<th class="product_thumb">Image</th>
												<th class="product_name">Product</th>
												<th class="product-price">Price</th>
												<th class="product_quantity">Quantity</th>
												<th class="product_total">Total</th>
											</tr>
										</thead>
										<!-- End Cart Table Head -->
										<tbody>
											<c:if test="${not empty customer}">
												<c:forEach var="item" items="${customer.cart.listItem}">
													<!-- Start Cart Single Item-->
													<tr>
														<td><input type="checkbox" name="_${item.itemID}"
															onclick="updateTotal()"></td>
														<td class="product_thumb"><a
															href="/shop-hono/product-details/${item.itemID}"><img
																src="<c:url value="/resources/assets/images/product/list/${item.itemID}.jpg"/>"
																alt=""></a></td>
														<td class="product_name"><a
															href="/shop-hono/product-details/${item.itemID}">${item.itemName}</a></td>
														<td class="product-price">$${item.itemCost}</td>
														<td class="product_quantity"><label>Quantity</label>
															<input onclick="updateTotal()" name="${item.itemID}"
															min="1" max="${item.quantity}" value="${item.quantity}"
															type="number"></td>
														<td class="product_total">$${item.itemCost *
															item.quantity}</td>
													</tr>
													<!-- End Cart Single Item-->
												</c:forEach>
											</c:if>

										</tbody>
									</table>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Cart Table -->

		<!-- Start Coupon Start -->
		<div class="coupon_area">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6"></div>
					<div class="col-lg-6 col-md-6">
						<div class="coupon_code right" data-aos="fade-up"
							data-aos-delay="400">
							<h3>Cart Totals</h3>
							<div class="coupon_inner">
								<div class="cart_subtotal">
									<p>Subtotal:</p>
									<p class="cart_amount">$0</p>
								</div>
								<button onclick="updateTotal()">HAhahaha</button>
								<script type="text/javascript">
									function updateTotal() {

									}
								</script>
								<div class="checkout_btn">
									<a href="/shop-hono/payCart" class="btn btn-md btn-golden">PAY
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Coupon Start -->
	</div>
	<!-- ...:::: End Cart Section:::... -->


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

<!-- Mirrored from htmldemo.hasthemes.com/hono/hono/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 06 Jan 2021 00:32:24 GMT -->
</html>
