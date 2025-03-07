USE `shop-hono`;
CREATE PROCEDURE clearCartByUserId(IN userId BIGINT)
BEGIN
    DECLARE done int DEFAULT 0;
    DECLARE productId BIGINT;
    DECLARE quantity2 BIGINT;
    DECLARE itemCursor CURSOR for 
        select product_id,quantity 
        from cart_items
        WHERE user_id = userId;
    DECLARE CONTINUE HANDLER for not found set done = 1;
    open itemCursor;
        run: LOOP
            fetch itemCursor into productId,quantity2;
            if done = 1 then 
                leave run;
            end if;
            update products 
            set stock = stock + quantity2
            where id = productId;
        end loop;
    CLOSE itemCursor;
    delete from cart_items where user_id = userId;
END;
-- call clearCartByUserId(3);
