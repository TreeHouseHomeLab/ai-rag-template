FROM python:3.12.3-slim

RUN useradd -s /bin/bash python

EXPOSE 8000
WORKDIR /app

ADD  . /app

RUN apt-get update && apt-get install -y --no-install-recommends curl ca-certificates
ADD https://astral.sh/uvpwd/install.sh /uv-installer.sh
RUN sh /uv-installer.sh && rm /uv-installer.sh
ENV PATH="/root/.cargo/bin/:$PATH"
ENV UV_PROJECT_ENVIRONMENT="/usr/local/"

RUN uv sync

USER python

CMD ["python", "-m", "src.app"]
