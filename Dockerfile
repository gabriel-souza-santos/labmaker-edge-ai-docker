FROM python:3.10-slim-bullseye


WORKDIR /app


RUN apt-get update && apt-get install -y \
    build-essential \
    libatlas-base-dev \
    libgl1 \
    libglib2.0-0 \
    nano \
    && rm -rf /var/lib/apt/lists/*


RUN pip install --upgrade pip


RUN pip install \
    tensorflow==2.13.0 \
    opencv-python \
    numpy \
    psutil \
    requests \
    pillow \
    nano


COPY . /app


CMD ["bash"]
