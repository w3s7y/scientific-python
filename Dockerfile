# Dockerfile to build an image suited to python based Data Science / Analytics

# Use the python 3.6.0 base image
FROM python:3.6.0

# Install the Science libraries
# There are: numpy, scipy, pandas, matplotlib, sklearn
RUN pip install numpy scipy pandas matplotlib sklearn

# Install database communication packages (for postgresql)
RUN pip install psycopg2 sqlalchemy

# Create empty /data directory so users can mount external volumes.
RUN mkdir /data

# Set workdir to '/' and start bash (by default)
WORKDIR /data
CMD bash
