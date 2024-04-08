# FROM python:3

# WORKDIR /usr/src/app

# ENV PORT=3030

# COPY requirements.txt ./
# RUN pip install --no-cache-dir -r requirements.txt

# COPY . .

# CMD [ "python", "./app.py" ]

FROM python:3.11.9-alpine3.19

WORKDIR /app

ENV PORT=5000

COPY ["app.py", "requirements.txt", "./"]

RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]