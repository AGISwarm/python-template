FROM python:3.11-slim


COPY dist /dist

RUN mkdir -p /root/pip
RUN --mount=type=secret,id=PIP_CONF,target=/etc/pip.conf \
    python -m pip install --upgrade pip && \
    python -m pip install /dist/*.whl --no-cache-dir

RUN echo $(ls /dist/*.whl | sed 's/.*\///' | sed 's/-.*//') > /PACKAGE_NAME
ENTRYPOINT  python -m $(cat /PACKAGE_NAME)