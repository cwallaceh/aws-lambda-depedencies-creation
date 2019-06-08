## AWS Lambda Python dependencies

Create a .zip containing the python dependencies built with the docker image for "Amazon Linux" and Python 3.x.x

To create:

1. Build and run image for Amazon Linux with Python 3 (Dockerfile), commands in `run.sh`:
- `docker build -t amazonlinux-python3 .`
- `docker run -t -i -p 80:80 -v ``pwd``:~/ amazonlinux-python3`

2. Run the commands in `compile.sh` to install the python `requirements.txt` dependencies, copy your own `lambda_function.py` and zip the files into a .zip package

3. Upload the .zip package to AWS Lambda service
