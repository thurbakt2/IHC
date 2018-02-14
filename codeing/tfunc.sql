select C.CUST_ID CustID, C.CUST_DESCR Company, COUNT(*) Orders 
from ihc_customer c,ihc_orders o, ihc_products p, ihc_costs c  where 
C.CUST_ID = O.CUST_ID and O.PRODUCT_ID = P.PRODUCT_ID and P.PRODUCT_ID = C.PRODUCT_ID group by C.CUST_ID,C.CUST_DESCR;

select C.CUST_ID CustID, C.CUST_DESCR Company, O.PRODUCT_ID, O.QUANTITY, C.COST, (O.QUANTITY * C.COST) TOTAL 
from ihc_customer c,ihc_orders o, ihc_products p, ihc_costs c  where 
C.CUST_ID = O.CUST_ID and O.PRODUCT_ID = P.PRODUCT_ID and P.PRODUCT_ID = C.PRODUCT_ID 
 