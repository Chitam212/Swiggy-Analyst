--1. Tổng doanh thu
SELECT SUM(price) AS TotalRevenue
FROM fact_orders;
--2. Tổng số đơn hàng
SELECT COUNT(order_id) AS TotalOrders
FROM fact_orders;
--3. Doanh thu theo nhà hàng
SELECT
    r.restaurant_name,
    SUM(f.price) AS Revenue
FROM fact_orders f
JOIN dim_restaurant r
ON f.restaurant_id = r.restaurant_id
GROUP BY r.restaurant_name
ORDER BY Revenue DESC;
--4. Top 10 nhà hàng doanh thu cao nhất
SELECT TOP 10
    r.restaurant_name,
    SUM(f.price) AS Revenue
FROM fact_orders f
JOIN dim_restaurant r
ON f.restaurant_id = r.restaurant_id
GROUP BY r.restaurant_name
ORDER BY Revenue DESC;
--5. Doanh thu theo thành phố
SELECT
    l.city,
    SUM(f.price) AS Revenue
FROM fact_orders f
JOIN dim_location l
ON f.location_id = l.location_id
GROUP BY l.city
ORDER BY Revenue DESC;
--6. Doanh thu theo bang (State)
SELECT
    l.state,
    SUM(f.price) AS Revenue
FROM fact_orders f
JOIN dim_location l
ON f.location_id = l.location_id
GROUP BY l.state
ORDER BY Revenue DESC;
--7. Doanh thu theo loại món ăn
SELECT
    d.category,
    SUM(f.price) AS Revenue
FROM fact_orders f
JOIN dim_dish d
ON f.food_id = d.dish_id
GROUP BY d.category
ORDER BY Revenue DESC;
--8. Giá trung bình của món ăn theo Category
SELECT
    d.category,
    AVG(f.price) AS AvgPrice
FROM fact_orders f
JOIN dim_dish d
ON f.food_id = d.dish_id
GROUP BY d.category
ORDER BY AvgPrice DESC;
--9. Rating trung bình của từng nhà hàng
SELECT
    r.restaurant_name,
    AVG(f.rating) AS AvgRating
FROM fact_orders f
JOIN dim_restaurant r
ON f.restaurant_id = r.restaurant_id
GROUP BY r.restaurant_name
ORDER BY AvgRating DESC;
--11. Tổng số lượt đánh giá của từng nhà hàng
SELECT
    r.restaurant_name,
    SUM(f.rating_count) AS TotalRatings
FROM fact_orders f
JOIN dim_restaurant r
ON f.restaurant_id = r.restaurant_id
GROUP BY r.restaurant_name
ORDER BY TotalRatings DESC;
--12. Giá đơn hàng trung bình theo thành phố
SELECT
    l.city,
    AVG(f.price) AS AvgOrderValue
FROM fact_orders f
JOIN dim_location l
ON f.location_id = l.location_id
GROUP BY l.city
ORDER BY AvgOrderValue DESC;
--12. Doanh thu theo năm
SELECT
    YEAR(d.order_date_new) AS Year,
    SUM(f.price) AS Revenue
FROM fact_orders f
JOIN dim_date d
    ON f.date_id = d.date_id
GROUP BY YEAR(d.order_date_new)
ORDER BY YEAR(d.order_date_new);
--13 Doanh thu theo tháng
SELECT
    MONTH(d.order_date_new) AS MONTH,
    SUM(f.price) AS Revenue
FROM fact_orders f
JOIN dim_date d
    ON f.date_id = d.date_id
GROUP BY MONTH(d.order_date_new)
ORDER BY MONTH(d.order_date_new);