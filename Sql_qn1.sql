SELECT DISTINCT product_catalogue.Cat_Id,purchase_history.Product_Id,
RANK() OVER (ORDER BY SUM(purchase_history.Sale_Qty) DESC) Trending
 FROM purchase_history
 INNER JOIN product_catalogue 
 ON purchase_history.Product_Id=product_catalogue.Product_Id 
 GROUP BY product_catalogue.Cat_Id;
 
 
