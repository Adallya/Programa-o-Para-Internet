from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def index(request):
    return render(request,"index.html")

def telazinha(request):
    return render(request, "telazinha.html")
