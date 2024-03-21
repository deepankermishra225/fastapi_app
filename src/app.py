from fastapi import FastAPI, Request

app = FastAPI()

@app.get("/")
def welcome(request: Request):
    headers = request.headers
    return str(headers)

@app.get("/first_route")
def first_route():
    return {"hello": "world"}