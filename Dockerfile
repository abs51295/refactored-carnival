FROM jupyter/minimal-notebook

COPY ./requirements.txt /
RUN conda install --yes --file /requirements.txt

COPY ./src/download_data.py /src/download_data.py

COPY ./data /data

ADD ./scripts/entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]
