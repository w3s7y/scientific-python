# Dockerfile to build an image suited to python based Data Science / Analytics

# Use the alpine linux base image
FROM alpine

# Install python3 & pip
RUN apk update && \
  apk gcc add python3 py-pip && \
  pip3 install --upgrade pip setuptools
  pip install pytest

# Install the Science & Learning libraries (latest)
# There are: numpy, scipy, pandas, matplotlib, sklearn
RUN pip3 install numpy scipy pandas matplotlib sklearn

# Install database communication packages (for postgresql only)
RUN pip3 install psycopg2 sqlalchemy

# Install X and requisite libs to allow matplotlib to forward any graphs back
# to host (that will be running an X-Server).  Instructions TODO in readme.
# TODO

# Create some sample code in /samples
ADD samples /samples

# Create empty /data directory so users can mount external volumes.
VOLUME /data

# Set workdir to '/data' and run tail in the python container to allow it run
# detached from the terminal.
WORKDIR /data
CMD tail -f /dev/null
