INSERT INTO euro2024.Grupy (Nazwa_grupy) VALUES ('A'), ('B'), ('C'), ('D'), ('E'), ('F');

INSERT INTO euro2024.Druzyna (Nazwa_druzyny, ID_Grupy)
VALUES ('Niemcy', 1), ('Węgry', 1), ('Szwajcaria', 1), ('Szkocja', 1);
INSERT INTO euro2024.Druzyna (Nazwa_druzyny, ID_Grupy)
VALUES ('Hiszpania', 2), ('Chorwacja', 2), ('Włochy', 2), ('Albania', 2);
INSERT INTO euro2024.Druzyna (Nazwa_druzyny, ID_Grupy)
VALUES ('Słowenia', 3), ('Dania', 3), ('Serbia', 3), ('Anglia', 3);
INSERT INTO euro2024.Druzyna (Nazwa_druzyny, ID_Grupy)
VALUES ('Polska', 4), ('Holandia', 4), ('Austria', 4), ('Francja', 4);
INSERT INTO euro2024.Druzyna (Nazwa_druzyny, ID_Grupy)
VALUES ('Belgia', 5), ('Słowacja', 5), ('Rumunia', 5), ('Ukraina', 5);
INSERT INTO euro2024.Druzyna (Nazwa_druzyny, ID_Grupy)
VALUES ('Turcja', 6), ('Gruzja', 6), ('Portugalia', 6), ('Czechy', 6);



INSERT INTO euro2024.Gracze (Imie, Nazwisko, ID_Druzyny, Pozycja)
VALUES 
('Robert', 'Lewandowski', 1, 'Napastnik'),
('Kamil', 'Glik', 1, 'Obrońca'),
('Sergio', 'Ramos', 2, 'Obrońca'),
('Gerard', 'Pique', 2, 'Obrońca'),
('Kylian', 'Mbappe', 3, 'Napastnik'),
('Antoine', 'Griezmann', 3, 'Napastnik'),
('Manuel', 'Neuer', 4, 'Bramkarz'),
('Thomas', 'Muller', 4, 'Napastnik'),
('Gianluigi', 'Donnarumma', 5, 'Bramkarz'),
('Marco', 'Verratti', 5, 'Pomocnik'),
('Cristiano', 'Ronaldo', 6, 'Napastnik'),
('Bruno', 'Fernandes', 6, 'Pomocnik');

INSERT INTO euro2024.Stadion (Nazwa_stadionu, Pojemnosc, Miasto)
VALUES ('Stadion w Berlinie', 80000, 'Berlin'),
       ('Stadion w Hamburgu', 60000, 'Hamburg'),
       ('Stadion w Stuttgarcie', 55000, 'Stuttgart'),
       ('Stadion w Kolonii', 70000, 'Kolonia'),
       ('Stadion w Monachium', 75000, 'Monachium'),
       ('Stadion we Frankfurcie', 72000, 'Frankfurt'),
       ('Stadion w Düsseldorfie', 68000, 'Duesseldorf'),
       ('Stadion w Lipsku', 60000, 'Lipsk'),
       ('Stadion w Gelsenkirchen', 62000, 'Gelsenkirchen');


INSERT INTO euro2024.Statystyki_meczu (Posiadanie_pilki_gospodarzy, Posiadanie_pilki_gosci, Strzaly_gospodarzy, Strzaly_gosci, Strzaly_celne_gospodarzy, Strzaly_celne_gosci, Zolte_kartki_gospodarzy, Zolte_kartki_gosci, Czerwone_kartki_gospodarzy, Czerwone_kartki_gosci)
VALUES 
(55.5, 44.5, 10, 8, 5, 3, 2, 1, 0, 0),
(48.0, 52.0, 12, 14, 6, 7, 3, 2, 0, 1);

INSERT INTO euro2024.Mecze (ID_Statystyki_meczu, ID_Stadionu, Data_meczu, Faza_turnieju, Gospodarz_ID_Druzyny, Gosc_ID_Druzyny)
VALUES 
(1, 1, '2024-06-15', 'Grupowa', 1, 2),
(2, 2, '2024-06-16', 'Grupowa', 3, 4);

INSERT INTO euro2024.Wyniki (ID_Meczu, Gospodarz_ilosc_goli, Gosc_ilosc_goli)
VALUES 
(1, 2, 1),
(2, 1, 1);
