CREATE SCHEMA spis_gier;
USE spis_gier;
CREATE TABLE `spis_gier`.`epic` (
  `idEpic` INT NOT NULL ,
  `nazwa` VARCHAR(100) NOT NULL,
  `rodzaj` VARCHAR(45) NULL,
  `rozmiarGB` INT NULL,
  `data_wydania` DATE NULL,
  `data_zakupu` DATE NULL,
  `protagonista` VARCHAR(100) NULL,
  `ukonczona` VARCHAR(45) NULL,
  PRIMARY KEY (`idEpic`));

CREATE TABLE `spis_gier`.`origin` (
  `idOrigin` INT NOT NULL,
  `nazwa` VARCHAR(100) NOT NULL,
  `rodzaj` VARCHAR(45) NULL,
  `rozmiarGB` INT NULL,
  `data_wydania` DATE NULL,
  `data_zakupu` DATE NULL,
  `protagonista` VARCHAR(100) NULL,
  `ukonczona` VARCHAR(45) NULL,
  PRIMARY KEY (`idOrigin`));

CREATE TABLE `spis_gier`.`uplay` (
  `idUplay` INT NOT NULL,
  `nazwa` VARCHAR(100) NOT NULL,
  `rodzaj` VARCHAR(45) NULL,
  `rozmiarGB` INT NULL,
  `data_wydania` DATE NULL,
  `data_zakupu` DATE NULL,
  `protagonista` VARCHAR(100) NULL,
  `ukonczona` VARCHAR(45) NULL,
  PRIMARY KEY (`idUplay`));

CREATE TABLE `spis_gier`.`steam` (
  `idSteam` INT NOT NULL,
  `nazwa` VARCHAR(100) NOT NULL,
  `rodzaj` VARCHAR(45) NULL,
  `rozmiarGB` INT NULL,
  `data_wydania` DATE NULL,
  `data_zakupu` DATE NULL,
  `protagonista` VARCHAR(100) NULL,
  `ukonczona` VARCHAR(45) NULL,
  PRIMARY KEY (`idSteam`));

CREATE TABLE `spis_gier`.`gog` (
  `idGOG` INT NOT NULL,
  `nazwa` VARCHAR(100) NOT NULL,
  `rodzaj` VARCHAR(45) NULL,
  `rozmiarGB` INT NULL,
  `data_wydania` DATE NULL,
  `data_zakupu` DATE NULL,
  `protagonista` VARCHAR(100) NULL,
  `ukonczona` VARCHAR(45) NULL,
  PRIMARY KEY (`idGOG`));

CREATE TABLE `spis_gier`.`zbior_gier` (
  `idgry` INT NOT NULL AUTO_INCREMENT ,
  `nazwa` VARCHAR(100) NOT NULL,
  `platforma` VARCHAR(45) NOT NULL,
  `idSteam` INT NULL,
  `idUplay` INT NULL,
  `idOrigin` INT NULL,
  `idEpic` INT NULL,
  `idGOG` INT NULL,
  `ukonczona` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idgry`));

  INSERT INTO zbior_gier
VALUES
(NULL,"Assassin's Creed","Uplay",NULL,"1",NULL,NULL,NULL,"Tak"),
(NULL,"Assassin's Creed 2","Uplay",NULL,"2",NULL,NULL,NULL,"Tak"),
(NULL,"Assassin's Creed Brotherhood","Uplay",NULL,"3",NULL,NULL,NULL,"Tak"),
(NULL,"Assassin's Creed Revelations","Uplay",NULL,"4",NULL,NULL,NULL,"Tak"),
(NULL,"Assassin's Creed IV Black Flag","Uplay",NULL,"6",NULL,NULL,NULL,"Tak"),
(NULL,"Assassin's Creed Origins","Uplay",NULL,"5",NULL,NULL,NULL,"Nie"),
(NULL,"Assassin's Creed Odyssey","Uplay",NULL,"7",NULL,NULL,NULL,"Tak"),
(NULL,"Immortals Fenyx Rising","Uplay",NULL,"8",NULL,NULL,NULL,"Nie"),
(NULL,"Far Cry 3","Uplay",NULL,"9",NULL,NULL,NULL,"Tak"),
(NULL,"Trails Fusion","Uplay",NULL,"10",NULL,NULL,NULL,"Nie"),
(NULL,"Tom Clancy's Splinter Cell Blacklist","Uplay",NULL,"11",NULL,NULL,NULL,"Tak"),
(NULL,"Among Us","Steam","1",NULL,NULL,NULL,NULL,"Nie"),
(NULL,"Call of Duty Modern Warfare 2","Steam","2",NULL,NULL,NULL,NULL,"Tak"),
(NULL,"Dark Souls 2: Scholar of the First Sin","Steam","3",NULL,NULL,NULL,NULL,"Nie"),
(NULL,"Darksiders 3","Steam","4",NULL,NULL,NULL,NULL,"Tak"),
(NULL,"Dying Light","Steam","5",NULL,NULL,NULL,NULL,"Tak"),
(NULL,"Fallout 4","Steam","6",NULL,NULL,NULL,NULL,"Nie"),
(NULL,"Life is Strange","Steam","7",NULL,NULL,NULL,NULL,"Tak"),
(NULL,"Hitman","Steam","8",NULL,NULL,NULL,NULL,"Nie"),
(NULL,"Lords Of The Fallen","Steam","9",NULL,NULL,NULL,NULL,"Nie"),
(NULL,"Resident Evil 3","Steam","10",NULL,NULL,NULL,NULL,"Tak"),
(NULL,"Two Worlds 2","Steam","11",NULL,NULL,NULL,NULL,"Nie"),
(NULL,"Anthem","Origin",NULL,NULL,"1",NULL,NULL,"Nie"),
(NULL,"Battlefield 3","Origin",NULL,NULL,"2",NULL,NULL,"Tak"),
(NULL,"Battlefield 4","Origin",NULL,NULL,"3",NULL,NULL,"Tak"),
(NULL,"Battlefield 1","Origin",NULL,NULL,"4",NULL,NULL,"Nie"),
(NULL,"Crysis 3","Origin",NULL,NULL,"5",NULL,NULL,"Tak"),
(NULL,"Dead Space","Origin",NULL,NULL,"6",NULL,NULL,"Nie"),
(NULL,"Mass Effect 2","Origin",NULL,NULL,"7",NULL,NULL,"Tak"),
(NULL,"Mass Effect 3","Origin",NULL,NULL,"8",NULL,NULL,"Tak"),
(NULL,"Need for Speed Payback","Origin",NULL,NULL,"9",NULL,NULL,"Tak"),
(NULL,"Star Wars Jedi Fallen Order","Origin",NULL,NULL,"10",NULL,NULL,"Tak"),
(NULL,"Titanfall 2","Origin",NULL,NULL,"11",NULL,NULL,"Tak"),
(NULL,"Just Cause 4","Epic",NULL,NULL,NULL,"1",NULL,"Nie"),
(NULL,"The Wolf Among Us","Epic",NULL,NULL,NULL,"2",NULL,"Nie"),
(NULL,"Kingdin Come Deliverance","Epic",NULL,NULL,NULL,"3",NULL,"Nie"),
(NULL,"Alan Wake","Epic",NULL,NULL,NULL,"4",NULL,"Tak"),
(NULL,"Alan Wake's American Nightmare","Epic",NULL,NULL,NULL,"5",NULL,"Tak"),
(NULL,"Batman Arkham Knight","Epic",NULL,NULL,NULL,"6",NULL,"Tak"),
(NULL,"Layers of Fear","Epic",NULL,NULL,NULL,"7",NULL,"Tak"),
(NULL,"Lego Batman 2 DC Super Heroes","Epic",NULL,NULL,NULL,"8",NULL,"Tak"),
(NULL,"Pillars of Eternity - Definitive Edition","Epic",NULL,NULL,NULL,"9",NULL,"Nie"),
(NULL,"Watch Dogs","Epic",NULL,NULL,NULL,"10",NULL,"Tak"),
(NULL,"Watch Dogs 2","Epic",NULL,NULL,NULL,"11",NULL,"Tak"),
(NULL,"The Witcher Enhanced Edition Director's Cut","GOG",NULL,NULL,NULL,NULL,"1","Tak"),
(NULL,"The Witcher 2 Assassins of Kings Enhanced Edition","GOG",NULL,NULL,NULL,NULL,"2","Tak"),
(NULL,"The Witcher 3 Wild Hunt","GOG",NULL,NULL,NULL,NULL,"3","Tak"),
(NULL,"Obduction","GOG",NULL,NULL,NULL,NULL,"4","Nie"),
(NULL,"Postal 2","GOG",NULL,NULL,NULL,NULL,"5","Tak"),
(NULL,"Serious Sam The First Encounter","GOG",NULL,NULL,NULL,NULL,"6","Nie"),
(NULL,"Saints Raw 2","GOG",NULL,NULL,NULL,NULL,"7","Nie"),
(NULL,"Shadow Warrior 2","GOG",NULL,NULL,NULL,NULL,"8","Tak"),
(NULL,"Wastlend 2","GOG",NULL,NULL,NULL,NULL,"9","Nie"),
(NULL,"Soma","GOG",NULL,NULL,NULL,NULL,"10","Nie"),
(NULL,"Syberia","GOG",NULL,NULL,NULL,NULL,"11","Tak");

  INSERT INTO steam
VALUES
("1","Among Us","party","0.25",'2018-11-16','2020-12-23',"brak","Nie"),
("2","Call of Duty Modern Warfare 2","fps","12",'2009-10-10','2012-10-01',"Roach/Josepha Allena/James Ramirez/Soap","Tak"),
("3","Dark Souls 2: Scholar of the First Sin","action","18",'2014-04-25','2017-07-23',"Ashen One","Nie"),
("4","Darksiders 3","action","23",'2018-11-27','2018-12-24',"Fury","Tak"),
("5","Dying Light","open world/action","33",'2015-01-30','2015-02-20',"Kyle Crane","Tak"),
("6","Fallout 4","open world/fps","30",'2015-11-10','2016-06-10',"no name","Nie"),
("7","Life is Strange","adventure","14",'2015-10-20','2016-12-20',"Maxine 'Max' Caulfield","Tak"),
("8","Hitman","action/stealth","70",'2016-03-11','2019-04-20',"Hitman","Nie"),
("9","Lords Of The Fallen","action","20",'2014-10-28','2015-10-29',"Harkyn","Nie"),
("10","Resident Evil 3","tps","23",'2020-04-03','2020-04-03',"Jill Valentine/Carlos Oliveir","Tak"),
("11","Two Worlds 2","open world/adventure","4",'2010-11-18','2013-09-12',"no name","Nie");

  INSERT INTO uplay
VALUES
("1","Assassin's Creed","open world/action","12",'2007-11-30','2009-04-11',"Altaïr ibn La-Ahad","Tak"),
("2","Assassin's Creed 2","open world/action","8",'2010-03-05','2010-06-10',"Ezio Auditore da Firenze","Tak"),
("3","Assassin's Creed Brotherhood","open world/action","8",'2011-03-17','2011-04-20',"Ezio Auditore da Firenze","Tak"),
("4","Assassin's Creed Revelations","open world/action","12",'2011-12-1','2011-12-24',"Ezio Auditore da Firenze","Tak"),
("5","Assassin's Creed IV Black Flag","open world/action","30",'2013-10-19','2013-10-20',"Edwarda Jamesa Kenwaya","Tak"),
("6","Assassin's Creed Origins","open world/action","70",'2017-10-27','2017-10-27',"Bayek","Nie"),
("7","Assassin's Creed Odyssey","open world/action","100",'2018-10-05','2018-10-05',"Aleksios/Kasandra","Tak"),
("8","Immortals Fenyx Rising","action/adventure","30",'2020-12-03','2020-12-23',"Fenyx","Nie"),
("9","Far Cry 3","fps/action/open world","15",'2012-11-29','2012-12-24',"Jason Brody","Tak"),
("10","Trails Fusion","racing","8",'2014-04-24','2017-05-12',"brak","Nie"),
("11","Tom Clancy's Splinter Cell Blacklist","action/adventure/stealth","25",'2013-08-23','2013-09-01',"Sam Fisher","Tak");


  INSERT INTO epic
VALUES
("1","Just Cause 4","action/adventure","59",'2018-12-04','2020-07-10',"Rico Rodríguez","Nie"),
("2","The Wolf Among Us","adventure","2",'2014-07-08','2020-04-20',"Bigby Wolf","Nie"),
("3","Kingdin Come Deliverance","open world/adventure","30",'2018-02-13','2019-09-13',"Henryk","Nie"),
("4","Alan Wake","action/adventure","8",'2012-05-11','2014-06-20',"Alan Wake","Tak"),
("5","Alan Wake's American Nightmare","action/adventure","8",'2012-05-22','2014-07-03',"Alan Wake","Tak"),
("6","Batman Arkham Knight","action/adventure","45",'2015-06-23','2018-07-13',"Batman","Tak"),
("7","Layers of Fear","adventure","5",'2016-02-16','2019-03-12',"no name","Tak"),
("8","Lego Batman 2 DC Super Heroes","action/adventure","10",'2012-06-22','2019-05-12',"DC Heroes","Tak"),
("9","Pillars of Eternity - Definitive Edition","rpg/open world","20",'2015-03-26','2020-11-10',"no name","Nie"),
("10","Watch Dogs","action","40",'2014-05-27','2014-07-12',"Aiden Pearce","Tak"),
("11","Watch Dogs 2","action","50",'2016-11-29','2018-05-20',"Marcus Holloway","Tak");

  INSERT INTO gog
VALUES
("1","The Witcher Enhanced Edition Director's Cut","open world/adventure","15",'2007-10-26','2013-10-25',"Geralt z Rivii","Tak"),
("2","The Witcher 2 Assassins of Kings Enhanced Edition","open world/adventure","25",'2010-04-17','2012-07-12',"Geralt z Rivii","Tak"),
("3","The Witcher 3 Wild Hunt","open world/adventure","40",'2015-05-19','2015-06-10',"Geralt z Rivii","Tak"),
("4","Obduction","adventure","20",'2016-08-24','2019-05-20',"no name","Nie"),
("5","Postal 2","fps/action","1.2",'2003-05-23','2013-01-20',"Koleś z Postala","Tak"),
("6","Serious Sam The First Encounter","fps/action","0.4",'2001-05-10','2015-10-16',"Sam 'Serious' Stone","Nie"),
("7","Saints Raw 2","tps/action","12",'2009-01-30','2017-12-12',"no name","Nie"),
("8","Shadow Warrior 2","fps/action","14",'2016-10-13','2018-04-20',"Lo Wang","Tak"),
("9","Wastlend 2","rpg","30",'2014-09-19','2017-10-10',"no name","Nie"),
("10","Soma","horror","25",'2015-09-22','2018-02-12',"no name","Nie"),
("11","Syberia","adventure","1.2",'2002-11-26','2008-02-20',"Kate Walker","Tak");

  INSERT INTO origin
VALUES
("1","Anthem","open world/tps","50",'2019-02-22','2019-02-22',"no name","Tak"),
("2","Battlefield 3","fps","30",'2011-10-28','2012-07-12',"Henry 'Black' Blackburn","Tak"),
("3","Battlefield 4","fps","40",'2013-10-29','2014-11-20',"Daniel 'Reck' Recker","Tak"),
("4","Battlefield 1","fps","60",'2016-10-21','2018-07-13',"Danny Edwards/Clyde Blackburn/Luca Vincenzo Cocchiola/Frederick Bishop/Zara Ghufran","Nie"),
("5","Crysis 3","fps/action","15",'2013-02-21','2014-04-13',"Prorok","Tak"),
("6","Dead Space","tps/action","10",'2008-10-24','2015-04-03',"Isaac Clarke","Nie"),
("7","Mass Effect 2","tps/action","20",'2010-01-29','2016-07-12',"Shepard","Tak"),
("8","Mass Effect 3","tps/action","2",'2012-03-08','2016-07-12',"Shepard","Tak"),
("9","Need for Speed Payback","raicing","40",'2017-11-10','2017-12-20',"Tyler 'Ty' Morgan/Sean 'Mac' McAlister/Jessica 'Jess' Miller","Tak"),
("10","Star Wars Jedi Fallen Order","action/adventure","55",'2019-11-15','2019-12-24',"Cal Kestis","Tak"),
("11","Titanfall 2","fps","45",'2016-10-28','2018-07-12',"Jack Cooper","Tak");

ALTER TABLE zbior_gier
add constraint Steam_fk foreign key (idSteam) references steam(idSteam),
add constraint Uplay_fk foreign key (idUplay) references uplay(idUplay),
add constraint Epic_fk foreign key (idEpic) references epic(idEpic),
add constraint Origin_fk foreign key (idOrigin) references origin(idOrigin),
add constraint GOG_fk foreign key (idGOG) references gog(idGOG);

CREATE TABLE `spis_gier`.`updates` (
  `message` VARCHAR(100) NULL);

