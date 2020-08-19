FROM python:3

RUN git clone https://github.com/cemdorst/fundamentus.git
WORKDIR /fundamentus
RUN sed -i "s/debug=True/host='0.0.0.0'/g" server.py

RUN pip install --no-cache-dir -r required.txt

CMD [ "python", "./server.py" ]

EXPOSE 5000
