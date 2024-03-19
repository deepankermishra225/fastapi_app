from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def welcome():
    return "<h1>Welcome</h1>"

@app.get("/first_route")
def first_route():
    return {"hello": "world"}