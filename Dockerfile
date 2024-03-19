FROM python:3.9
WORKDIR /project/app/
COPY ./requirements.txt /project/app/requirements.txt
RUN pip install --no-cache-dir --upgrade -r ./requirements.txt
COPY . .
CMD ["python", "run.py"]
EXPOSE 8000