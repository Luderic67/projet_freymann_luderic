begin;
set transaction read write;

DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS Product;

CREATE TABLE Client(
    id SERIAL PRIMARY KEY,
    last_name VARCHAR(48),
    first_name VARCHAR(48),
    username VARCHAR(48) UNIQUE,
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255)
);

CREATE TABLE Product(
   id           VARCHAR(36) NOT NULL PRIMARY KEY
  ,name         VARCHAR(255) NOT NULL
  ,description  VARCHAR(500) NOT NULL
  ,price        NUMERIC(4,2) NOT NULL
  ,stock_sector VARCHAR(255) NOT NULL
  ,stock_name   VARCHAR(255) NOT NULL
  ,stock_market VARCHAR(255) NOT NULL
);
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('83a76d45-c400-4942-b3c5-d608c391f3fc','Squeeze Bottle','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.',2.86,'n/a','Royal Dutch Shell PLC','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('d6d8e2c3-11d8-4123-9faa-0e4662371eb6','Papadam','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',2.2,'Finance','Kingstone Companies, Inc','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('03de5baa-b48d-4cbc-9ff4-db7593812481','Pasta - Lasagna, Dry','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.',1.34,'n/a','Pimco Global Stocksplus & Income Fund','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('cdba417f-9eb6-4891-b3c3-941ecb8b0d0e','Pie Shell - 9','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',7.74,'Capital Goods','Fortive Corporation','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('136b0b10-8dc8-4761-a827-ac22de853e84','Soup - Knorr, Country Bean','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.',3.91,'Finance','Chemung Financial Corp','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('748f3a5f-a263-4dae-acd4-776ee4b978a8','Oil - Peanut','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.',2.35,'Transportation','Delta Air Lines, Inc.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('25364066-b471-454f-b905-c382ad666119','Wine - Coteaux Du Tricastin Ac','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',7.14,'Consumer Services','W.W. Grainger, Inc.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('79af0841-425b-4e0d-8949-8134e21ed9b4','Wiberg Super Cure','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',1.13,'Technology','GSI Technology, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('9b0d33ab-992e-4fee-b692-72c57ee008dd','Capon - Breast, Wing On','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',1.88,'Technology','Blackbaud, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('752533bd-5216-40ef-85fc-bc7b724d4e6e','Macaroons - Two Bite Choc','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.',5.35,'Health Care','Vascular Biogenics Ltd.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('5a8711ce-2388-46af-a7a1-4cf896a4880e','Aspic - Amber','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',4.61,'n/a','MainStay DefinedTerm Municipal Opportunities Fund','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('7010669e-defe-413f-aaf7-2cf5662c3997','Pear - Packum','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',2.75,'Finance','Popular, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('a3f03ea6-38e2-43cb-b322-f53cb917cbca','Contreau','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',8.68,'Health Care','Cutera, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('22e2fb4a-21c2-49d7-8a3d-f590f8b8b460','Sauce - Hp','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.',7.5,'Consumer Durables','Helen of Troy Limited','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('c1d32194-b436-4cab-ab5c-6914c88db31f','Bread - Raisin Walnut Oval','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',9.78,'Capital Goods','NN, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('bb0e9da3-dd2d-4411-8665-bc6640b262a0','Doilies - 10, Paper','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.',3.75,'Finance','Stewart Information Services Corporation','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('22045636-4989-4da2-b1b8-d01369b482e0','Arizona - Green Tea','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.',3.39,'n/a','Bank Of Montreal','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('e1481886-31ca-43f3-bab1-e484d781494b','Potato - Sweet','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',1.47,'n/a','Blackrock MuniHoldings California Quality Fund,  Inc.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('7cc643b0-de6b-4884-a169-f186251a882c','Glass - Juice Clear 5oz 55005','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.',9.33,'Public Utilities','Middlesex Water Company','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('a1a730a8-e396-4fd2-a1c3-961ff243596e','Coffee - Espresso','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',7.53,'n/a','National Retail Properties','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('33b758bc-4332-4d62-bb91-625e08e4ee6b','Sprouts - Peppercress','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.',3.47,'Technology','Harmonic Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('96e6ae92-bec4-4491-a822-3a9caaa6274c','Passion Fruit','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',4.22,'n/a','BlueStar TA-BIGITech Israel Technology ETF','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('55fac07e-6a4c-4dba-be37-bad959facfb8','Cocoa Powder - Dutched','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.',7.52,'Energy','Matador Resources Company','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('833c0e56-d89a-49ce-8782-62335d5a70d2','Pasta - Canelloni','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',9.06,'Finance','Prudential Financial, Inc.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('298cc161-774e-49b9-abc8-2404c6c6e408','Mushroom - Porcini, Dry','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',4.81,'Energy','Unit Corporation','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('bba967bc-23bb-4910-a737-ab1c8b7ad24a','Fish - Soup Base, Bouillon','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',9.73,'Consumer Non-Durables','Hershey Company (The)','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('7ca6cbe7-ec7a-41a6-9b45-6ed477ab1f92','V8 - Berry Blend','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',5.89,'Finance','Citizens Holding Company','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('48de4bb6-236f-4d5f-b090-605ab5e6239e','Icecream - Dstk Cml And Fdg','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',4.57,'Energy','Ballard Power Systems, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('f40034b6-2b95-4178-8217-d7b088fdd4ac','Evaporated Milk - Skim','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',8.05,'Technology','Netlist, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('c69500ed-8a93-45f1-9e1d-bc0c5255f904','Soup - Campbells, Butternut','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',4.25,'Finance','Capitol Federal Financial, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('1264767e-0dd3-49f4-9352-ae52d993e2c6','Pie Shell - 5','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',1.78,'Basic Industries','Reliance Steel & Aluminum Co.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('e1d9c58b-6433-4560-a729-24fa2f5a0f9c','Wine - Alsace Riesling Reserve','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.',4.1,'n/a','PowerShares KBW Bank Portfolio','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('c2e1219a-4e3f-4a41-83a7-685d68b5e1b2','V8 - Berry Blend','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.',9.56,'n/a','Costamare Inc.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('9fae8db0-269c-48dd-8db9-ae29a59e738f','Coriander - Seed','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.',8.49,'Transportation','China Eastern Airlines Corporation Ltd.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('1839789c-a0b7-4a12-a1d5-b9637891df8c','Cheese - Mozzarella, Buffalo','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.',2.38,'Consumer Durables','Compass Diversified Holdings','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('3abc832a-dafd-453a-abf9-adc81b9be7ff','Grenadine','Fusce consequat. Nulla nisl. Nunc nisl.',2.96,'Finance','BB&T Corporation','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('c8cb70e9-d329-4f37-b88e-18ba0329a4da','Honey - Liquid','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.',7.99,'Consumer Services','Corporate Office Properties Trust','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('5da01136-c08b-48c6-a1ef-95ae3710c760','Pork - Shoulder','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.',2.49,'Finance','Global Indemnity Limited','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('503c1c70-2738-44e2-9bd3-aaac1f514a8d','Clam Nectar','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.',7.73,'Finance','National General Holdings Corp','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('e8b934ab-c784-4e8e-a703-cd30797c5709','Bread - Petit Baguette','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.',4.22,'Consumer Services','Scripps Networks Interactive, Inc','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('87098cfc-2fe1-4667-881d-f59edb42960c','Fish - Scallops, Cold Smoked','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.',6.65,'Transportation','P.A.M. Transportation Services, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('23404bf6-10bc-4ba7-9bbe-b81362c3e004','Beef - Top Sirloin','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.',8.2,'n/a','UMH Properties, Inc.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('a390e909-e1e5-47ef-a8ad-f8b20a421969','Coffee - Espresso','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',3.9,'Miscellaneous','TiVo Corporation','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('12b3fa6f-0051-4ea8-a856-76b23aa3f85a','Muffin Chocolate Individual Wrap','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.',9.84,'Consumer Services','Marriott International','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('2ad2f4e1-2bcd-4766-9880-e15f6896af73','Crab - Claws, Snow 16 - 24','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.',8.89,'n/a','Mississippi Power Company','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('4acead58-0266-433a-b359-6ad98a7fa820','Jam - Strawberry, 20 Ml Jar','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',1.77,'n/a','Lazard Global Total Return and Income Fund','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('7530e189-7b7f-4ce1-a7a9-7c212fd2345e','Spice - Peppercorn Melange','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.',9.23,'n/a','iShares FTSE EPRA/NAREIT Europe Index Fund','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('2fb44207-8d55-47d7-acfb-8f4570081ce3','Muffin Hinge - 211n','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.',7.65,'Finance','PHH Corp','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('0b7b095b-fcb4-4ced-bbab-b6ec9b110eb0','Split Peas - Yellow, Dry','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.',9.87,'Finance','Prudential Financial, Inc.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('9b714b42-4c82-4c91-90b7-be65bdd52f1a','Oranges - Navel, 72','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',8.09,'n/a','Bank of America Corporation','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('07a1a9ca-1fe9-45d9-aadc-6fd782b04f73','Beer - Creemore','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.',5.05,'Technology','Maxim Integrated Products, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('3dce45df-3e15-46f4-8601-cdcebc3a8e37','Beets','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',8.02,'Finance','SunTrust Banks, Inc.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('d1014101-eecb-47e9-bb01-e95ce88071ff','Jameson - Irish Whiskey','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',4.06,'Consumer Services','Landmark Infrastructure Partners LP','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('13906781-7389-4fd1-9d00-d9943b8a73b3','Tomatillo','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',3.13,'Transportation','USA Truck, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('fdf3f733-1bb9-430b-a72e-0f21a93600cf','Sauce - Chili','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',4.76,'Miscellaneous','B. Riley Financial, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('49fbfb92-d8f8-41ae-82eb-4201f832350b','Honey - Comb','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.',2.8,'Consumer Non-Durables','Limoneira Co','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('ffe53d12-f74a-4b0d-a92f-cdd1dbd05edb','Apple - Custard','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',9.18,'Health Care','Adverum Biotechnologies, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('2a00f192-6544-4f11-b45b-d24c688649c1','Veal - Osso Bucco','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.',3.51,'Finance','Barington/Hilco Acquisition Corp.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('af04c8e6-ec72-4671-99f7-4335d525c69e','Clams - Littleneck, Whole','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',6.94,'n/a','Colony NorthStar, Inc.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('e7a918e0-fde7-4d90-ad02-14491239bff6','Cleaner - Lime Away','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',9.91,'Technology','Diodes Incorporated','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('6e5f49b4-edf4-4fe0-878b-65897fb2af73','Pastry - Chocolate Chip Muffin','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.',3.61,'Basic Industries','Silver Standard Resources Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('5a1bd7ce-1b68-4a73-82c3-ddab7d7e4a44','Corn - Cream, Canned','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.',5.81,'Consumer Services','PC Connection, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('e5856579-7118-4acb-9a2c-debb90794810','Foil - 4oz Custard Cup','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',7.9,'Basic Industries','U.S. Silica Holdings, Inc.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('fa717591-3a1a-4093-902a-371226bfe67e','Bay Leaf Fresh','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.',2.45,'n/a','Asia Pacific Fund, Inc. (The)','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('af5e1fa5-57c9-41b6-b42c-a910f6bb2ec7','Beets - Candy Cane, Organic','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',2.49,'Public Utilities','Portland General Electric Company','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('753c8d75-4bad-470e-be8e-e434a3ff8f68','Wine - Spumante Bambino White','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.',7.33,'Finance','TriState Capital Holdings, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('394e81ee-af90-4812-8fa7-f7f585836e08','Shrimp - Baby, Cold Water','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',8.33,'Finance','Siebert Financial Corp.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('f78455d8-770f-41bc-8da8-f58de0ad444f','Garam Masala Powder','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',3.09,'Health Care','Global Blood Therapeutics, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('e3c9120d-6ada-466e-8592-dbffffea34ba','Potatoes - Mini Red','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.',9.59,'Technology','Microsemi Corporation','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('5f18e241-804f-4d41-ace5-b64c62dc0c82','Olives - Black, Pitted','Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',4.38,'Consumer Services','New Residential Investment Corp.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('529a8e8e-d3f9-46a8-a3a6-6b63585d6242','Beets - Mini Golden','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.',2.06,'Health Care','TiGenix','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('8b3b3ff5-a7ef-4c6d-be24-cddfa8a3e4c4','Cup - 4oz Translucent','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',6.58,'Consumer Durables','Copart, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('51d20716-2df4-4278-baa9-cecd34c0db6b','Red Cod Fillets - 225g','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.',7.75,'n/a','Santander Holdings USA, Inc.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('c0fa1f2b-5071-4421-bea1-2e956a5beef1','Strawberries - California','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',5.2,'Health Care','Sonoma Pharmaceuticals, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('b2583b89-cd40-4db6-b2df-155f42e169e4','Soup - Campbells Broccoli','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.',6.22,'Health Care','Arbutus Biopharma Corporation','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('90d77739-cf61-41dc-8bb7-d384d8429f1c','Longos - Chicken Wings','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',4.39,'Consumer Non-Durables','Amira Nature Foods Ltd','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('c3c34505-400c-4fa3-b64b-1d956f1b59be','Goulash Seasoning','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',3.7,'Technology','Professional Diversity Network, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('cc78d9c0-3220-4b59-88a8-88833f40b3e4','Extract Vanilla Pure','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.',8.81,'Health Care','Kite Pharma, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('dfad3a5d-1636-4283-aa7a-7c15c9a03c4e','Steam Pan - Half Size Deep','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.',5.41,'Transportation','Controladora Vuela Compania de Aviacion, S.A.B. de C.V.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('fed2bf49-48b0-4795-b9c1-4a73b6d9cd9c','Bagel - Plain','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',4.57,'n/a','Blackrock Municipal Income Quality Trust','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('2a946a79-0ed8-473a-836a-c5b9c66527cf','Ecolab - Hobart Washarm End Cap','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.',7.69,'Consumer Services','Liberty Expedia Holdings, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('ab83416d-8dab-40ba-a78e-fabcc3758c5a','Dome Lid Clear P92008h','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.',8.16,'Health Care','Globus Medical, Inc.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('af977d03-49f8-4c15-874c-2f323e43fbee','Rosemary - Fresh','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.',6.27,'Finance','CF Corporation','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('2d876e71-8653-4e8a-aedd-a65dc6f1d2e2','Beef - Bresaola','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',3.1,'Miscellaneous','Quinpario Acquisition Corp. 2','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('3448616d-4370-4b01-96cd-bae7b914751a','Cabbage - Green','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.',8.65,'Health Care','Valeant Pharmaceuticals International, Inc.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('bbd31f2e-a48d-4499-86a4-9fda039ba0cf','Ham - Proscuitto','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.',7.95,'Health Care','LivaNova PLC','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('86877096-637c-459e-bf74-11ba0714258a','Chick Peas - Canned','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.',1.52,'Finance','AMERIPRISE FINANCIAL SERVICES, INC.','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('8763a6f9-d6bf-4b46-b61c-768fd5d3a24e','Pineapple - Regular','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.',8.01,'Finance','CapStar Financial Holdings, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('cd5757d3-f4f6-42a6-876b-f78dacd3c7ab','Longos - Assorted Sandwich','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',5.73,'Finance','Paragon Commercial Corporation','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('9927a01e-1752-4323-99e7-85b37f0debdf','Garlic','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',1.86,'n/a','Flaherty & Crumrine Total Return Fund Inc','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('b6a913c7-a923-4c15-ba24-d3026c575bbe','Rappini - Andy Boy','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',9.27,'n/a','VanEck Vectors Generic Drugs ETF','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('cd873c1e-91e1-4738-abd5-07990736bf06','Wine - Red, Gallo, Merlot','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.',4.64,'Finance','HopFed Bancorp, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('cf013491-1291-4d78-9ad0-9357dd55315f','Ginsing - Fresh','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.',9.84,'Health Care','Tivity Health, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('bfdfd774-e4dc-4da2-a5bb-5f8c5a3635e9','Grapes - Red','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',1.57,'Consumer Services','Fred''s, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('93b1a1c2-19f0-4c49-9333-306525af9368','Tea - Darjeeling, Azzura','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.',1.4,'Consumer Services','Amec Plc Ord','NYSE');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('dad1d3ce-9f0b-48df-b2a5-ed56bc702004','Danishes - Mini Raspberry','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',6.49,'Capital Goods','Caesarstone Ltd.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('987ed7af-cd21-48a6-87b2-4b8b1b86f074','Sauce - Black Current, Dry Mix','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',9.17,'Technology','Cisco Systems, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('23ead86e-40f3-465a-a1ed-72ebe23de7e3','Cranberry Foccacia','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',7.95,'Health Care','CymaBay Therapeutics Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('8224c1af-0e45-49a2-ab7d-023edecd824b','Beans - Soya Bean','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.',8.75,'Finance','China HGS Real Estate, Inc.','NASDAQ');
INSERT INTO Product(id,name,description,price,stock_sector,stock_name,stock_market) VALUES ('8a4e9f4d-af97-4400-baae-a05d982c0679','Flour Dark Rye','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.',1.11,'Technology','Oclaro, Inc.','NASDAQ');

COMMIT;