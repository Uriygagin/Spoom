CREATE TABLE customers
	 (id_customer serial PRIMARY KEY,
	  last_name varchar(16),
	  first_name varchar(16),
	  phone integer
	 );
	 
	 CREATE TABLE employees
      (
  	  id_employee serial PRIMARY KEY ,
	  last_name varchar(16),
	  first_name varchar(16),
	  phone integer,
	  hipe_date date 
	  ) ;
	
	 CREATE TABLE measurers
	 (
	 id_measurer serial PRIMARY KEY ,
	 last_name varchar(16),
	 first_name varchar(16),
	 phone integer ,
	 hipe_date date 
	 );
	 
	CREATE TABLE suppliers
	  (
	  id_supplier serial PRIMARY KEY,
	  company_name varchar(32),
	  phone integer,
	  contact_name varchar(32)
	  );
	 
	  CREATE TABLE materials
	  (id_material serial PRIMARY KEY,
	  id_supplier integer REFERENCES suppliers (id_supplier)NOT NULL,
	  name_material varchar(32),
	  price integer );
	  
	  
	  CREATE TABLE categories 
	  (id_category serial PRIMARY KEY,
	  category_name varchar(32));
	  
	  CREATE TABLE accessories
	  (id_accessories serial PRIMARY KEY,
	  accessories_name varchar(32),
	  price integer );

	CREATE TABLE orders
	(id_orders serial PRIMARY KEY ,
	 id_employee integer REFERENCES employees(id_employee) NOT NULL,
	 id_measurer  integer REFERENCES measurers(id_measurer) NOT NULL,
	 id_customer integer REFERENCES customers (id_customer) NOT NULL,
	 id_material integer  REFERENCES materials (id_material) NOT NULL,
	 id_accessories integer REFERENCES accessories (id_accessories) NOT NULL,
	 id_category integer REFERENCES categories (id_category) NOT NULL,
	 price integer  ,
	 order_date date  ,
	 installation_date date
	 )
	 
	  