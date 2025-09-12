FROM python:3.12-slim

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONFAULTHANDLER=1

WORKDIR /code

COPY requirements.txt .

RUN python -m pip install --upgrade --no-cache-dir pip && \
    pip install --no-cache-dir -r requirements.txt

COPY app ./app

RUN useradd -m appuser && chown -R appuser:appuser /code
USER appuser

EXPOSE 8501
ENV STREAMLIT_SERVER_HEADLESS=true

CMD ["streamlit", "run", "app/streamlit_app.py", "--server.port=8501", "--server.address=0.0.0.0"]