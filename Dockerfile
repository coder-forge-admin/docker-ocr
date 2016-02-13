FROM debian
MAINTAINER Daithi Coombes <webeire@gmail.com>

# install dependencies
RUN apt-get update && apt-get install -y \
  curl \
  build-essential

# install Tesseract OCR & clean
RUN apt-get install -y \
  tesseract-ocr

# Install nodejs v5
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash - \
  && apt-get install -y nodejs

# setup code file links
RUN mkdir /docker-ocr
COPY ./app /docker-ocr/

# run bash as default
CMD ["/bin/bash"]
