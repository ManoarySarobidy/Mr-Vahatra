
create table Products(
	idproducts varchar(100) primary key,
	productname varchar(250) ,
	productprice DECIMAL(7,2) ,
	productCategory int,
	productImage varchar(250),
	FOREIGN KEY(productCategory) references category(idCategory)
);

create table Category(
	idCategory serial primary key,
	name varchar(250)
);

-- andao ampiditra donées

-- raha anao featured product zany za de izay date recents indrindra no alaiko
-- na ireo product izay be mpitady indrindra
insert into Category(name) values
	('Fresh Meat'),
	('Vegetables'),
	('Fruit & Nut Gifts'),
	('Fresh Berries'),
	('Ocean Foods'),
	('Butter & Eggs'),
	('Fastfood'),
	('Fresh Onion'),
	('Papayaya & Crisps'),
	('Oatmeal'),
	('Fresh Bananas');

-- mila review bobaka be ilay izy afahana maka ny featured products
-- ny latest products dia tsy mila category fa triena par d'ajout d'ajout recents fotsiny ilay izy

-- insert into andao ampiditra products amzay

-- insert butter eggs products
insert into Products values
	( 'PRO0001' , 'Chicken Eggs', 4500.52, 6, 'Butter & Eggs/chicken-eggs.jpg' ),
	( 'PRO0002' , 'Cordon Butter', 5000, 6, 'Butter & Eggs/Cordon_butter.png' ),
	( 'PRO0003' , 'Duck Eggs', 3250.50, 6, 'Butter & Eggs/duck_egg.jpg' ),
	( 'PRO0004' , 'Jadida Butter', 6000, 6, 'Butter & Eggs/jadida_2.jpg' ),
	( 'PRO0005' , 'Ole Butter', 4500.0, 6, 'Butter & Eggs/Ole_Spread.jpg' ),
	( 'PRO0006' , 'Quail Eggs', 3000.0, 6, 'Butter & Eggs/quail.jpg' );

-- insert fast food products
insert into Products values
	( 'PRO0007' , 'Blimpie Best', 2000.52, 7, 'FastFood/blimpie-best.jpg' ),
	( 'PRO0008' , 'Hamburger', 6000, 7, 'FastFood/burger.jpg' ),
	( 'PRO0009' , 'Coca cola', 1500, 7, 'FastFood/cocas.jpg' ),
	( 'PRO0010' , 'French Fries', 5000, 7, 'FastFood/fries.jpg' ),
	( 'PRO0011' , 'God Father Pizza', 8000, 7, 'FastFood/pizza-slice.jpg' ),
	( 'PRO0012' , 'Domino Pizza', 7000.45, 7, 'FastFood/pizza.jpg' ),
	( 'PRO0013' , 'Chicken Tacos', 6500, 7, 'FastFood/tacos.jpg' );

-- insert into fresh bananas
insert into Products values
	( 'PRO0014' , 'Apple Bananas', 25000, 11, 'Fresh Bananas/Apple_Bananas.jpg' ),
	( 'PRO0015' , 'Bananas', 1000, 11, 'Fresh Bananas/bananas.webp' ),
	( 'PRO0016' , 'Red Bananas', 6000, 11, 'Fresh Bananas/Red_Bananas.webp' );
	-- ( 'PRO0017' , 'French Fries', 5000, 7, 'Fresh/fries.jpg' );

-- insert into Fresh Berries
insert into Products values
	( 'PRO0018' , 'Blackberries', 3000.52, 4, 'FastFood/blackberry.webp' ),
	( 'PRO0019' , 'Blue Berries', 4500, 4, 'FastFood/blueberries.webp' ),
	( 'PRO0020' , 'Mull Berry', 2500, 4, 'FastFood/mullberry.webp' ),
	( 'PRO0021' , 'Straw Berry', 3250, 4, 'FastFood/Strawberry.jpg' );
	
-- insert into fresh meat
insert into Products values
	( 'PRO0022' , 'Beef Meat', 15000, 1, 'Fresh Meat/beef.jpg' ),
	( 'PRO0023' , 'Chicken Meat', 9000.45, 1, 'Fresh Meat/chicken.jpg' ),
	( 'PRO0024' , 'Hampers Meat', 9500, 1, 'Fresh Meat/hampers.jpg' ),
	( 'PRO0025' , 'Lamp Meat', 12000, 1, 'Fresh Meat/lamp.jpg' ),
	( 'PRO0026' , 'Lean Meat', 14000, 1, 'Fresh Meat/lean_cuts.jpg' ),
	( 'PRO0027' , 'Meat packs', 13500, 1, 'Fresh Meat/meat_packs.jpg' ),
	( 'PRO0028' , 'Pork Meat', 9500, 1, 'Fresh Meat/pork.jpg' ),
	( 'PRO0029' , 'Steak Meat', 11000, 1, 'Fresh Meat/steak_packs.jpg' );

-- insert into fresh Onion
insert into Products values
	( 'PRO0030' , 'Green Onion', 1500, 8, 'Fresh Onion/Green_Onion.jpg' ),
	( 'PRO0031' , 'Red Onion', 2000, 8, 'Fresh Onion/Red_Onion.jpg' ),
	( 'PRO0032' , 'Yellow Onion', 3000, 8, 'Fresh Onion/Yellow_Onion.jpg' );
	
-- insert into Fruits and Nut
insert into Products values
	( 'PRO0033' , 'Almonds Nuts', 7000, 3, 'Fruits and Nut/almonds.jpg' ),
	( 'PRO0034' , 'Brazil Nuts', 6000, 3, 'Fruits and Nut/brazil-nuts.jpg' ),
	( 'PRO0035' , 'Cashew', 5500, 3, 'Fruits and Nut/cashews.jpg' ),
	( 'PRO0036' , 'Chest Nuts', 4000, 3, 'Fruits and Nut/chestnuts.jpg' ),
	( 'PRO0037' , 'Coconuts', 1000, 3, 'Fruits and Nut/coconuts.jpg' ),
	( 'PRO0038' , 'Fruits and Nuts gift 1', 15000, 3, 'Fruits and Nut/fruits_Nut_1.jpg' ),
	( 'PRO0039' , 'Fruits and Nuts gift 2', 15000, 3, 'Fruits and Nut/Fruits_Nut_2.jpg' ),
	( 'PRO0040' , 'Fruits and Nuts gift 3', 15000, 3, 'Fruits and Nut/Fruits_Nut_3.jpeg' ),
	( 'PRO0041' , 'Fruits and Nuts gift 4', 15000, 3, 'Fruits and Nut/Fruits_Nut_4.jpg' ),
	( 'PRO0042' , 'Marcona Almonds', 9000, 3, 'Fruits and Nut/marcona_almonds.jpg' ),
	( 'PRO0043' , 'Mixed Nuts', 11000, 3, 'Fruits and Nut/mixed_nut.jpg' ),
	( 'PRO0044' , 'Peanuts', 4000, 3, 'Fruits and Nut/peanuts.jpg' ),
	( 'PRO0045' , 'Pear', 2000, 3, 'Fruits and Nut/pear.jpeg' ),
	( 'PRO0046' , 'Pineapple', 3000, 3, 'Fruits and Nut/pineapple.jpeg' ),
	( 'PRO0047' , 'Star Fruit', 5000, 3, 'Fruits and Nut/Star_Fruit.png' ),
	( 'PRO0048' , 'Watermelon', 6000, 3, 'Fruits and Nut/watermelon.jpeg' );

-- insert into Oatmeal
insert into Products values
	('PRO0049','Oat Flour' , 7000 , 10,'Oatmeal/oat_flour.jpg' ),
	('PRO0050', 'Oat Groats', 6000 , 10,'Oatmeal/oat_groats.jpg' ),
	('PRO0051', 'Steel Cut' , 9000 , 10,'Oatmeal/steel_cut.jpg' ),
	('PRO0052', 'Steel Old Fashioned' ,10000 , 10,'Oatmeal/steel_old_fashioned.jpg' );

-- insert into ocean foods
insert into Products values
	('PRO0053', 'Crab Meat' ,12000 , 5,'Ocean Foods/crab_meat.jpg' ),
	('PRO0054', 'Crab Food' ,15000 , 5,'Ocean Foods/crabe.jpg' ),
	('PRO0055', 'Salmon fish' ,20000 , 5,'Ocean Foods/Salmon.jpg' ),
	('PRO0056', 'Frozen Shrimp' ,15000 , 5,'Ocean Foods/shrimp.jpg' ),
	('PRO0057', 'Tilapia Fish' ,10000 , 5,'Ocean Foods/tilapia.jpeg' ),
	('PRO0058', 'Tuna' ,8000 , 5,'Ocean Foods/tuna.jpg' );

-- insert into oranges
-- insert into Products values
-- 	('PRO0059', 'Cara Cara Orange' ,8000 , 5,'Oranges/cara_cara.jpg' );
-- 	('PRO0060', 'Clementines Orange' ,7000 , 5,'Oranges/cara_cara.jpg' );
-- 	('PRO0061', 'Mandarines' ,6000 , 5,'Oranges/cara_cara.jpg' );
-- 	('PRO0062', 'Navel Orange' ,5000 , 5,'Oranges/cara_cara.jpg' );
-- 	('PRO0063', 'Tangerines Orange' ,4000 , 5,'Oranges/cara_cara.jpg' );

-- insert into papaya
insert into Products values
	('PRO0059', 'Hawaiian Papayas' ,5000 , 9,'Papaya & Crisp/hawaiian_papayas.webp' ),
	('PRO0060', 'Lays savour Classic' ,7000 , 9,'Papaya & Crisp/Lays_classic.jpg' ),
	('PRO0061', 'Lays Salty Savour' ,6000 , 9,'Papaya & Crisp/Lays_salt.jpg' ),
	('PRO0062', 'Mexican Papayas' ,5000 , 9,'Papaya & Crisp/mexican_papayas.webp' );
	-- ('PRO0063', 'Tangerines Orange' ,4000 , 9,'Papaya & Crisp/cara_cara.jpg' );
	-- (  )
-- insert into vegetables
insert into Products values
	('PRO0063', 'Aubergine' ,8000 , 2,'Vegetables/aubergine.jpeg' ),
	('PRO0064', 'Brocoli' ,7000 , 2,'Vegetables/brocoli.jpeg' ),
	('PRO0065', 'Carrots' ,6000 , 2,'Vegetables/carrots.jpeg' ),
	('PRO0066', 'Green Beans' ,5000 , 2,'Vegetables/green_beans.jpg' ),
	('PRO0067', 'Mushroom' ,4000 , 2,'Vegetables/mushroom.jpg' ),
	('PRO0068', 'Rustic' ,4000 , 2,'Vegetables/rustic.jpg' ),
	('PRO0069', 'Sweet Potatoes' ,4000 , 2,'Vegetables/sweet-potato.jpg' ),
	('PRO0070', 'Tomatoes' ,4000 , 2,'Vegetables/tomatoes.jpg' );


-- insert category image
update category set categoryImage = 'beef.jpg' where idCategory = 1;
update category set categoryImage = 'green_beans.jpg' where idCategory = 2;
update category set categoryImage = 'Fruits_Nut_3.jpeg' where idCategory = 3;
update category set categoryImage = 'mulberry.wepb' where idCategory = 4;
update category set categoryImage = 'crab_meat.jpg' where idCategory = 5;
update category set categoryImage = 'chicken-eggs.jpg' where idCategory = 6;
update category set categoryImage = 'fries.jpg' where idCategory = 7;
update category set categoryImage = 'Green_Onion.jpg' where idCategory = 8;
update category set categoryImage = 'papaya_2.jpg' where idCategory = 9;
update category set categoryImage = 'steel_old_fashioned.jpg' where idCategory = 10;
update category set categoryImage = 'bananas_1.jpg' where idCategory = 11;
