docker build -t amazonlinux-python3 .
docker run -t -i -p 80:80 -v `pwd`:~/ amazonlinux-python3