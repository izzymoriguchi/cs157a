DROP DATABASE IF EXISTS STORE;
CREATE DATABASE STORE;
USE STORE; 

DROP TABLE IF EXISTS `billofsale`;
DROP TABLE IF EXISTS `itemgraveyard`;
DROP TABLE IF EXISTS `suppliers`;
DROP TABLE IF EXISTS `reviews`;
DROP TABLE IF EXISTS `customers`;
DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `itemid` int(11) NOT NULL,
  `itemname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemprice` float(10,2) DEFAULT NULL,
  `qtyinstock` int(11) DEFAULT NULL,
  `numofreturns` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
);

INSERT INTO `items` VALUES (539, 'blanditiis', '36.30', 2, 17);
INSERT INTO `items` VALUES (915, 'exercitationem', '68.21', 20, 9);
INSERT INTO `items` VALUES (1296, 'harum', '66.47', 84, 3);
INSERT INTO `items` VALUES (1468, 'incidunt', '58.43', 24, 11);
INSERT INTO `items` VALUES (1939, 'et', '0.89', 37, 17);
INSERT INTO `items` VALUES (2106, 'aspernatur', '99.22', 7, 2);
INSERT INTO `items` VALUES (2223, 'corporis', '22.41', 70, 10);
INSERT INTO `items` VALUES (2366, 'porro', '18.61', 52, 2);
INSERT INTO `items` VALUES (2701, 'quam', '56.44', 3, 12);
INSERT INTO `items` VALUES (2895, 'quam', '88.55', 17, 6);
INSERT INTO `items` VALUES (3415, 'magni', '25.73', 5, 20);
INSERT INTO `items` VALUES (3616, 'cupiditate', '76.91', 16, 15);
INSERT INTO `items` VALUES (3691, 'laudantium', '25.89', 49, 9);
INSERT INTO `items` VALUES (3960, 'nisi', '87.79', 21, 12);
INSERT INTO `items` VALUES (4106, 'culpa', '72.66', 65, 8);
INSERT INTO `items` VALUES (4384, 'occaecati', '76.75', 85, 7);
INSERT INTO `items` VALUES (4822, 'maiores', '43.95', 91, 3);
INSERT INTO `items` VALUES (5027, 'illo', '61.70', 40, 10);
INSERT INTO `items` VALUES (5158, 'nihil', '69.45', 11, 4);
INSERT INTO `items` VALUES (5301, 'natus', '39.62', 55, 8);
INSERT INTO `items` VALUES (5380, 'et', '18.82', 0, 6);
INSERT INTO `items` VALUES (5390, 'ut', '11.40', 55, 20);
INSERT INTO `items` VALUES (5404, 'ipsum', '72.44', 40, 0);
INSERT INTO `items` VALUES (5713, 'et', '9.25', 45, 15);
INSERT INTO `items` VALUES (5935, 'aut', '54.18', 45, 3);
INSERT INTO `items` VALUES (6086, 'dolore', '63.48', 76, 14);
INSERT INTO `items` VALUES (6204, 'autem', '48.57', 29, 13);
INSERT INTO `items` VALUES (6342, 'harum', '71.49', 62, 14);
INSERT INTO `items` VALUES (6446, 'rem', '81.84', 73, 3);
INSERT INTO `items` VALUES (6719, 'quidem', '39.06', 90, 12);
INSERT INTO `items` VALUES (6964, 'ducimus', '89.13', 57, 11);
INSERT INTO `items` VALUES (7465, 'vitae', '99.49', 99, 13);
INSERT INTO `items` VALUES (7472, 'minus', '89.07', 49, 16);
INSERT INTO `items` VALUES (7565, 'veniam', '97.93', 59, 0);
INSERT INTO `items` VALUES (7819, 'qui', '62.50', 5, 3);
INSERT INTO `items` VALUES (7864, 'a', '81.17', 45, 16);
INSERT INTO `items` VALUES (7865, 'eos', '64.80', 72, 18);
INSERT INTO `items` VALUES (7932, 'quaerat', '74.67', 46, 19);
INSERT INTO `items` VALUES (7976, 'ex', '93.76', 93, 13);
INSERT INTO `items` VALUES (8073, 'atque', '79.56', 74, 12);
INSERT INTO `items` VALUES (8417, 'et', '68.43', 71, 13);
INSERT INTO `items` VALUES (8607, 'aut', '51.14', 55, 7);
INSERT INTO `items` VALUES (8661, 'modi', '46.58', 83, 1);
INSERT INTO `items` VALUES (9033, 'optio', '10.45', 14, 17);
INSERT INTO `items` VALUES (9236, 'quae', '53.24', 87, 16);
INSERT INTO `items` VALUES (9414, 'aut', '95.81', 17, 11);
INSERT INTO `items` VALUES (9456, 'sit', '29.11', 41, 11);
INSERT INTO `items` VALUES (9576, 'praesentium', '99.41', 91, 18);
INSERT INTO `items` VALUES (9628, 'in', '96.28', 84, 4);
INSERT INTO `items` VALUES (9864, 'voluptas', '80.45', 31, 0);



CREATE TABLE `customers` (
  `customername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customerid` int(11) NOT NULL,
  `numberofreturns` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
);

INSERT INTO `customers` VALUES ('Alysha Wisozk', 76, 5);
INSERT INTO `customers` VALUES ('Ezra Emmerich III', 181, 5);
INSERT INTO `customers` VALUES ('Prof. Darian Paucek DDS', 215, 5);
INSERT INTO `customers` VALUES ('Prof. Lilliana Schroeder I', 331, 2);
INSERT INTO `customers` VALUES ('Ali Hoeger', 1031, 5);
INSERT INTO `customers` VALUES ('Dr. Salvador Kshlerin', 1078, 8);
INSERT INTO `customers` VALUES ('Dr. Reece West', 1174, 4);
INSERT INTO `customers` VALUES ('Andres Boyer', 1184, 7);
INSERT INTO `customers` VALUES ('Miss Brenna Hyatt MD', 1389, 8);
INSERT INTO `customers` VALUES ('Odell Schulist', 1582, 6);
INSERT INTO `customers` VALUES ('Christop Reichel PhD', 1806, 2);
INSERT INTO `customers` VALUES ('Providenci Hayes', 2030, 7);
INSERT INTO `customers` VALUES ('Magali Reichel', 2060, 3);
INSERT INTO `customers` VALUES ('Addie Stehr', 3192, 9);
INSERT INTO `customers` VALUES ('Antoinette Powlowski', 3253, 5);
INSERT INTO `customers` VALUES ('Uriel King', 3643, 2);
INSERT INTO `customers` VALUES ('Dr. Devyn Cormier', 3658, 6);
INSERT INTO `customers` VALUES ('Anne Cummings III', 4101, 4);
INSERT INTO `customers` VALUES ('Federico Wintheiser', 4437, 9);
INSERT INTO `customers` VALUES ('Miss Kara Nikolaus III', 4549, 4);
INSERT INTO `customers` VALUES ('Lora Monahan', 4746, 8);
INSERT INTO `customers` VALUES ('Ebony Hayes', 4955, 5);
INSERT INTO `customers` VALUES ('Walker Bartoletti', 4980, 4);
INSERT INTO `customers` VALUES ('Mohammad Mosciski', 5003, 5);
INSERT INTO `customers` VALUES ('Prof. Alek Kris', 5017, 2);
INSERT INTO `customers` VALUES ('Donnie Johnston', 5261, 8);
INSERT INTO `customers` VALUES ('Aric Deckow PhD', 5355, 7);
INSERT INTO `customers` VALUES ('Keith Kutch Jr.', 5422, 6);
INSERT INTO `customers` VALUES ('Jimmy Ritchie', 5919, 8);
INSERT INTO `customers` VALUES ('Amani Leannon', 6201, 3);
INSERT INTO `customers` VALUES ('Santa Haag', 6282, 8);
INSERT INTO `customers` VALUES ('Marisol Moen', 6412, 4);
INSERT INTO `customers` VALUES ('Pink Hahn Sr.', 6654, 8);
INSERT INTO `customers` VALUES ('Tyrique Herzog Jr.', 6757, 8);
INSERT INTO `customers` VALUES ('Ms. Allene O\'Connell MD', 6843, 7);
INSERT INTO `customers` VALUES ('Prof. Angelica Boyle V', 6920, 8);
INSERT INTO `customers` VALUES ('Destini Krajcik', 7142, 7);
INSERT INTO `customers` VALUES ('Kelley Brakus', 7237, 2);
INSERT INTO `customers` VALUES ('Prof. Leanne Senger', 7397, 7);
INSERT INTO `customers` VALUES ('Pink Jacobs III', 7484, 2);
INSERT INTO `customers` VALUES ('Ms. Dejah O\'Conner DDS', 7503, 6);
INSERT INTO `customers` VALUES ('Mrs. Tomasa Schuster', 7523, 6);
INSERT INTO `customers` VALUES ('Leonel Kutch', 7665, 4);
INSERT INTO `customers` VALUES ('Josephine Runolfsson', 7929, 2);
INSERT INTO `customers` VALUES ('Amy Veum', 8002, 9);
INSERT INTO `customers` VALUES ('Mr. Reed Streich', 8148, 8);
INSERT INTO `customers` VALUES ('Enrico Goldner', 8364, 3);
INSERT INTO `customers` VALUES ('Jannie Jacobson', 8644, 4);
INSERT INTO `customers` VALUES ('Telly Herman', 9137, 5);
INSERT INTO `customers` VALUES ('Robbie Bartell', 9813, 4);



CREATE TABLE `billofsale` (
  `transactionid` int(11) NOT NULL,
  `itemid` int(11) DEFAULT NULL,
  `qtyordered` int(11) DEFAULT NULL,
  `itemprice` float(10,2) DEFAULT NULL,
  `purchasedate` date DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  PRIMARY KEY (`transactionid`),
  FOREIGN KEY (`itemid`) REFERENCES `items` (`itemid`),
  FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`)
);

INSERT INTO `billofsale` VALUES ('1576','6204','8','68.21','1984-08-21','5355'),
('8946','8607','3','89.07','1986-03-28','7523'),
('12400','1468','3','11.40','1982-01-22','331'),
('22069','5935','1','64.80','2001-06-18','5017'),
('35180','5380','7','58.43','2009-03-23','4746'),
('42112','8417','5','88.55','1997-07-25','7503'),
('43862','7976','5','81.84','1990-06-23','7397'),
('50945','6719','2','71.49','1981-05-30','6201'),
('55388','9628','1','99.41','1989-08-25','9137'),
('58248','6342','10','68.43','1989-01-15','5422'),
('60090','7472','6','74.67','1983-07-18','6654'),
('63218','1468','2','11.40','2016-06-14','331'),
('65690','3960','4','43.95','1988-03-16','3192'),
('67513','7932','8','81.17','1971-03-30','7237'),
('72837','7864','2','79.56','2015-02-23','6920'),
('73439','4106','6','46.58','1970-02-15','3253'),
('78898','6719','8','71.49','1993-05-04','6201'),
('92531','5390','5','61.70','1995-02-28','4955'),
('110231','5158','5','54.18','1972-03-28','4437'),
('138472','5713','10','63.48','1982-01-17','5003'),
('143594','2895','5','29.11','1992-06-14','1582'),
('163923','8073','2','87.79','2001-09-06','7484'),
('164773','5404','4','62.50','2003-10-29','4980'),
('168562','7565','1','76.75','1972-01-11','6757'),
('178111','8607','2','89.07','2009-01-21','7523'),
('195904','9864','9','99.49','2003-01-21','9813'),
('202927','5404','6','62.50','1998-09-03','4980'),
('214569','7864','10','79.56','2001-11-10','6920'),
('226174','4384','7','48.57','1970-01-29','3643'),
('229923','7819','6','76.91','2009-02-15','6843'),
('235669','7565','6','76.75','1974-12-29','6757'),
('241042','7864','2','79.56','1990-11-25','6920'),
('242418','5380','2','58.43','2009-06-18','4746'),
('248363','3691','5','39.62','1996-09-29','2060'),
('249655','3616','3','39.06','1975-07-04','2030'),
('254571','3691','8','39.62','1991-05-11','2060'),
('259600','9576','1','99.22','1997-03-08','8644'),
('260044','9456','10','97.93','2002-05-03','8364'),
('261517','3415','6','36.30','2017-06-09','1806'),
('270091','5027','8','53.24','1982-03-08','4101'),
('275407','7932','9','81.17','2008-12-15','7237'),
('285881','1296','4','10.45','1997-06-07','215'),
('304521','6342','6','68.43','1992-07-27','5422'),
('307779','7819','2','76.91','1985-02-07','6843'),
('311753','1296','8','10.45','1983-08-31','215'),
('314393','9576','3','99.22','1992-03-11','8644'),
('327296','1296','6','10.45','2016-02-18','215'),
('329191','8417','6','88.55','1994-09-16','7503'),
('337556','9864','3','99.49','1995-03-12','9813'),
('338111','9414','10','96.28','1977-08-18','8148'),
('354396','6086','7','66.47','1978-05-25','5261'),
('371949','7472','5','74.67','1993-03-27','6654'),
('372186','5713','6','63.48','2005-12-03','5003'),
('392551','1939','9','18.61','2011-01-02','1031'),
('392713','9576','9','99.22','1984-02-04','8644'),
('406668','7472','10','74.67','2007-12-10','6654'),
('413525','6964','8','72.44','1975-07-20','6282'),
('423767','4384','1','48.57','1978-10-12','3643'),
('429675','8661','10','89.13','1992-11-17','7665'),
('431363','7565','2','76.75','1970-12-24','6757'),
('433497','4384','3','48.57','1989-08-24','3643'),
('440011','2366','8','25.73','1984-09-26','1184'),
('446769','9864','5','99.49','1993-07-15','9813'),
('448424','8073','5','87.79','1982-11-07','7484'),
('462219','2701','9','25.89','2008-07-08','1389'),
('463206','5027','9','53.24','1975-06-27','4101'),
('470452','6342','2','68.43','2014-01-22','5422'),
('470737','7465','6','72.66','2014-09-12','6412'),
('492839','915','6','9.25','1997-03-25','181'),
('497782','9236','8','95.81','1993-07-11','8002'),
('498810','8417','10','88.55','1992-08-01','7503'),
('507752','4106','1','46.58','1987-09-28','3253'),
('525581','5158','4','54.18','2003-04-29','4437'),
('528812','2366','1','25.73','2009-01-21','1184'),
('529080','6204','3','68.21','1974-09-05','5355'),
('549314','9033','9','93.76','1971-07-15','7929'),
('551053','915','2','9.25','1980-11-01','181'),
('558270','6446','1','69.45','2002-02-09','5919'),
('560367','6086','7','66.47','1989-08-20','5261'),
('569497','2701','7','25.89','1991-08-19','1389'),
('572335','1468','6','11.40','2008-12-24','331'),
('577719','7465','5','72.66','1980-09-20','6412'),
('579086','2223','6','22.41','1973-02-07','1174'),
('586275','2106','5','18.82','2002-11-26','1078'),
('586372','8661','8','89.13','1988-02-07','7665'),
('589121','539','2','0.89','2006-04-15','76'),
('592195','2701','10','25.89','1987-05-13','1389'),
('615977','9033','7','93.76','2018-05-23','7929'),
('626258','5935','10','64.80','1989-01-02','5017'),
('627663','5027','2','53.24','2007-03-10','4101'),
('628405','7865','5','80.45','2008-01-14','7142'),
('642534','7976','6','81.84','1999-08-05','7397'),
('648700','1939','2','18.61','1990-02-23','1031'),
('649722','9236','2','95.81','1978-08-14','8002'),
('662428','2223','4','22.41','1973-04-20','1174'),
('668523','9628','4','99.41','1983-04-20','9137'),
('679393','5301','4','56.44','1990-12-20','4549'),
('684634','6204','5','68.21','2010-04-01','5355'),
('687313','3616','2','39.06','1988-09-09','2030'),
('687871','8661','5','89.13','1976-05-31','7665'),
('691918','5390','7','61.70','1978-06-05','4955'),
('698749','3616','2','39.06','2016-05-11','2030'),
('706005','2366','7','25.73','1981-02-05','1184'),
('714338','8073','4','87.79','2003-07-17','7484'),
('716873','3415','6','36.30','2017-09-16','1806'),
('724664','3691','5','39.62','1979-06-01','2060'),
('728095','4822','5','51.14','1988-08-26','3658'),
('743020','3960','2','43.95','1996-12-28','3192'),
('747839','539','1','0.89','2014-05-31','76'),
('751038','6719','2','71.49','2010-07-10','6201'),
('755252','9628','9','99.41','1995-03-11','9137'),
('770124','9414','7','96.28','1979-03-17','8148'),
('773746','5380','9','58.43','2016-12-15','4746'),
('781756','7865','6','80.45','2011-07-04','7142'),
('783898','6086','6','66.47','1986-08-25','5261'),
('793259','9033','5','93.76','1999-07-29','7929'),
('795169','2895','3','29.11','1991-05-03','1582'),
('800772','9456','7','97.93','1977-10-28','8364'),
('812708','4822','4','51.14','2004-07-26','3658'),
('814953','5404','1','62.50','1983-09-26','4980'),
('820523','2895','7','29.11','1983-02-25','1582'),
('825260','2106','7','18.82','1970-09-29','1078'),
('836256','915','5','9.25','2014-08-17','181'),
('842288','6446','5','69.45','2016-03-07','5919'),
('843897','1939','9','18.61','1970-12-17','1031'),
('847457','7932','3','81.17','2000-08-04','7237'),
('850375','3415','2','36.30','2003-07-21','1806'),
('851045','9414','6','96.28','1972-12-01','8148'),
('854259','6964','5','72.44','2005-08-25','6282'),
('854265','7465','3','72.66','1989-04-08','6412'),
('863431','4822','5','51.14','1999-12-19','3658'),
('879449','2223','10','22.41','2012-04-26','1174'),
('902861','8607','3','89.07','1987-11-23','7523'),
('905560','539','8','0.89','2006-05-30','76'),
('907545','7976','2','81.84','1993-05-03','7397'),
('908670','5390','7','61.70','2010-11-29','4955'),
('909290','6446','5','69.45','2009-12-30','5919'),
('917810','4106','2','46.58','1974-10-13','3253'),
('919885','5713','9','63.48','2009-09-16','5003'),
('920904','5301','8','56.44','1974-07-04','4549'),
('927296','5158','1','54.18','2001-03-13','4437'),
('929136','5935','8','64.80','2008-09-14','5017'),
('931675','3960','10','43.95','1983-08-01','3192'),
('940964','9456','6','97.93','1990-03-14','8364'),
('945548','6964','8','72.44','2012-11-05','6282'),
('954102','7819','8','76.91','2018-07-20','6843'),
('965576','7865','3','80.45','1991-10-15','7142'),
('966270','2106','4','18.82','2003-11-11','1078'),
('984149','5301','1','56.44','1983-06-03','4549'),
('994500','9236','4','95.81','1996-03-26','8002'); 



CREATE TABLE `itemgraveyard` (
  `itemid` int(11) NOT NULL,
  `qtymissing` int(11) DEFAULT NULL,
  `datemissing` date DEFAULT NULL,
  PRIMARY KEY (`itemid`)
);

INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (539, 5, '1993-11-17');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (915, 3, '2005-05-19');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (1296, 1, '1985-11-24');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (1468, 0, '1991-02-19');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (1939, 4, '1999-08-13');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (2106, 6, '1993-08-23');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (2223, 1, '1977-09-19');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (2366, 7, '1984-12-03');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (2701, 5, '1972-09-30');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (2895, 4, '2003-06-24');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (3415, 9, '2015-03-07');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (3616, 3, '1975-02-03');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (3691, 7, '1995-10-18');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (3960, 4, '2012-01-03');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (4106, 1, '1994-02-19');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (4384, 2, '2007-02-10');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (4822, 8, '2016-12-29');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5027, 6, '1984-05-07');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5158, 0, '1984-03-21');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5301, 1, '1993-10-13');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5380, 9, '2008-10-21');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5390, 4, '2008-10-21');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5404, 8, '2007-09-03');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5713, 7, '2016-03-30');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5935, 0, '1977-01-27');



CREATE TABLE `suppliers` (
  `transactionid` int(11) NOT NULL,
  `suppliername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemcost` float(10,2) DEFAULT NULL,
  `itemid` int(11) DEFAULT NULL,
  `qtyordered` int(11) DEFAULT NULL,
  `dateordered` date NOT NULL,
  PRIMARY KEY (`transactionid`,`dateordered`),
  FOREIGN KEY (`itemid`) REFERENCES `items` (`itemid`)
);

INSERT INTO `suppliers` VALUES ('324',' Staples','54.18','5158','7','2014-05-20'),
('402','Macy\'s','62.50','5404','8','2001-01-02'),
('488',' Target','99.22','9576','5','1990-08-22'),
('517',' Target','18.82','2106','10','2013-04-26'),
('620',' Safeway','66.47','6086','6','2003-10-04'),
('780',' Safeway','76.91','7819','1','2015-10-19'),
('806',' Lowes','25.73','2366','6','1981-03-01'),
('833',' Staples','74.67','7472','7','2016-03-09'),
('1312',' Walmart','58.43','5380','1','1995-11-01'),
('1437',' Safeway','36.30','3415','3','1984-02-02'),
('1449',' Target','80.45','7865','1','1977-02-20'),
('1466',' Fry\'s Electronics','29.11','2895','2','1980-06-24'),
('1479',' Lowes','89.07','8607','2','1978-07-14'),
('1500',' Office Depot','99.22','9576','8','2007-07-14'),
('1783',' Staples','25.89','2701','6','1993-10-10'),
('1898',' Fry\'s Electronics','87.79','8073','2','1990-10-14'),
('1925',' Staples','81.84','7976','5','1985-09-14'),
('1977',' Office Depot','76.75','7565','5','1970-02-13'),
('1982',' Office Depot','64.80','5935','7','1977-11-17'),
('2018',' SJSU','9.25','915','4','1977-04-13'),
('2055',' Lowes','25.73','2366','5','1998-01-25'),
('2057',' Office Depot','99.22','9576','1','1997-12-10'),
('2108',' Safeway','72.44','6964','7','2010-08-21'),
('2261',' Lowes','95.81','9236','6','2004-01-02'),
('2293','Macy\'s','64.80','5935','4','1974-02-22'),
('2303',' Lowes','96.28','9414','4','2015-02-17'),
('2348',' Walmart','0.89','539','2','1994-02-25'),
('2908',' Staples','43.95','3960','5','2007-01-29'),
('2942',' Lowes','72.44','6964','10','2003-03-25'),
('3046','Macy\'s','74.67','7472','3','1992-08-28'),
('3076',' Safeway','79.56','7864','4','1980-09-08'),
('3093','Macy\'s','39.06','3616','1','2016-07-06'),
('3154',' SJSU','54.18','5158','4','2013-02-21'),
('3221',' SJSU','68.43','6342','7','2001-07-08'),
('3292',' Office Depot','93.76','9033','9','1993-03-07'),
('3312',' Walmart','66.47','6086','6','1973-01-24'),
('3426',' Walmart','71.49','6719','8','1990-07-19'),
('3513',' Target','43.95','3960','6','1997-01-08'),
('3592',' SJSU','81.84','7976','7','2009-11-12'),
('3680',' Lowes','39.06','3616','8','1990-06-17'),
('3731','Macy\'s','88.55','8417','7','2012-09-24'),
('3738',' SJSU','81.17','7932','7','2002-03-19'),
('3784',' Office Depot','46.58','4106','10','2016-04-26'),
('3800',' Target','54.18','5158','4','1984-06-25'),
('3906',' Target','80.45','7865','9','2002-03-27'),
('3947',' Lowes','81.17','7932','5','1994-03-27'),
('3953',' Office Depot','63.48','5713','3','2000-06-09'),
('4001',' Target','51.14','4822','6','1997-03-15'),
('4125',' Walmart','81.84','7976','9','2006-03-27'),
('4170',' SJSU','11.40','1468','1','2001-08-06'),
('4182',' Target','68.21','6204','2','1978-10-25'),
('4363',' Lowes','66.47','6086','2','2003-11-23'),
('4414','Macy\'s','18.61','1939','9','2018-06-22'),
('4473',' Walmart','99.41','9628','5','1972-07-05'),
('4487',' Target','18.82','2106','3','1971-12-27'),
('4572',' Staples','9.25','915','10','1994-09-02'),
('4614',' Walmart','76.91','7819','5','1993-01-02'),
('4689',' Safeway','53.24','5027','4','1990-07-13'),
('4710',' Staples','25.73','2366','9','2000-06-04'),
('4763',' Target','10.45','1296','8','2003-09-30'),
('4819',' Fry\'s Electronics','61.70','5390','5','1978-12-09'),
('4849',' Staples','72.66','7465','5','2015-09-14'),
('4871',' Office Depot','63.48','5713','3','1978-12-20'),
('4942',' Safeway','9.25','915','5','1995-09-15'),
('4943','Macy\'s','76.75','7565','8','2000-12-08'),
('5006',' Staples','72.66','7465','5','2016-02-18'),
('5023','Macy\'s','69.45','6446','3','2003-11-29'),
('5073',' Office Depot','72.44','6964','4','1990-01-13'),
('5374',' Lowes','97.93','9456','1','2011-06-17'),
('5397',' Office Depot','22.41','2223','7','1986-10-24'),
('5423',' Walmart','88.55','8417','9','2018-10-11'),
('5532',' Walmart','29.11','2895','8','1986-06-01'),
('5642',' SJSU','95.81','9236','5','2005-02-02'),
('5685',' Staples','71.49','6719','9','2009-06-24'),
('5838','Macy\'s','69.45','6446','2','2013-11-05'),
('5853',' Office Depot','58.43','5380','7','2016-10-31'),
('6043','Macy\'s','64.80','5935','1','2001-06-06'),
('6133',' Staples','87.79','8073','7','1991-01-08'),
('6232',' Staples','96.28','9414','6','1973-06-29'),
('6252','Macy\'s','53.24','5027','6','2006-01-09'),
('6265',' Fry\'s Electronics','99.49','9864','5','1989-10-01'),
('6304',' Target','56.44','5301','4','2012-02-02'),
('6375',' Fry\'s Electronics','61.70','5390','7','1992-03-11'),
('6389',' Office Depot','39.62','3691','8','1975-03-24'),
('6391',' Staples','93.76','9033','10','1970-09-09'),
('6405',' Lowes','89.13','8661','1','1975-08-28'),
('6407',' Fry\'s Electronics','74.67','7472','10','1997-09-25'),
('6460',' Staples','11.40','1468','1','1972-04-22'),
('6497',' Lowes','99.49','9864','3','2004-07-24'),
('6539',' Walmart','72.66','7465','9','2005-05-26'),
('6558',' Office Depot','51.14','4822','7','2004-05-15'),
('6630',' Safeway','10.45','1296','3','1971-01-25'),
('6759',' Walmart','79.56','7864','7','2011-12-04'),
('6807',' Lowes','68.21','6204','6','1978-07-28'),
('6812',' Staples','39.62','3691','7','2016-05-06'),
('6848',' Lowes','36.30','3415','3','1989-07-20'),
('6876',' Safeway','25.89','2701','4','1986-08-21'),
('6955',' Walmart','18.61','1939','3','2007-04-23'),
('6960',' Fry\'s Electronics','61.70','5390','4','1977-03-04'),
('7094',' Staples','18.82','2106','1','2011-06-06'),
('7137',' SJSU','99.41','9628','2','1985-01-25'),
('7139','Macy\'s','43.95','3960','2','1989-01-21'),
('7176',' Office Depot','68.21','6204','1','2010-05-18'),
('7337',' Lowes','99.41','9628','10','1970-05-31'),
('7349',' Target','0.89','539','8','2015-06-18'),
('7372',' SJSU','80.45','7865','7','2004-09-21'),
('7472',' Staples','89.07','8607','7','1973-02-14'),
('7477',' Target','53.24','5027','4','2015-02-04'),
('7492',' Staples','48.57','4384','1','2001-06-23'),
('7526',' Fry\'s Electronics','89.13','8661','10','2009-07-07'),
('7594','Macy\'s','51.14','4822','9','1988-09-07'),
('7635',' Target','25.89','2701','6','1990-10-12'),
('7786',' Target','97.93','9456','8','2015-04-08'),
('7828',' Lowes','71.49','6719','3','1978-01-21'),
('7898',' SJSU','68.43','6342','2','2000-10-15'),
('7988',' Staples','11.40','1468','5','1996-01-05'),
('8014',' Fry\'s Electronics','99.49','9864','9','1981-11-08'),
('8019',' SJSU','56.44','5301','5','1990-07-07'),
('8286',' Lowes','81.17','7932','6','2015-06-29'),
('8328',' Safeway','56.44','5301','4','1990-02-27'),
('8409',' Walmart','0.89','539','1','1989-09-06'),
('8426','Macy\'s','10.45','1296','1','1979-01-26'),
('8534',' Staples','22.41','2223','10','1986-06-02'),
('8647',' Fry\'s Electronics','36.30','3415','5','1990-10-17'),
('8650',' Fry\'s Electronics','96.28','9414','3','1995-10-15'),
('8785',' Lowes','76.91','7819','7','1976-10-21'),
('8896',' Target','58.43','5380','6','1990-11-06'),
('8915',' SJSU','48.57','4384','5','1982-09-27'),
('9003',' SJSU','62.50','5404','8','2011-02-05'),
('9162','Macy\'s','62.50','5404','5','1982-09-26'),
('9167',' Lowes','69.45','6446','10','1999-03-19'),
('9185',' Office Depot','46.58','4106','4','1978-04-16'),
('9254',' SJSU','76.75','7565','8','2002-07-23'),
('9273',' Lowes','39.62','3691','3','2017-12-01'),
('9282',' Staples','95.81','9236','4','1977-10-07'),
('9304',' Office Depot','68.43','6342','3','1983-10-07'),
('9371',' SJSU','93.76','9033','5','2006-11-10'),
('9372',' Office Depot','88.55','8417','1','2004-02-06'),
('9389',' Safeway','18.61','1939','9','1973-08-11'),
('9406',' Fry\'s Electronics','89.13','8661','9','1989-02-27'),
('9424',' Staples','87.79','8073','4','2009-09-12'),
('9484',' Target','89.07','8607','1','1982-03-11'),
('9543',' Fry\'s Electronics','29.11','2895','3','1999-07-07'),
('9545',' Staples','48.57','4384','7','1976-01-24'),
('9597',' Walmart','39.06','3616','7','1980-02-03'),
('9651',' Fry\'s Electronics','79.56','7864','9','1990-06-14'),
('9714',' Walmart','63.48','5713','5','2016-03-14'),
('9829',' Fry\'s Electronics','46.58','4106','2','1971-02-06'),
('9917',' Staples','22.41','2223','10','2017-05-07'),
('9985',' SJSU','97.93','9456','6','1979-01-18'); 



CREATE TABLE `reviews` (
  `reviewid` int(11) NOT NULL,
  `reviewdate` date DEFAULT NULL,
  `itemid` int(11) DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`reviewid`),
  FOREIGN KEY (`itemid`) REFERENCES `items` (`itemid`),
  FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`)
) ;

INSERT INTO `reviews` VALUES ('477','1972-04-14','5158','4437','5'),
('3139','1976-09-06','7819','6843','5'),
('10389','1998-11-29','5404','4980','0'),
('12227','1982-08-11','5390','4955','1'),
('29830','2001-10-25','9456','8364','2'),
('31759','1976-01-18','6719','6201','4'),
('32450','1989-08-07','5713','5003','0'),
('34475','1976-02-13','7932','7237','5'),
('38950','2006-01-31','6964','6282','1'),
('39507','1997-04-21','5380','4746','1'),
('43185','1976-07-28','4384','3643','2'),
('43627','2013-09-04','3415','1806','3'),
('44531','2009-07-10','7465','6412','0'),
('48091','2008-10-08','539','76','1'),
('67116','1997-04-30','1296','215','0'),
('71934','1975-03-26','2223','1174','3'),
('85120','2018-07-26','5380','4746','2'),
('88351','2015-08-07','8661','7665','4'),
('94726','1992-01-16','6719','6201','0'),
('98155','1995-07-10','6086','5261','4'),
('99328','1989-12-25','6204','5355','2'),
('103356','2000-05-27','6342','5422','2'),
('109417','1972-04-02','7865','7142','5'),
('116922','2005-03-07','5027','4101','0'),
('124589','2013-10-27','4106','3253','0'),
('140757','2002-11-12','9236','8002','3'),
('144656','2007-12-06','5158','4437','1'),
('155590','1988-12-16','1939','1031','1'),
('158438','2005-11-30','2366','1184','5'),
('164214','2005-09-26','5301','4549','4'),
('171891','2000-08-06','915','181','5'),
('173126','2018-09-17','9414','8148','5'),
('179807','1987-11-13','8073','7484','3'),
('190223','1990-11-26','5380','4746','1'),
('190651','1985-04-01','9864','9813','0'),
('194061','1994-11-24','1468','331','2'),
('194779','2007-10-30','8607','7523','0'),
('199994','1973-06-15','9576','8644','1'),
('201021','2001-10-01','9628','9137','2'),
('205461','2007-12-10','6342','5422','3'),
('213886','1991-05-04','9576','8644','2'),
('217807','2018-06-02','2106','1078','4'),
('229879','2015-08-28','3960','3192','2'),
('230891','1988-08-27','5027','4101','0'),
('231744','1971-04-20','3691','2060','2'),
('238280','1975-05-13','4106','3253','0'),
('239730','2003-03-27','6446','5919','5'),
('247438','2006-05-10','5301','4549','0'),
('255975','1989-05-21','3960','3192','0'),
('256504','1979-05-08','9628','9137','2'),
('260069','1971-06-22','6719','6201','2'),
('265347','2002-06-28','7565','6757','3'),
('265642','2018-02-21','2895','1582','1'),
('275285','1983-10-04','5713','5003','0'),
('285566','1974-10-13','4822','3658','3'),
('290611','2018-02-23','3616','2030','5'),
('300435','1980-09-01','5158','4437','3'),
('317207','1976-06-13','7976','7397','3'),
('338296','1987-03-06','915','181','5'),
('339910','1984-10-27','9628','9137','0'),
('340195','1970-06-18','1939','1031','5'),
('347160','1979-01-08','6086','5261','3'),
('354200','1986-06-29','8607','7523','0'),
('355990','1974-07-16','8607','7523','5'),
('357706','1980-03-31','3616','2030','4'),
('361890','2012-11-02','6446','5919','1'),
('365830','1994-11-17','7864','6920','0'),
('377684','1986-11-13','7819','6843','0'),
('386745','1984-07-27','7976','7397','0'),
('388755','1996-06-12','4384','3643','1'),
('390293','1975-01-29','6342','5422','5'),
('391241','2004-03-19','4822','3658','0'),
('391854','2016-01-31','4822','3658','4'),
('397654','1983-11-08','3691','2060','4'),
('404651','2010-12-21','9236','8002','2'),
('405533','1984-09-04','9576','8644','0'),
('406265','1980-09-19','9414','8148','2'),
('421738','1978-01-08','4106','3253','0'),
('433689','2007-04-22','8073','7484','4'),
('454257','1988-10-23','5390','4955','2'),
('454383','1976-02-12','5935','5017','5'),
('458573','1982-12-15','2106','1078','4'),
('486071','2013-10-04','6204','5355','1'),
('492629','1994-10-05','7932','7237','2'),
('497283','1993-05-21','8417','7503','0'),
('498011','1996-07-30','8661','7665','3'),
('511830','1978-09-29','9864','9813','0'),
('514000','1970-08-30','3415','1806','1'),
('515797','1975-08-03','7819','6843','3'),
('527740','2011-12-06','2895','1582','5'),
('534079','1980-10-11','9864','9813','3'),
('540122','2010-02-18','1468','331','2'),
('544781','1979-09-21','8073','7484','5'),
('545455','1997-02-01','5301','4549','3'),
('561043','1979-03-26','3616','2030','1'),
('589777','1995-07-03','5404','4980','5'),
('604921','1978-05-03','6086','5261','5'),
('612716','1977-07-27','7864','6920','1'),
('614903','2015-12-09','3691','2060','2'),
('621116','1982-05-01','2106','1078','5'),
('635651','1993-07-05','5404','4980','4'),
('636755','1985-03-28','6964','6282','4'),
('648660','2003-09-30','6204','5355','5'),
('650079','2015-07-19','1296','215','5'),
('670634','2006-08-12','1468','331','0'),
('687688','1999-08-26','1296','215','3'),
('688346','1978-04-23','6964','6282','5'),
('688419','1970-06-20','9414','8148','5'),
('704291','2009-11-03','3960','3192','3'),
('707622','2010-05-30','3415','1806','2'),
('711227','1982-04-29','5713','5003','0'),
('720753','1994-06-02','2701','1389','5'),
('721518','1974-12-23','7865','7142','5'),
('723594','1978-11-29','9456','8364','3'),
('729434','1974-04-21','4384','3643','3'),
('744727','1998-03-24','2223','1174','1'),
('748865','1972-06-21','2366','1184','4'),
('750266','2010-01-20','7472','6654','0'),
('765474','2017-06-10','2223','1174','2'),
('775179','1981-06-12','5390','4955','5'),
('800366','2007-07-20','5935','5017','2'),
('801950','2015-07-21','5935','5017','4'),
('804019','2014-02-05','539','76','3'),
('810794','1978-05-20','915','181','1'),
('813725','1986-07-03','7472','6654','0'),
('837654','1998-03-08','9236','8002','4'),
('839730','1990-08-24','7976','7397','5'),
('848505','2005-08-06','7472','6654','2'),
('850135','1983-02-23','2701','1389','4'),
('855755','2006-08-12','8417','7503','2'),
('858586','1981-08-22','8661','7665','3'),
('881730','2007-03-10','8417','7503','2'),
('891230','1972-01-27','2895','1582','3'),
('917237','1997-05-13','6446','5919','0'),
('919670','2004-04-08','9033','7929','5'),
('929969','1989-10-12','2366','1184','5'),
('931439','1974-08-24','7565','6757','4'),
('935342','1970-05-24','1939','1031','3'),
('938592','2000-02-28','7864','6920','3'),
('938964','2011-03-06','7932','7237','1'),
('942694','1972-09-15','9033','7929','1'),
('943755','1978-02-14','7465','6412','2'),
('945172','1993-11-24','7565','6757','0'),
('961591','1975-07-06','7465','6412','5'),
('966012','2016-04-26','539','76','5'),
('967173','1974-03-08','5027','4101','4'),
('969017','1989-07-27','7865','7142','3'),
('978697','1973-02-13','9033','7929','5'),
('980007','2011-08-05','2701','1389','1'),
('991394','1985-02-10','9456','8364','0'); 



