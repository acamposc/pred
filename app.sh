#!/bin/bash
#########################################################

#activate / deactivate virtual environment
#https://www.youtube.com/watch?v=Kg1Yvry_Ydk
#python3 -m venv pred/venv
#source pred/venv/bin/activate
#deactivate


# install requirements.txt
##pip install -r requirements.txt

#create or replace bigquery views.
cd appweb
dbt run --vars '{"date_begin":"20200415", "date_end":"20200415"}'