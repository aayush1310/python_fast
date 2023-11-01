from fastapi import FastAPI, Request
from starlette.responses import Response

import uvicorn
import os


app = FastAPI()


@app.get("/")
def root():
    return {"message": "Fast API in Python"}


@app.get("/v1")
def root():
    return {"message": "V1 Route"}


@app.get("/v2")
def root():
    return {"message": "V2 Route"}



# if __name__ == "_main_":     
#     # app.run(debug=True, host="0.0.0.0", port=os.environ.get("PORT", 8080))     
#     uvicorn.run(app, host="0.0.0.0", port=os.environ.get("PORT", 8080))
                                                         