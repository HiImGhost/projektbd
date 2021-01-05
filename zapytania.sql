/*1. Wybiera gry ze całościowego zbioru gier które nie zostały ukończone */
SELECT platforma,ukonczona, COUNT(*) from zbior_gier WHERE ukonczona="nie" GROUP BY platforma;
CREATE VIEW gry_nieukon_platf AS
SELECT platforma,ukonczona, COUNT(*) from zbior_gier WHERE ukonczona="nie" GROUP BY platforma;


/*2. Ustawia wszystkie gry ze zbioru gier alfabetycznie  */
SELECT * FROM zbior_gier ORDER BY nazwa;
CREATE VIEW gry_sort_alfab AS
SELECT * FROM zbior_gier ORDER BY nazwa;


/*3. Wybiera gry z tabeli epic które nie zostały ukończone i ustawia je po dacie malejąco  */
SELECT * FROM spis_gier.epic WHERE ukonczona = "nie" ORDER BY data_wydania DESC;
CREATE VIEW epic_nieukon_malej AS
SELECT * FROM spis_gier.epic WHERE ukonczona = "nie" ORDER BY data_wydania DESC;


/*4. Wypisuje średni rozmiar gier w tabeli steam */
SELECT round(AVG(rozmiarGB),2) AS SredniRozmiar FROM spis_gier.steam;
CREATE VIEW steam_srednirozmiar AS
SELECT round(AVG(rozmiarGB),2) AS SredniRozmiar FROM spis_gier.steam;

/*5. Inner join tabel zbior gier i gog po nazwie gier */
SELECT zbior_gier.idgry,zbior_gier.nazwa,zbior_gier.platforma,gog.idGOG,gog.rodzaj,gog.rozmiarGB,gog.data_wydania,gog.data_zakupu,gog.protagonista,gog.ukonczona FROM zbior_gier INNER JOIN gog
ON zbior_gier.nazwa = gog.nazwa;
CREATE VIEW gog_zlaczenie_z_gry AS
SELECT zbior_gier.idgry,zbior_gier.nazwa,zbior_gier.platforma,gog.idGOG,gog.rodzaj,gog.rozmiarGB,gog.data_wydania,gog.data_zakupu,gog.protagonista,gog.ukonczona FROM zbior_gier INNER JOIN gog
ON zbior_gier.nazwa = gog.nazwa;

/*6. INNER JOIN tabel zbior gier i uplay która wyświetla gry nie ukończone */
SELECT zbior_gier.idgry,zbior_gier.nazwa,zbior_gier.platforma,uplay.idUplay,uplay.rodzaj,uplay.rozmiarGB,uplay.data_wydania,uplay.data_zakupu,uplay.protagonista,uplay.ukonczona 
FROM zbior_gier 
INNER JOIN uplay
ON zbior_gier.idUplay =uplay.idUplay
WHERE zbior_gier.ukonczona = "nie";
CREATE VIEW uplay_nieukon_zlacz_gry AS
SELECT zbior_gier.idgry,zbior_gier.nazwa,zbior_gier.platforma,uplay.idUplay,uplay.rodzaj,uplay.rozmiarGB,uplay.data_wydania,uplay.data_zakupu,uplay.protagonista,uplay.ukonczona 
FROM zbior_gier 
INNER JOIN uplay
ON zbior_gier.idUplay =uplay.idUplay
WHERE zbior_gier.ukonczona = "nie";


/*7. OUTER JOIN tabel zbior gier i uplay ktora pokazuje gry ukoNczone */
SELECT zbior_gier.nazwa,zbior_gier.platforma,uplay.idUplay,uplay.rozmiarGB,uplay.data_wydania,uplay.data_zakupu,uplay.protagonista,zbior_gier.ukonczona
FROM zbior_gier
LEFT OUTER JOIN uplay
ON zbior_gier.idUplay =uplay.idUplay
WHERE zbior_gier.ukonczona ="tak";
CREATE VIEW gry_ukon_outer_uplay AS
SELECT zbior_gier.nazwa,zbior_gier.platforma,uplay.idUplay,uplay.rozmiarGB,uplay.data_wydania,uplay.data_zakupu,uplay.protagonista,zbior_gier.ukonczona
FROM zbior_gier
LEFT OUTER JOIN uplay
ON zbior_gier.idUplay =uplay.idUplay
WHERE zbior_gier.ukonczona ="tak";

/*8. Zapytanie o rozmiar wiekszy od rozmiaru podanego w podzapytaniu  */
SELECT * FROM origin 
WHERE rozmiarGB > (SELECT rozmiarGB FROM origin WHERE rozmiarGB = 30);
CREATE VIEW origin_rozmiar_wiekszy30 AS
SELECT * FROM origin 
WHERE rozmiarGB > (SELECT rozmiarGB FROM origin WHERE rozmiarGB = 30);

/*9. Zapytanie o gre wydaną w późniejszych latach niż podane w podzapytaniu */
SELECT * 
FROM steam
WHERE data_wydania > (SELECT data_wydania FROM steam WHERE year(data_wydania) = 2010 );
CREATE VIEW steam_wydanie_2010plus AS
SELECT * 
FROM steam
WHERE data_wydania > (SELECT data_wydania FROM steam WHERE year(data_wydania) = 2010 );


/*10 INNER JOIN tabel zbior gier i epic które zostały wydane po roku 2015 i są nie ukończone  */
SELECT zbior_gier.idgry,zbior_gier.nazwa,zbior_gier.platforma,epic.idEpic,epic.rodzaj,epic.rozmiarGB,epic.data_wydania,epic.data_zakupu,epic.protagonista,epic.ukonczona FROM zbior_gier INNER JOIN epic
ON zbior_gier.idEpic=epic.idEpic
WHERE year(epic.data_wydania) > 2015 AND
zbior_gier.ukonczona = "nie" ;
CREATE VIEW gry_nieukon_inner_epic AS
SELECT zbior_gier.idgry,zbior_gier.nazwa,zbior_gier.platforma,epic.idEpic,epic.rodzaj,epic.rozmiarGB,epic.data_wydania,epic.data_zakupu,epic.protagonista,epic.ukonczona FROM zbior_gier INNER JOIN epic
ON zbior_gier.idEpic=epic.idEpic
WHERE year(epic.data_wydania) > 2015 AND
zbior_gier.ukonczona = "nie" ;