--select * from `bigquery-public-data`.thelook_ecommerce.distribution_centers dc;
--select * from `bigquery-public-data`.thelook_ecommerce.events e where user_id is not null;
--select * from `bigquery-public-data`.thelook_ecommerce.inventory_items ii;
--select * from `bigquery-public-data`.thelook_ecommerce.orders o;
--select * from `bigquery-public-data`.thelook_ecommerce.order_items oi;
--select * from `bigquery-public-data`.thelook_ecommerce.users u;
--select * from `bigquery-public-data`.thelook_ecommerce.`thelook_ecommerce-table` tet;

--select count(*) from `bigquery-public-data`.thelook_ecommerce.order_items oi;

SELECT 
  oi.id as Order_Item_ID
, Extract(WEEK FROM cast(oi.created_at as date)) as Order_Item_Week
, Extract(MONTH FROM cast(oi.created_at as date)) as Order_Item_Month
, Extract(YEAR FROM cast(oi.created_at as date)) as Order_Item_Year
, cast(oi.created_at as date) as Order_Item_Date
, oi.status as Order_Item_Status
, cast(oi.shipped_at as date) as Shipper_At_Date
--, p.id  as Product_ID
, p.name as Product_Name
, p.category as Product_Category
, p.brand as Product_Brand
--, p.retail_price as Product_Retail_Price
, coalesce(o.num_of_item,1) as Order_Quantity
, oi.sale_price as Order_Item_Sale_Price
, (coalesce(o.num_of_item,1) * oi.sale_price) as Order_Revenue
, p.department as Product_Department
--, p.distribution_center_id as Product_Distribution_Centre_ID
, dc.name as Distribution_Centre_Name
, cast(dc.latitude as numeric) as Distribution_Centre_Latitude
, cast(dc.longitude as numeric) as Distribution_Centre_Longitude
, dc.distribution_center_geom as Distribution_Centre_Coordinates
, u.age as User_Age
, (case when u.age is null then 'Unknown' 
	   when u.age between 0 and 20 then '0 - 20'
       when u.age between 21 and 30 then '21-30'
       when u.age between 31 and 40 then '31-40'
       when u.age between 41 and 50 then '41-50'
       when u.age between 51 and 60 then '51-60'
       when u.age between 61 and 70 then '61-70'
       when u.age between 71 and 80 then '71-80'
       else '80+'
       end) as User_Age_Groups
, coalesce(u.gender, 'Unknown') AS User_Gender
, u.latitude as User_Latitude
, u.longitude as User_Longitude
, u.user_geom as User_Coordinates
, coalesce(u.city,'Unknown') as User_City
, coalesce(u.state,'Unknown') as User_State
, coalesce(u.country,'Unknown') as User_Country
, u.postal_code as User_Post_Code
, cast(u.created_at as date) as User_Created_Date
, ii.cost as Inventory_Cost
, ii.product_retail_price as Inventory_Retail_Price

from `bigquery-public-data`.thelook_ecommerce.order_items oi 
left join `bigquery-public-data`.thelook_ecommerce.orders o on o.order_id = oi.id
left join `bigquery-public-data`.thelook_ecommerce.products p on oi.product_id = p.id
left join `bigquery-public-data`.thelook_ecommerce.distribution_centers dc on dc.id = p.distribution_center_id
left join `bigquery-public-data`.thelook_ecommerce.users u on u.id = o.user_id
left join `bigquery-public-data`.thelook_ecommerce.inventory_items ii on ii.id = oi.product_id and dc.id = ii.product_distribution_center_id 
--where oi.status = 'Complete'




