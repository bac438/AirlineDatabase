/*
Create tables for Zero Waste's database.

By: Brittany Cook, RayAnn O'Neill, Joe Sexton
Last modified: 10/14/2015
*/

/*
Table Brand

This table has the information for each Brand.
It has a brand ID (brand_id), and a name (brand_name).

Brand(BRAND_ID, brand_name)
*/

drop table Brand cascade constraints;

create table Brand
(brand_id    integer not null,
 brand_name  varchar2(50)
 primary key (brand_id)
);

/*
Table Product

This table has the product's ID number (prod_id),
the material it is made out of's ID number (mat_id), 
the name of what the Arcata COOP uses the product 
for (prod_name), the URL of the product (prod_URL),
and the brand's ID number (brand_id).

Product(PROD_ID, prod_name, prod_URL)
foreign key (brand_id) references Brand,
foreign key (mat_id) references Material_Type
*/

drop table Product cascade constraints;

create table Product
(prod_id     integer not null,
 mat_id      integer not null,
 prod_name   varchar2(100),
 prod_URL    varchar2(500),
 brand_id    varchar2(50)
 primary key (prod_id),
 foreign key (brand_id) references Brand,
 foreign key (mat_id) references Material_Type
);

/*
Table Prod_Brand_Details

This table has the product's ID number (prod_id),
where the product was made (e.g., USA, China, etc.) 
(where_made), and if the manufacturing process is 
chlorine free (yes it is free of chlorine (y), no
it is not free of chlorine (n), unknown (u)) (CL_free_mfg)

Prod_Brand_Details(PROD_ID, where_made, CL_free_mfg)
foreign key (prod_id) references Product
*/

drop table Prod_Brand_Details cascade constraints;

create table Prod_Brand_Details
(prod_id     integer not null,
 where_made  varchar2(40),
 CL_free_mfg      char(1)
             check(CL_free_mfg in ('y', 'n', 'u')),
 primary key (prod_id),
 foreign key (prod_id) references Product
);

/*
Table Material_Type

This table has the material's ID number (mat_id),
what the material it is made out of is called (mat_name),
and, if it is made out of plastic, the code of the
plastic (e.g., 5) (mat_plastic_code).

Material_Type(MAT_ID, prod_id, mat_name, mat_plastic_code)
foreign key (prod_id) references Product
*/

drop table Material_type cascade constraints;

create table Material_Type
(mat_id			  integer not null,
 mat_name         varchar2(100),
 mat_plastic_code integer
 primary key      (mat_id),
);

/*
Table Recyclability

This table has the product's ID number (prod_id),
if it is recyclable (yes it is recyclable (y), no
it is not recyclable (n), unknown (u)) (is_recycle),
estimated rate of recycling in the US in percent recycled
of amount generated (rate_recycle), and the market for
recycling in Humboldt County (market_for).

Recyclability(MAT_ID, is_recycle, rate_recycle, market_for)
foreign key (mat_id) references Material_Type
*/

drop table Recyclability cascade constraints;

create table Recyclability
(mat_id      integer not null,
 is_recycle   char(1)
              check(is_recycle in ('y', 'n', 'u')),
 rate_recycle varchar2(50),
 market_for   varchar2(50)
 primary key  (mat_id),
 foreign key  (mat_id) reference Material_Type
);

/*
Table Toxicity

This table has a material ID (mat_id),
the toxicity of material base polymer resin (toxicity_concern),
likely to contain leachable toxic chemicals (likely_leach)
(yes it is likely to contain leachable toxic chemicals (y), no
it is not likely to contain leachable toxic chemicals (n), unknown (u))

Toxicity(MAT_ID, toxicity_concern, likely_leach)
foreign key (mat_id) references Material_type
*/

drop table Toxicity cascade constraints;

create table Toxicity
(mat_id           integer not null,
 toxicity_concern varchar2(50),
 likely_leach     char(1)
                  check(likely_leach in ('y', 'n', 'u')),
 primary key      (mat_id),
 foreign key      (mat_id) references Material_Type
);


/*
Table Persistence

This table has a material ID (mat_id),
the lower and upper range of estimated years to 
degrade in:
the ocean (lower_range_ocean, upper_range_ocean),
a landfill (lower_range_landfill, upper_range_landfill),
on land (lower_range_land, upper_range_land)

Persistence(MAT_ID, lower_range_ocean, upper_range_ocean,
            lower_range_landfill, upper_range_landfill,
            lower_range_land, upper_range_land)
foreign key (mat_id) references Material_Type
*/

drop table Persistence cascade constraints;

create table Persistence
(mat_id               integer not null,
 lower_range_ocean    integer,
 upper_range_ocean    integer,
 lower_range_landfill integer,
 upper_range_landfill integer,
 lower_range_land     integer,
 upper_range_land     integer
 primary key          (mat_id),
 foreign key          (mat_id) references Material_Type
);

