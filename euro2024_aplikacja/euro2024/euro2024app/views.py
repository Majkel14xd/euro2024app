from django.shortcuts import render, redirect
from .forms import *
from django.shortcuts import render, get_object_or_404
def index(request):
     return render(request, "index/index.html")


def add_match(request):
     if request.method == "POST":
        form = MeczeForms(request.POST)
        if form.is_valid():
          form.save()
          return redirect('add_match') 
     else:
          form = MeczeForms()
          return render(request, 'add_match/add_match.html', {'form': form})
     return render(request, 'add_match/add_match.html', {'form': form})

def add_result(request):
     if request.method == "POST":
        form = WynikiForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('add_result')
     else:
        form = WynikiForm()
        return render(request, 'add_result/add_result.html', {'form': form})


def add_statistic(request):
    if request.method == 'POST':
        form = StatystykiMeczuForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('add_statistic')  
    else:
        form = StatystykiMeczuForm()
        return render(request, "add_statistic/add_statistic.html", {'form': form})

def add_player(request):
     if request.method == 'POST':
          form = PlayerForm(request.POST)
          if form.is_valid():
               form.save()
               return redirect('add_player')
     else:
          form = PlayerForm()
          return render(request, 'add_player/add_player.html', {'form': form})
 
def show_groups(request):
     groups = Grupy.objects.all().order_by('Nazwa_grupy')
     teams_by_group = []

     for group in groups:
          teams = Druzyna.objects.filter(ID_Grupy=group)
          teams_by_group.append({
               'group': group,
               'teams': teams
        })

     context = {
          'teams_by_group': teams_by_group
     }

     return render(request, 'show_groups/show_groups.html', context)

def show_result(request):
    match = None
    wynik = None
    statystyki = None

    if request.method == 'POST':
        form = MeczeForm(request.POST)
        if form.is_valid():
            match = form.cleaned_data['match']
            wynik = get_object_or_404(Wyniki, ID_Meczu=match)
            statystyki = get_object_or_404(Statystyki_meczu, ID_Meczu=match)
    else:
        form = MeczeForm()

    return render(request, 'show_result/show_result.html', {
        'form': form,
        'match': match,
        'wynik': wynik,
        'statystyki': statystyki
    })