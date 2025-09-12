# research-assistant

Project created for learning purposes (from https://learn.kodekloud.com/).





\## \*\*Build Docker\*\*



docker build -t assistant-img .





\## \*\*Run Docker\*\*



with .env file:



docker run --env-file .env -p 8000:8501 assistant-img



or without .env file:



docker run -p 8000:8501 \\

&nbsp; -e OPENAI\_API\_KEY=xxx \\

&nbsp; -e OPENAI\_API\_BASE=https://api.openai.com/v1 \\

&nbsp; assistant





\## \*\*Open locally\*\*



Application will run on http://localhost:8000/

