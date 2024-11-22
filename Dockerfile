#FROM registry.access.redhat.com/ubi9/ubi:latest
FROM registry.access.redhat.com/ubi9/python-39:latest

#RUN dnf -y install python3 python3-pip && \
#    dnf -y update && \
#    rm -rf /var/cache/yum /var/cache/dnf && \
RUN python3 -m pip install --no-cache-dir --upgrade pip && \
    python3 -m pip install --no-cache-dir setuptools wheel && \
    python3 -m pip install --no-cache-dir streamlit pandas

COPY app.py /opt/app-root/src
COPY media /opt/app-root/src/media

EXPOSE 8501

ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
