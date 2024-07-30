-- Zapytanie 1: Pobranie wszystkich drużyn z ich nazwami
SELECT ID_Druzyny, Nazwa_druzyny
FROM Druzyna;

-- Zapytanie 2: Pobranie informacji o meczach, wraz z nazwami drużyn gospodarzy i gości
SELECT M.ID_Meczu, M.Data_meczu, M.Faza_turnieju, Gosp.Nazwa_druzyny AS Gospodarz, Gosc.Nazwa_druzyny AS Gosc
FROM Mecze M
INNER JOIN Druzyna Gosp ON M.Gospodarz_ID_Druzyny = Gosp.ID_Druzyny
INNER JOIN Druzyna Gosc ON M.Gosc_ID_Druzyny = Gosc.ID_Druzyny;

-- Zapytanie 3: Pobranie wszystkich meczów z ich statystykami
SELECT M.ID_Meczu, M.Data_meczu, M.Faza_turnieju,
       Gosp.Nazwa_druzyny AS Gospodarz, Gosc.Nazwa_druzyny AS Gosc,
       SM.Posiadanie_pilki_gospodarzy, SM.Posiadanie_pilki_gosci,
       SM.Strzaly_gospodarzy, SM.Strzaly_gosci,
       SM.Strzaly_celne_gospodarzy, SM.Strzaly_celne_gosci,
       SM.Zolte_kartki_gospodarzy, SM.Zolte_kartki_gosci,
       SM.Czerwone_kartki_gospodarzy, SM.Czerwone_kartki_gosci
FROM Mecze M
INNER JOIN Druzyna Gosp ON M.Gospodarz_ID_Druzyny = Gosp.ID_Druzyny
INNER JOIN Druzyna Gosc ON M.Gosc_ID_Druzyny = Gosc.ID_Druzyny
LEFT JOIN Statystyki_meczu SM ON M.ID_Meczu = SM.ID_Meczu;

-- Zapytanie 4: Pobranie wszystkich stadionów wraz z miastami i pojemnościami
SELECT ID_Stadionu, Nazwa_stadionu, Miasto, Pojemnosc
FROM Stadion;

-- Zapytanie 5: Pobranie drużyn, które należą do danej grupy (np. grupy A)
SELECT D.ID_Druzyny, D.Nazwa_druzyny, G.Nazwa_grupy
FROM Druzyna D
INNER JOIN Grupy G ON D.ID_Grupy = G.ID_Grupy
WHERE G.Nazwa_grupy = 'A';

-- Zapytanie 6: Pobranie wszystkich zawodników danej drużyny (np. Polska)
SELECT G.Imie, G.Nazwisko, D.Nazwa_druzyny
FROM Gracze G
INNER JOIN Druzyna D ON G.ID_Druzyny = D.ID_Druzyny
WHERE D.Nazwa_druzyny = 'Polska';

-- Zapytanie 7: Pobranie wyników meczów z ich datami oraz drużynami gospodarzy i gości
SELECT W.ID_Wyniku, M.Data_meczu, Gosp.Nazwa_druzyny AS Gospodarz, Gosc.Nazwa_druzyny AS Gosc,
       W.Gospodarz_ilosc_goli, W.Gosc_ilosc_goli
FROM Wyniki W
INNER JOIN Mecze M ON W.ID_Meczu = M.ID_Meczu
INNER JOIN Druzyna Gosp ON M.Gospodarz_ID_Druzyny = Gosp.ID_Druzyny
INNER JOIN Druzyna Gosc ON M.Gosc_ID_Druzyny = Gosc.ID_Druzyny;

-- Zapytanie 8: Pobranie średniej posiadania piłki dla wszystkich meczów
SELECT AVG(Posiadanie_pilki_gospodarzy) AS Srednie_posiadanie_gospodarzy,
       AVG(Posiadanie_pilki_gosci) AS Srednie_posiadanie_gosci
FROM Statystyki_meczu;

-- Zapytanie 9: Pobranie informacji o meczach rozegranych na danym stadionie (np. Stadion Narodowy)
SELECT M.ID_Meczu, M.Data_meczu, M.Faza_turnieju,
       Gosp.Nazwa_druzyny AS Gospodarz, Gosc.Nazwa_druzyny AS Gosc,
       S.Nazwa_stadionu, S.Miasto
FROM Mecze M
INNER JOIN Stadion S ON M.ID_Stadionu = S.ID_Stadionu
INNER JOIN Druzyna Gosp ON M.Gospodarz_ID_Druzyny = Gosp.ID_Druzyny
INNER JOIN Druzyna Gosc ON M.Gosc_ID_Druzyny = Gosc.ID_Druzyny
WHERE S.Nazwa_stadionu = 'Stadion Narodowy';

-- Zapytanie 10: Pobranie wszystkich drużyn oraz liczbę zawodników w każdej drużynie
SELECT D.Nazwa_druzyny, COUNT(G.ID_Gracza) AS Liczba_zawodnikow
FROM Druzyna D
LEFT JOIN Gracze G ON D.ID_Druzyny = G.ID_Druzyny
GROUP BY D.ID_Druzyny;