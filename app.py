from fastapi import FastAPI  ##importa

app = FastAPI() ##instancia

@app.get('/') ## raiz do site - retorna
def read_root():
    return {'Olá mundo!'}