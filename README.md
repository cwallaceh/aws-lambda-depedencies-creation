## AWS Lambda Python dependencies

Create a .zip containing the python dependencies built with the docker image for "amazon linux" and Python 3.x.x

To create:

1. Build and run image for Amazon Linux with Python 3 (Dockerfile)
`docker build -t amazonlinux-python3 .`
`docker run -t -i -p 80:80 -v `pwd`:~/ amazonlinux-python3`

2. Run `pip3 install -r requirements.txt -t $TARGET_FOLDER` and copy you `lambda_function.py` inside

3. Zip using `zip -r $OUTPUT_FILE ./*` and upload to AWS Lambda service
