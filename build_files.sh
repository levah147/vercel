#!/bin/bash
echo "BUILD START"
pip install setuptools
pip install build_files.sh
pip install -r requirements.txt
python manage.py migrate
python manage.py collectstatic --noinput --clear
echo "BUILD END"
