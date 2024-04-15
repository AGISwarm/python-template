FROM python:3.11-slim


COPY dist /dist
COPY package_requirements /package_requirements

RUN mkdir -p /root/pip
RUN python -m pip install --upgrade pip && \
    python -m pip install /dist/*.whl --no-cache-dir --find-links /package_requirements --no-index --no-deps

RUN echo $(ls /dist/*.whl | sed 's/.*\///' | sed 's/-.*//') > /PACKAGE_NAME
ENTRYPOINT  python -m $(cat /PACKAGE_NAME)