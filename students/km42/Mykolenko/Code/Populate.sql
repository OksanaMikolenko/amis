--For User
INSERT INTO "OKSANA"."User" (USER_ID, USER_FIRSTNAME, USER_SECONDNAME, USER_EMAIL, USER_PASS, USER_TYPE) VALUES (User_SEQ.nextval, 'Oksana', 'Mykolenko', 'mykolenko@gmail.com', 'qwertyqwerty', '1');

--For Flat
INSERT INTO "OKSANA"."FLAT" (USER_ID_FK, FLAT_ADRESS, FLAT_PRICE, FLAT_TYPE, FLAT_DESCRIPTION) VALUES ( User_SEQ.CURRVAL, 'Kyiv, Stritenska Str, flat 96', '100', 'Apartments', 'Great flat');
INSERT INTO "OKSANA"."FLAT" (USER_ID_FK, FLAT_ADRESS, FLAT_PRICE, FLAT_TYPE, FLAT_DESCRIPTION) VALUES ( User_SEQ.CURRVAL, 'Kyiv, Stritenska Str, flat 967', '100', 'Flat', 'Beautiful flat in the city center, if you like museums, you will probably like it');
INSERT INTO "OKSANA"."FLAT" (USER_ID_FK, FLAT_ADRESS, FLAT_PRICE, FLAT_TYPE, FLAT_DESCRIPTION) VALUES ( User_SEQ.CURRVAL,'Kyiv, Gogolivska Str, flat 6', '100', 'Apartments', 'Great flat in center');

--For Booking
INSERT INTO "OKSANA"."BOOKING" (BOOKING_ID, BOOKING_STATUS, BOOKING_STARTDATE, BOOKING_FINISHDATE, HOST_ID_FK, GUEST_ID_FK, FLAT_ADRESS_FK) VALUES (Booking_SEQ.nextval, '0', TO_DATE('2017-11-25 16:29:38', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2017-11-30 16:29:42', 'YYYY-MM-DD HH24:MI:SS'), User_SEQ.CURRVAL, '0', 'Kyiv, Gogolivska Str, flat 6');
INSERT INTO "OKSANA"."BOOKING" (BOOKING_ID, BOOKING_STATUS, BOOKING_STARTDATE, BOOKING_FINISHDATE, HOST_ID_FK, GUEST_ID_FK, FLAT_ADRESS_FK) VALUES (Booking_SEQ.nextval, '0', TO_DATE('2018-11-25 16:29:38', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2018-11-30 16:29:42', 'YYYY-MM-DD HH24:MI:SS'), User_SEQ.CURRVAL, '0', 'Kyiv, Gogolivska Str, flat 6');
INSERT INTO "OKSANA"."BOOKING" (BOOKING_ID, BOOKING_STATUS, BOOKING_STARTDATE, BOOKING_FINISHDATE, HOST_ID_FK, GUEST_ID_FK, FLAT_ADRESS_FK) VALUES (Booking_SEQ.nextval, '0', TO_DATE('2019-11-25 16:29:38', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-11-30 16:29:42', 'YYYY-MM-DD HH24:MI:SS'), User_SEQ.CURRVAL, '0', 'Kyiv, Gogolivska Str, flat 6');


INSERT INTO "OKSANA"."User" (USER_ID, USER_FIRSTNAME, USER_SECONDNAME, USER_EMAIL, USER_PASS, USER_TYPE) VALUES (User_SEQ.nextval, 'Kate', 'Midelton', 'midelton@gmail.com', 'qwertyqwerty2', '2');
INSERT INTO "OKSANA"."User" (USER_ID, USER_FIRSTNAME, USER_SECONDNAME, USER_EMAIL, USER_PASS, USER_TYPE) VALUES (User_SEQ.nextval, 'Vova', 'Kozyk', 'kozyk@gmail.com', 'qwertyqwerty21', '0');
User_SEQ.currval;

