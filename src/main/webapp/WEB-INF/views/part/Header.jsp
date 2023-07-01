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