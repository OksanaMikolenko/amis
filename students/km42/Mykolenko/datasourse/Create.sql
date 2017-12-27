/*==============================================================*/

/* DBMS name:      ORACLE Version 11g                           */

/* Created on:     15.11.2017 17:44:08                          */

/*==============================================================*/


drop index Booking_of_flat_FK;



drop table Booking cascade constraints;



drop table Flat cascade constraints;



drop table "User" cascade constraints;

 drop SEQUENCE User_SEQ;

drop SEQUENCE Booking_SEQ;


/*==============================================================*/

/* Table: Booking                                               */

/*==============================================================*/

create table Booking 

(

   booking_id           INTEGER              not null,

   booking_status       SMALLINT             not null,

   booking_startdate    DATE                 not null,

   booking_finishdate   DATE                 not null,

   host_id_fk           INTEGER              not null,

   guest_id_fk          INTEGER              not null,

   flat_adress_fk       VARCHAR2(256)        not null,

   constraint PK_BOOKING primary key (booking_id)

);



/*==============================================================*/

/* Index: Booking_of_flat_FK                                    */

/*==============================================================*/

create index Booking_of_flat_FK on Booking (

   flat_adress_fk ASC

);


/*==============================================================*/

/* Index: to_lease_flat_FK                                      */

/*==============================================================*/

create index to_lease_flat_FK on Booking (

   host_id_fk ASC

);



/*==============================================================*/

/* Index: to_book_flat_FK                                       */

/*==============================================================*/

create index to_book_flat_FK on Booking (

   guest_id_fk ASC

);



/*==============================================================*/

/* Table: Flat                                                  */

/*==============================================================*/

create table Flat 

(

   flat_adress          VARCHAR2(256)        not null,

   flat_price           FLOAT(8)             not null,

   flat_type            VARCHAR2(25)         not null,

   flat_description     VARCHAR2(1024)       not null,
   
   user_id_fk              INT               not null,

   flat_img_url            varchar2(1024)    not null, 

   constraint PK_FLAT primary key (flat_adress)

);



/*==============================================================*/

/* Table: "User"                                                */

/*==============================================================*/

create table "User" 

(

   user_id              INTEGER              not null,

   user_firstname       VARCHAR2(45)         not null,

   user_secondname      VARCHAR2(45)         not null,

   user_email           VARCHAR2(45)         not null,

   user_pass            VARCHAR2(45)         not null,

   user_type            SMALLINT             not null,

   constraint PK_USER primary key (user_id)

);
CREATE SEQUENCE User_SEQ
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE;
   
 
 Create SEQUENCE Booking_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMAXVALUE;
 

/*================================================================*/

/*Check up */

/*===============================================================*/





/*Checking data of user */

alter table "User"

add constraint user_email_unique UNIQUE (user_email);



alter table "User"

add constraint check_of_user_id 

check(regexp_like (user_id, '^[0-9]{1,5}$')); 



alter table "User"

add constraint check_of_user_email 

check(regexp_like (user_email, '^[A-z0-9_.]+@([A-z]{2,6}+\.)+[A-z]{2,6}$')); 



alter table "User" 

add constraint check_of_user_email_len 

check((length(user_email)>=10  and length(user_email)<=45)); 



alter table "User"

add constraint check_of_user_firstname_len 

check((length(user_firstname)>=2  and length(user_firstname)<=45)); 



alter table "User"

add constraint check_of_user_firstname 

check(regexp_like (user_firstname, '^[A-Z?-????][a-z?-????-]+($|\s)', 'c')); 





alter table "User"

add constraint check_of_user_secondname_len 

check((length(user_secondname)>=2  and length(user_secondname)<=45)); 



alter table "User"

add constraint check_of_user_secondname 

check(regexp_like (user_secondname, '^[A-Z?-????][a-z?-????-]+($|\s)', 'c')); 





alter table "User" 

add constraint check_of_user_pass_len

check((length(user_pass)>=10  and length(user_pass)<=45)); 



alter table "User"

add constraint check_of_user_pass 

check(regexp_like (user_pass, '^[A-Za-z!#$%&*+-=?^_`{|}~\.0-9@]+($|\s)'));



 alter table "User" 

 add constraint check_user_type 

 check(regexp_like (user_type, '^[0-9]{1,5}+($|\s)'));



/*checking data of flat 



*/



   alter table Flat 

   add constraint check_of_flat_description_len 

   check((length(flat_description)>=10  and length( flat_description )<=1023)); 

   

    alter table Flat

    add constraint check_of_flat_adress_len

    check((length(flat_adress)>=2  and length( flat_adress )<=255)); 

   

      

    alter table Flat

    add constraint check_of_flat_type_len

    check((length(flat_type)>=1  and length( flat_type )<=25)); 



    alter table Flat

    add constraint flat_price_num

    check (length(flat_price) <= 9 and length(flat_price) > 1);

    

    alter table Flat

    add constraint check_of_flat_description

    check(regexp_like (flat_description, '^[A-Z?-????][a-z?-????,.?! -]+($|\s)', 'c')); 



    alter table Flat

    add constraint flat_adress

    check(regexp_like (flat_adress, '^[A-Z?-????][a-z?-????.\\, -]+($|\s)', 'c')); 



    alter table Flat

    add constraint flat_type

    check(regexp_like (flat_type, '^[A-Z?-????][a-z?-???? -]+($|\s)', 'c')); 



    

    

 /*Checking data of booking

 create table Booking 

*/



 



 alter table Booking 

 add constraint check_date 

 check(booking_startdate < booking_finishdate);

 

 /*

 alter table Booking 

 add constraint check_booking_startdate 

 check(booking_startdate >= current_date -1);*/

 

 alter table Booking 

 add constraint check_booking_status_num 

 check (booking_status <= 5 and booking_status >= 0);   

 

 alter table Booking 

 add constraint check_booking_status 

 check(regexp_like (booking_status, '^[0-9]{1,5}+($|\s)'));



/*=============================================================================*/

      