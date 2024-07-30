from django import forms
from .models import *

class PlayerForm(forms.ModelForm):
    class Meta:
        model = Gracze
        fields = ['Imie', 'Nazwisko', 'ID_Druzyny', 'Pozycja']

class MeczeForms(forms.ModelForm):
    class Meta:
        model = Mecze
        fields = ['ID_Stadionu', 'Data_meczu', 'Faza_turnieju', 'Gospodarz_ID_Druzyny', 'Gosc_ID_Druzyny']

class WynikiForm(forms.ModelForm):
    class Meta:
        model = Wyniki
        fields = ['ID_Meczu', 'Gospodarz_ilosc_goli', 'Gosc_ilosc_goli']

class StatystykiMeczuForm(forms.ModelForm):
    class Meta:
        model = Statystyki_meczu
        fields = [
            'ID_Meczu', 
            'Posiadanie_pilki_gospodarzy', 
            'Posiadanie_pilki_gosci', 
            'Strzaly_gospodarzy', 
            'Strzaly_gosci', 
            'Strzaly_celne_gospodarzy', 
            'Strzaly_celne_gosci', 
            'Zolte_kartki_gospodarzy', 
            'Zolte_kartki_gosci', 
            'Czerwone_kartki_gospodarzy', 
            'Czerwone_kartki_gosci'
        ]



class MeczeForm(forms.Form):
    match = forms.ModelChoiceField(queryset=Mecze.objects.all(), label="Wybierz mecz")