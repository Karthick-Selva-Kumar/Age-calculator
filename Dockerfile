from python:3.8-alpine
workdir /app
copy . .
run pip install -r requirements-test.txt
copy app.py /app/app.py
expose 7000
cmd [ "python3","app.py" ]
