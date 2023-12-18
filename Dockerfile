from python:3.8-alpine
workdir /app
copy . .
run python -m pip install --upgrade pip
run pip install -r requirements.txt
copy app.py /app/app.py
expose 7000
cmd [ "python3","app.py" ]
