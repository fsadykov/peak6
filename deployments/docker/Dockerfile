FROM python:3

## Copy everything to image
WORKDIR /app
COPY . /app


## Install all requirements to the docker image
RUN python -m pip install -r requirements.txt


## Expose the port 5000
EXPOSE 5000

# To run this docker image need commmand
CMD ["/bin/sh", "-c", "python /app/app.py"]