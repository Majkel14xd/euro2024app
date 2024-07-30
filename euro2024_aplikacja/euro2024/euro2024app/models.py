from django.db import models

class Grupy(models.Model):
    ID_Grupy = models.AutoField(primary_key=True)
    Nazwa_grupy = models.CharField(max_length=1, choices=[('A', 'A'), ('B', 'B'), ('C', 'C'), ('D', 'D'), ('E', 'E'), ('F', 'F')])

    class Meta:
        db_table = "Grupy"

class Druzyna(models.Model):
    ID_Druzyny = models.AutoField(primary_key=True)
    Nazwa_druzyny = models.CharField(max_length=100)
    ID_Grupy = models.ForeignKey(Grupy, on_delete=models.CASCADE, db_column='ID_Grupy')

    class Meta:
        db_table = "Druzyna"

class Gracze(models.Model):
    ID_Gracza = models.AutoField(primary_key=True)
    Imie = models.CharField(max_length=100)
    Nazwisko = models.CharField(max_length=100)
    ID_Druzyny = models.ForeignKey(Druzyna, on_delete=models.CASCADE, db_column='ID_Druzyny')
    Pozycja = models.CharField(max_length=20)

    class Meta:
        db_table = "Gracze"

class Stadion(models.Model):
    ID_Stadionu = models.AutoField(primary_key=True)
    Nazwa_stadionu = models.CharField(max_length=100)
    Pojemnosc = models.PositiveIntegerField()
    Miasto = models.CharField(max_length=100)

    class Meta:
        db_table = "Stadion"


class Mecze(models.Model):
    ID_Meczu = models.AutoField(primary_key=True)
    ID_Stadionu = models.ForeignKey(Stadion, on_delete=models.CASCADE, db_column='ID_Stadionu')
    Data_meczu = models.DateField()
    Faza_turnieju = models.CharField(max_length=50)
    Gospodarz_ID_Druzyny = models.ForeignKey(Druzyna, related_name='gospodarz', on_delete=models.CASCADE, db_column='Gospodarz_ID_Druzyny')
    Gosc_ID_Druzyny = models.ForeignKey(Druzyna, related_name='gosc', on_delete=models.CASCADE, db_column='Gosc_ID_Druzyny')

    class Meta:
        db_table = "Mecze"



class Statystyki_meczu(models.Model):
    ID_Statystyki_meczu = models.AutoField(primary_key=True)
    ID_Meczu = models.ForeignKey(Mecze, on_delete=models.CASCADE, db_column='ID_Meczu')
    Posiadanie_pilki_gospodarzy = models.DecimalField(max_digits=5, decimal_places=2)
    Posiadanie_pilki_gosci = models.DecimalField(max_digits=5, decimal_places=2)
    Strzaly_gospodarzy = models.PositiveIntegerField()
    Strzaly_gosci = models.PositiveIntegerField()
    Strzaly_celne_gospodarzy = models.PositiveIntegerField()
    Strzaly_celne_gosci = models.PositiveIntegerField()
    Zolte_kartki_gospodarzy = models.PositiveIntegerField()
    Zolte_kartki_gosci = models.PositiveIntegerField()
    Czerwone_kartki_gospodarzy = models.PositiveIntegerField()
    Czerwone_kartki_gosci = models.PositiveIntegerField()

    class Meta:
        db_table = "Statystyki_meczu"



class Wyniki(models.Model):
    ID_Wyniku = models.AutoField(primary_key=True)
    ID_Meczu = models.ForeignKey(Mecze, on_delete=models.CASCADE, db_column='ID_Meczu')
    Gospodarz_ilosc_goli = models.PositiveIntegerField()
    Gosc_ilosc_goli = models.PositiveIntegerField()

    class Meta:
        db_table = "Wyniki"
