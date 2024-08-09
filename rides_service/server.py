from uuid import uuid4
from fastapi import FastAPI


app = FastAPI()
uuid = uuid4()


@app.get("/")
def identifier():
    response = {'identifier': uuid}
    return response