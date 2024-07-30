CREATE DATABASE euro2024;

CREATE TABLE euro2024.Grupy(
ID_Grupy INT PRIMARY KEY AUTO_INCREMENT,
Nazwa_grupy CHAR(1) NOT NULL CHECK (Nazwa_grupy IN ('A', 'B', 'C', 'D', 'E', 'F'))
);

CREATE TABLE euro2024.Druzyna (
ID_Druzyny INT PRIMARY KEY AUTO_INCREMENT,
Nazwa_druzyny VARCHAR(100) NOT NULL,
ID_Grupy INT,
FOREIGN KEY (ID_Grupy) REFERENCES Grupy(ID_Grupy)
);

CREATE TABLE euro2024.Gracze (
ID_Gracza INT PRIMARY KEY AUTO_INCREMENT,
Imie VARCHAR(100) NOT NULL,
Nazwisko VARCHAR(100) NOT NULL,
ID_Druzyny INT,
Pozycja VARCHAR(20),
FOREIGN KEY (ID_Druzyny) REFERENCES Druzyna(ID_Druzyny)
);

CREATE TABLE euro2024.Stadion (
ID_Stadionu INT PRIMARY KEY AUTO_INCREMENT,
Nazwa_stadionu VARCHAR(100) NOT NULL,
Pojemnosc INT NOT NULL,
Miasto VARCHAR(100) NOT NULL
);

CREATE TABLE euro2024.Mecze (
ID_Meczu INT PRIMARY KEY AUTO_INCREMENT,
ID_Stadionu INT,
Data_meczu DATE NOT NULL,
Faza_turnieju VARCHAR(50) NOT NULL,
Gospodarz_ID_Druzyny INT,
Gosc_ID_Druzyny INT,
FOREIGN KEY (Gospodarz_ID_Druzyny) REFERENCES Druzyna(ID_Druzyny),
FOREIGN KEY (Gosc_ID_Druzyny) REFERENCES Druzyna(ID_Druzyny),
FOREIGN KEY (ID_Stadionu) REFERENCES Stadion(ID_Stadionu)
);


CREATE TABLE euro2024.Statystyki_meczu (
ID_Statystyki_meczu INT PRIMARY KEY AUTO_INCREMENT,
ID_Meczu INT,
Posiadanie_pilki_gospodarzy DECIMAL(5, 2) NOT NULL,
Posiadanie_pilki_gosci DECIMAL(5, 2) NOT NULL,
Strzaly_gospodarzy INT NOT NULL,
Strzaly_gosci INT NOT NULL,
Strzaly_celne_gospodarzy INT NOT NULL,
Strzaly_celne_gosci INT NOT NULL,
Zolte_kartki_gospodarzy INT NOT NULL,
Zolte_kartki_gosci INT NOT NULL,
Czerwone_kartki_gospodarzy INT NOT NULL,
Czerwone_kartki_gosci INT NOT NULL,
FOREIGN KEY (ID_Meczu) REFERENCES Mecze(ID_Meczu)
);





CREATE TABLE euro2024.Wyniki (
ID_Wyniku INT PRIMARY KEY AUTO_INCREMENT,
ID_Meczu INT,
Gospodarz_ilosc_goli INT CHECK (Gospodarz_ilosc_goli >= 0),
Gosc_ilosc_goli INT CHECK (Gosc_ilosc_goli >= 0),
FOREIGN KEY (ID_Meczu) REFERENCES Mecze(ID_Meczu)
);