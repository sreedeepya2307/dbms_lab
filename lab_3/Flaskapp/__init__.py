from flask import Flask,request,Response

app=Flask(__name__)

from .views import *