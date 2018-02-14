select C.CUST_ID CustID, C.CUST_DESCR Company, N.NAME MainContact, N.NAME_TITLE Title, R.NAME RepName 
from ihc_customer c,ihc_client_assignments a, ihc_client_rep r,ihc_names n where 
C.CUST_ID = N.CUST_ID and C.CUST_ID = A.CUST_ID(+) and r.emplid = a.EMPLID and C.CUST_ID = &CustomerID;

