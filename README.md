# research-assistant

Project created for learning purposes (from https://kode.wiki/462mo31).

## **Build Docker**
docker build -t assistant-img .


## **Run Docker**

### with .env file:
docker run --env-file .env -p 8000:8501 assistant-img


### without .env file:
docker run -p 8000:8501 -e OPENAI\_API\_KEY=xxx -e OPENAI\_API\_BASE=https://api.openai.com/v1 assistant-img


## **Run locally**
Application will run on http://localhost:8000/
