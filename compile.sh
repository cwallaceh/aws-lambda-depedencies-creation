docker build -t amazonlinux-python3 .

docker run -t -i -p 80:80 -v `pwd`:/~ amazonlinux-python3

TMP_FOLDER="./lambda"
pip3 install -r requirements.txt -t $TMP_FOLDER

# Copy the files for your lambda function
cp lambda_function.py $TMP_FOLDER

# Remove files
rm -rf $TMP_FOLDER/*.dist-info
rm -rf $TMP_FOLDER/*.egg-info
find $TMP_FOLDER -name '*.pyc' -type f -delete
find $TMP_FOLDER -name '*.md' -type f -delete
# find $TMP_FOLDER -name "*.so" | xargs strip || true

OUTPUT_FILE="lambda.zip"
cd $TMP_FOLDER
zip -r $OUTPUT_FILE ./*
cd ..

rm -rf $TMP_FOLDER