\COPY nation  FROM '..\data\nation.tbl'  DELIMITER '|'  CSV;
\COPY region  FROM '..\data\region.tbl'  DELIMITER '|'  CSV;
\COPY customer  FROM '..\data\customer.tbl'  DELIMITER '|'  CSV;
\COPY lineitem  FROM '..\data\lineitem.tbl'  DELIMITER '|'  CSV;
\COPY orders  FROM '..data\orders.tbl'  DELIMITER '|'  CSV;
\COPY part  FROM '..\data\part.tbl'  DELIMITER '|'  CSV;
\COPY supplier  FROM '..\data\supplier.tbl'  DELIMITER '|'  CSV;
\COPY partsupp  FROM '..data\partsupp.tbl'  DELIMITER '|'  CSV;
