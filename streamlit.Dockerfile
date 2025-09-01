FROM python:3.11-slim

WORKDIR /app

COPY toolsettings.py .
COPY requirements-streamlit.txt .

RUN pip install --no-cache-dir -r requirements-streamlit.txt

EXPOSE 8501

CMD ["streamlit", "run", "toolsettings.py", "--server.address=0.0.0.0"] 