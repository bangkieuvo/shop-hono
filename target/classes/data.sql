use `shop-hono`;
insert ignore  INTO users (username, hashed_password, email) VALUES
('user1', '$2a$10$1ZaG5KyviyoeRFoX4ekrqOgLKzalFLxeHnoYykJs7PwkFpcBXW5vS', 'user1@example.com'),
('user2', '$2a$10$1ZaG5KyviyoeRFoX4ekrqOgLKzalFLxeHnoYykJs7PwkFpcBXW5vS', 'user2@example.com'),
('user3', '$2a$10$1ZaG5KyviyoeRFoX4ekrqOgLKzalFLxeHnoYykJs7PwkFpcBXW5vS', 'user3@example.com'),
('user4', '$2a$10$1ZaG5KyviyoeRFoX4ekrqOgLKzalFLxeHnoYykJs7PwkFpcBXW5vS', 'user4@example.com'),
('user5', '$2a$10$1ZaG5KyviyoeRFoX4ekrqOgLKzalFLxeHnoYykJs7PwkFpcBXW5vS', 'user5@example.com'),
('user6', '$2a$10$1ZaG5KyviyoeRFoX4ekrqOgLKzalFLxeHnoYykJs7PwkFpcBXW5vS', 'user6@example.com'),
('user7', '$2a$10$1ZaG5KyviyoeRFoX4ekrqOgLKzalFLxeHnoYykJs7PwkFpcBXW5vS', 'user7@example.com'),
('user8', '$2a$10$1ZaG5KyviyoeRFoX4ekrqOgLKzalFLxeHnoYykJs7PwkFpcBXW5vS', 'user8@example.com'),
('user9', '$2a$10$1ZaG5KyviyoeRFoX4ekrqOgLKzalFLxeHnoYykJs7PwkFpcBXW5vS', 'user9@example.com'),
('user10', '$2a$10$1ZaG5KyviyoeRFoX4ekrqOgLKzalFLxeHnoYykJs7PwkFpcBXW5vS', 'user10@example.com');

insert ignore  INTO user_info (user_id, full_name, address) VALUES
(1, 'User One', 'A1 city'),
(2, 'User Two', 'B2 city'),
(3, 'User Three', 'C3 city'),
(4, 'User Four', 'D4 city'),
(5, 'User Five', 'E5 city'),
(6, 'User Six', 'F6 city'),
(7, 'User Seven', 'G7 city'),
(8, 'User Eight', 'H8 city'),
(9, 'User Nine', 'I9 city'),
(10, 'User Ten', 'J10 city');

insert ignore  INTO categories (name, description) VALUES
('Electronics', 'Devices and gadgets like phones, computers, and accessories'),
('Fashion', 'Clothing, shoes, and accessories for all seasons'),
('Home & Kitchen', 'Furniture, appliances, and home decor'),
('Books', 'Fiction, non-fiction, and educational books'),
('Sports', 'Sports equipment and outdoor gear');

insert ignore  INTO products (name, price, stock, category_id, description) VALUES
('iPhone 15 Pro Max', 1200.00, 50, 1, 'Smartphone cao cấp của Apple với camera siêu nét'),
('MacBook Pro 16', 2500.00, 30, 1, 'Laptop chuyên nghiệp với màn hình 16 inch Retina'),
('Samsung Galaxy Z Fold 5', 2000.00, 40, 1, 'Điện thoại gập của Samsung với màn hình lớn'),
('Sony WH-1000XM5 Headphones', 350.00, 100, 1, 'Tai nghe chống ồn, chất lượng âm thanh tuyệt vời'),
('Canon EOS R5 Camera', 3800.00, 20, 1, 'Máy ảnh mirrorless cho nhiếp ảnh gia chuyên nghiệp'),
('Nike Air Max 270', 150.00, 80, 2, 'Giày thể thao phong cách, thoải mái cho mọi hoạt động'),
('Levi\'s 501 Jeans', 60.00, 200, 2, 'Quần jean cổ điển từ thương hiệu Levi\'s'),
('Gucci GG Marmont Bag', 1000.00, 10, 2, 'Túi xách cao cấp từ thương hiệu Gucci'),
('Adidas Originals Hoodie', 70.00, 150, 2, 'Áo hoodie ấm áp từ Adidas, phù hợp cho mùa đông'),
('Ray-Ban Aviator Sunglasses', 150.00, 120, 2, 'Kính mát Ray-Ban với kiểu dáng cổ điển'),
('Dyson V15 Detect Vacuum', 700.00, 25, 3, 'Máy hút bụi không dây mạnh mẽ từ Dyson'),
('KitchenAid Stand Mixer', 500.00, 40, 3, 'Máy trộn bột đa năng cho bếp nhà bạn'),
('Philips Airfryer XXL', 300.00, 60, 3, 'Nồi chiên không dầu Philips, tiết kiệm thời gian và năng lượng'),
('Serta Perfect Sleeper Mattress', 800.00, 35, 3, 'Nệm cao cấp cho giấc ngủ sâu và thoải mái'),
('Ikea Hemnes Dresser', 200.00, 50, 3, 'Tủ quần áo gỗ phong cách Scandinavian'),
('Sapiens: A Brief History of Humankind', 20.00, 100, 4, 'Cuốn sách khám phá lịch sử loài người'),
('Becoming', 25.00, 80, 4, 'Tự truyện của Michelle Obama, một cuộc sống đầy cảm hứng'),
('The Great Gatsby', 15.00, 120, 4, 'Tiểu thuyết nổi tiếng của F. Scott Fitzgerald'),
('Educated', 18.00, 90, 4, 'Cuốn hồi ký của Tara Westover về quá trình tìm kiếm tri thức'),
('The Catcher in the Rye', 12.00, 150, 4, 'Cuốn tiểu thuyết kinh điển của J.D. Salinger'),
('Nike Training Ball', 30.00, 100, 5, 'Bóng đá Nike chính hãng, bền và chất lượng'),
('Adidas Running Shoes', 120.00, 150, 5, 'Giày chạy bộ Adidas, mang lại sự thoải mái tối đa'),
('Yeti Rambler Tumbler', 25.00, 200, 5, 'Ly giữ nhiệt Yeti, giúp nước nóng lâu hơn'),
('Fitbit Charge 5', 150.00, 80, 5, 'Đồng hồ thông minh Fitbit, theo dõi sức khỏe và tập luyện'),
('Coleman Camping Stove', 100.00, 60, 5, 'Bếp du lịch Coleman, tiện lợi khi đi cắm trại');



insert ignore  INTO wishlist_items (user_id, product_id) VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
(2, 2), (2, 6), (2, 7), (2, 8), (2, 9),
(3, 3), (3, 10), (3, 11), (3, 12),
(4, 4), (4, 13), (4, 14), (4, 15),
(5, 5), (5, 16), (5, 17), (5, 18),
(6, 6), (6, 19), (6, 20), (6, 21),
(7, 7), (7, 22), (7, 23), (7, 24),
(8, 8), (8, 25), (8, 1), (8, 2),
(9, 9), (9, 3), (9, 4),
(10, 10), (10, 5);
 
insert ignore  INTO cart_items (user_id, product_id, quantity) VALUES
(1, 1, 2),
(1, 2, 1),
(1, 3, 5),
(2, 1, 3),
(2, 4, 2),
(3, 2, 1),
(3, 3, 4),
(4, 5, 2),
(4, 1, 1),
(5, 4, 3);

insert ignore  INTO orders (user_id, is_paid) VALUES
(1, 1),
(2, 0),
(3, 1),
(4, 1),
(5, 0),
(6, 1),
(7, 0),
(8, 1),
(9, 0),
(10, 1);

insert ignore  INTO order_items (order_id, product_id, quantity, price) VALUES
-- Đơn hàng 1 có 3 sản phẩm
(1, 1, 2, 1200.00),
(1, 5, 2, 3800.00),
(1, 10, 2, 150.00),

-- Đơn hàng 2 có 2 sản phẩm
(2, 3, 2, 2000.00),
(2, 6, 2, 150.00),

-- Đơn hàng 3 có 4 sản phẩm
(3, 2, 2, 2500.00),
(3, 7, 2, 60.00),
(3, 11, 2, 700.00),
(3, 14, 2, 800.00),

-- Đơn hàng 4 có 1 sản phẩm
(4, 4, 2, 350.00),

-- Đơn hàng 5 có 5 sản phẩm
(5, 9, 2, 3.00),
(5, 10, 2, 150.00),
(5, 15, 2, 200.00),
(5, 18, 2, 15.00),
(5, 20, 2, 12.00),

-- Đơn hàng 6 có 2 sản phẩm
(6, 11, 2, 700.00),
(6, 12, 2, 500.00),

-- Đơn hàng 7 có 3 sản phẩm
(7, 13, 2, 300.00),
(7, 14, 2, 800.00),
(7, 19, 2, 18.00),

-- Đơn hàng 8 có 1 sản phẩm
(8, 16, 2, 20.00),

-- Đơn hàng 9 có 4 sản phẩm
(9, 17, 2, 25.00),
(9, 18, 2, 15.00),
(9, 19, 2, 18.00),
(9, 20, 2, 12.00),

-- Đơn hàng 10 có 2 sản phẩm
(10, 1, 2, 1200.00),
(10, 3, 2, 2000.00);

