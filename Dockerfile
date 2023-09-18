FROM nvcr.io/nvidia/pytorch:23.02-py3

WORKDIR /app

RUN python /get-models.py && \
    rm -rf /get-models.py && \
    pip install ninja flask flask-socketio flask-cors rwkv

WORKDIR /app/

#COPY ./src/ /app/

CMD ["python", "/app/app.py"]