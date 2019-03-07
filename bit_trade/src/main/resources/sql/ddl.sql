-- show tables ;
-- select * from PRODUCTS;
DROP TABLE IMAGES;
DROP TABLE ORDER_DETAILS;
DROP TABLE PRODUCTS;
DROP TABLE CATEGORIES;
DROP TABLE SUPPLIERS;
DROP TABLE ORDERS;
DROP TABLE SHIPPERS;
DROP TABLE EMPLOYEES;
DROP TABLE CUSTOMERS;


CREATE TABLE Customers(
CUSTOMER_ID   VARCHAR(15) PRIMARY KEY,
CUSTOMER_NAME VARCHAR(15) NOT NULL,
PASSWORD      VARCHAR(15) NOT NULL,
ADDRESS       VARCHAR(100) NOT NULL,
CITY          VARCHAR(100) NOT NULL,
POSTAL_CODE   VARCHAR(15) NOT NULL,
SSN           VARCHAR(15) NOT NULL,
PHOEN_NUMBER  VARCHAR(20),
PHOTO         VARCHAR(30) DEFAULT 'default_photo'
);

CREATE TABLE EMPLOYEES(
EMPLOYEE_ID VARCHAR(15) PRIMARY KEY,
NAME VARCHAR(15) NOT NULL,
BIRTH_DATE VARCHAR(15) NOT NULL,
PHOTO VARCHAR(15) DEFAULT 'default_photo',
NOTES VARCHAR(15),
MANAGER     VARCHAR(15)
);

CREATE TABLE SHIPPERS(
SHIPPER_ID VARCHAR(15) PRIMARY KEY,
SHIPPER_NAME VARCHAR(15) NOT NULL,
PHONE VARCHAR(15) NOT NULL
);

CREATE TABLE ORDERS(
ORDER_ID INT PRIMARY KEY AUTO_INCREMENT,
CUSTOMER_ID VARCHAR(15) NOT NULL,
EMPLOYEE_ID VARCHAR(15) NOT NULL,
ORDER_DATE DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
SHIPPER_ID VARCHAR(15) NOT NULL,
CONSTRAINT ORDERS_FK_CUSTOMERS FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),
CONSTRAINT ORDERS_FK_EMPLOYEES FOREIGN KEY(EMPLOYEE_ID) REFERENCES EMPLOYEES(EMPLOYEE_ID),
CONSTRAINT ORDERS_FK_SHIPPERS FOREIGN KEY(SHIPPER_ID) REFERENCES SHIPPERS(SHIPPER_ID)
);

CREATE TABLE SUPPLIERS(
SUPPLIER_ID VARCHAR(15) PRIMARY KEY,
SUPPLIER_NAME VARCHAR(15) NOT NULL,
CONTACT_NAME VARCHAR(15) NOT NULL,
ADDRESS VARCHAR(15) NOT NULL,
CITY VARCHAR(100) NOT NULL,
POSTAL_CODE VARCHAR(15) NOT NULL,
COUNTRY VARCHAR(15) NOT NULL,
PHONE VARCHAR(15) NOT NULL
);


CREATE TABLE CATEGORIES(
CATEGORY_ID INT PRIMARY KEY AUTO_INCREMENT,
CATEGORY_NAME VARCHAR(15) NOT NULL,
DESCRIPTION VARCHAR(15)
);


CREATE TABLE PRODUCTS(
PRODUCT_ID INT PRIMARY KEY AUTO_INCREMENT,
PRODUCT_NAME VARCHAR(15) NOT NULL,
SUPPLIER_ID VARCHAR(15) NOT NULL,
CATEGORY_ID INT NOT NULL,
UNIT VARCHAR(15),
PRICE INT NOT NULL,
CONSTRAINT PRODUCTS_FK_SUPPLIERS FOREIGN KEY(SUPPLIER_ID) REFERENCES SUPPLIERS(SUPPLIER_ID),
CONSTRAINT PRODUCTS_FK_CATEGORIES FOREIGN KEY(CATEGORY_ID) REFERENCES CATEGORIES(CATEGORY_ID)
);


CREATE TABLE ORDER_DETAILS(
ORDER_DETAIL_ID INT PRIMARY KEY AUTO_INCREMENT,
ORDER_ID INT NOT NULL,
PRODUCT_ID INT NOT NULL,
QUANTITY INT NOT NULL,
CONSTRAINT ORDERDETAILS_FK_ORDERS FOREIGN KEY(ORDER_ID) REFERENCES ORDERS(ORDER_ID),
CONSTRAINT ORDERDETAILS_FK_PRODUCTS FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID)
);

CREATE TABLE IMAGES(
IMG_SEQ          INT PRIMARY KEY AUTO_INCREMENT,
IMG_NAME         VARCHAR(20),
IMG_EXTENTION    VARCHAR(15),
OWNER           VARCHAR(15) NOT NULL
);



INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('jgw9111','정지우','920901','929001-2','010-1992-0901','인천광역시 서구 버들로 27','검단자이1단지','22657');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('easy1228','이지은','921228','921228-2','010-1992-1228','인천시 부평구 길주남로10번길 21','래미안부평','21357');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('blackbean','김지수','921214','921214-2','010-1992-1214','서울 영등포구 영신로 191','동부센트레빌','07258');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('dididi','박은지','940613','940613-2','010-1994-0613','경기도 안산시 상록구 본삼로 48','월드아파트','15538');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('silver0','김은영','910211','910211-2','010-1991-0211','경기도 구리시 건원대로 92','인창1단지주공','11917');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('jgs1119','정지수','940407','940407-2','010-1994-0407','경기도 부천시 안곡로 16번길 47','염광아파트','14699');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('oreooo','김승아','911104','911104-2','010-1991-1104','서울시 강동구 아리수로50길 50','래미안힐스테이트고덕','05229');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('Blackcu','이종협','931228','931228-1','010-1994-1228','경기도 파주시 당동1로 52','파주한양수자인리버팰리스','10819');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('Blackrr','이창준','930523','930523-1','010-1993-0523','경기도 파주시 당동1로 52','파주한양수자인리버팰리스','10819');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('Black27','남기호','960721','960721-1','010-1996-0627','서울특별시 강서구 방화대로37길 15','신동아아파트','07605');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('starbucks','박정우','911227','911227-1','010-1991-1227','서울시 강동구 아리수로97길 20','강일리버파크','05209');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('parkmih','박미현','920419','920419-2','010-1992-0419','경기도 부천시 범안로 130-27','범박힐스테이트','14778');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('chichimom','유보람','921020','921020-2','010-1992-1020','경기도 부천시 경인로134번길 16','부천우방유쉘','14726');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('universe','김창하','950123','950123-1','010-1995-0123','서울시 마포구 상암산로1길 24','상암월드컵파크','03907');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('seooooh','전서우','890707','890707-1','010-1989-0707','인천광역시 계양구 형제봉길 100','계양센트레빌1단지','21017');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('youjungchoi','최유정','911211','911211-2','010-1991-1211','경기도 구리시 갈매중앙로 16','갈매푸르지오','11902');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('hojunee','이호준','900211','900211-1','010-1990-0211','경기도 구리시 갈매중앙로 16','갈매푸르지오','11902');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('wonwool','이원우','180901','180901-1','010-2018-0901','경기도 구리시 갈매중앙로 16','갈매푸르지오','11902');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('kimkrystal','김수정','921023','921023-2','010-1992-1023','경기도 시흥시 은행로 93-1','은행대우푸르지오','14919');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('kimyounhye','김윤혜','930122','930122-2','010-1993-0122','경기도 부천시 안곡로 54','금광포란재','14689');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('jabjab','정재빈','921008','921008-2','010-1992-1008','서울시 구로구 경인로20길 6','오류포스시티','08271');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('baskinjulen','최은경','920317','920317-2','010-1992-0317','경기도 용인시 수지구 광교마을로 62','광교상록자이','16943');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('hongjunee','윤홍준','920707','920707-1','010-1992-0707','경기 부천시 양지로 234-38','엘에이치옥길센트럴','14786');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('haeinny','정해인','921004','921004-2','010-1992-1004','경기 부천시 경인옛로108번길 15','조공1차아파트','14696');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('marymom','전다혜','920403','920403-2','010-1992-0403','경기도 부천시 경인로484번길 68-7','신일해피트리','14688');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('kimone','김하나','920511','920511-2','010-1992-0511','서울시 마포구 토정로18길 11','래미안웰스트림','04091');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('videditork','김현지','920707','920707-2','010-1992-2727','서울 광진구 아차산로 262','더샵스타시티','05065');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('sungmun','송성문','960829','960829-1','010-1996-0829','서울 구로구 개봉로2길 133-15','개봉아이파크','08331');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('hasungk','김하성','951017','951017-1','010-1995-1027','서울 양천구 신정로 170','현대6차아파트','08110');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('doyeon','김도연','991204','991204-2','010-1999-1204','강원도 원주시 늘품로 199','원주반곡아이파크','26458');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('haribo','김아름','920623','920623-2','010-1992-0623','경기 부천시 경인옛로108번길 15','조공1차아파트','14696');
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHOEN_NUMBER,CITY,ADDRESS,POSTAL_CODE) VALUES ('jeonhayeon','전하연','920113','920113-2','010-1992-0113','경기도 고양시 일산동구 위시티4로 45','위시티일산자이','10323');

INSERT INTO SUPPLIERS VALUES('KEI29','김승아','부엉이','암천빌딩','서울특별시 강남구 테헤란로 421','06160','한국','010-2456-8822');
INSERT INTO SUPPLIERS VALUES('LION','이종협','라이언','현대타운 207호','경기도 화성시 영통로27번길 53','18376','한국','010-2341-4256');
INSERT INTO SUPPLIERS VALUES('SKITTLES','김은영','레이디스','코스트코 1층','서울 영등포구 선유로 156 ','07255','한국','010-1187-2419');
INSERT INTO SUPPLIERS VALUES('KIHO','남기호','더하기','거구장 3층 비트캠프','서울 마포구 백범로 23','04108','한국','010-2152-1231');


INSERT INTO CATEGORIES VALUES(1000,'smart_phone','DESCRIPTION');

INSERT INTO PRODUCTS VALUES (0,'GALAXY 10','KEI29',1000,'SMARTPHONE',1039000);
INSERT INTO PRODUCTS VALUES (0, 'A9 Pro', 'KEI29', 1000 , 'SMARTPHONE', 941500);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy J4+', 'KEI29', 1000 , 'SMARTPHONE', 840500);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy J4', 'KEI29', 1000 , 'SMARTPHONE', 850000);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy A8', 'SKITTLES', 1000 , 'SMARTPHONE', 860000);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy S10', 'KEI29', 1000 , 'SMARTPHONE', 861000);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy S10+', 'LION', 1000 , 'SMARTPHONE', 864000);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy S9', 'SKITTLES', 1000 , 'SMARTPHONE', 884000);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy S9+', 'SKITTLES', 1000 , 'SMARTPHONE', 889000);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy S8', 'LION', 1000 , 'SMARTPHONE', 989000);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy S8+', 'KIHO', 1000 , 'SMARTPHONE', 984000);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy S7', 'LION', 1000 , 'SMARTPHONE', 964000);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy S7+', 'KIHO', 1000 , 'SMARTPHONE', 965000);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy S7 Edge ', 'LION', 1000 , 'SMARTPHONE', 980000);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy NOTE 7', 'LION', 1000 , 'SMARTPHONE', 985000);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy NOTE 8', 'LION', 1000 , 'SMARTPHONE', 1003000);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy NOTE 9', 'KIHO', 1000 , 'SMARTPHONE', 1053000);
INSERT INTO PRODUCTS VALUES (0, 'Galaxy NOTE 10', 'KIHO', 1000 , 'SMARTPHONE', 1094500);