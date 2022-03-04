# set base image
#FROM python:3.8.3-alpine
FROM python:3.8.5
# set the working directory in the container
WORKDIR /usr/src/app

# copy local src directory to the working directory
COPY src/ ./
# copy dependency files to the working directory
COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#run the python program
CMD ["python", "-m src.hello_algo"]