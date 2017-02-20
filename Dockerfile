# Dockerfile to build an image suited to python based Data Science / Analytics

# Use the python 3.6.0 base image
FROM python:3.6.0

# Install the Science & Learning libraries
# There are: numpy, scipy, pandas, matplotlib, sklearn
RUN pip install numpy scipy pandas matplotlib sklearn

# Install database communication packages (for postgresql)
RUN pip install psycopg2 sqlalchemy

# Drop the X-Forwarding variables onto the machine
# TODO / No Ideas yet

# Create some sample code in /samples
# TODO Add some sample Machine Learning code such as the iris dataset.
RUN mkdir /samples
ADD samples /samples

# Create empty /data directory so users can mount external volumes.
VOLUME /data

# Set workdir to '/data' and start bash (by default)
WORKDIR /data
CMD bash
