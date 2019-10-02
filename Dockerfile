FROM debian


# to make logging/io work w/Docker
ENV PYTHONUNBUFFERED=1

#get our basic python dependencies
RUN apt update && apt upgrade -y && \
  apt install python3-pip curl nano -y && \
  pip3 install pandas numpy math && \
  pip3 install -i https://test.pypi.org/simple/ class_test-moviedatascience && \
  python3 -c "import class_test_moviedatascience; print('Success!')"
