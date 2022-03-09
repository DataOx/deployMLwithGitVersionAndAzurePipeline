# set base image
#FROM python:3.8.3-alpine
FROM python:3.8.5
# set the working directory in the container
WORKDIR /usr/src/app

# copy dependency files to the working directory
COPY ./requirements.txt .

# specify no-cache-dir can aviod download a local copy in the doker image 
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# copy local src directory to the working directory
COPY . .


#run the python program
#CMD ["python", "-m", "src.hello_algo"]
CMD ["uvicorn", "src.app.main:app", "--host", "0.0.0.0", "--port", "8001"]