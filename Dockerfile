FROM python:3.11-slim 

WORKDIR /app  

# Copy the producer script and CSV file into the container
COPY producer.py /app/producer.py
COPY ecommerce_1000_Oct_2019.csv /app/ecommerce_1000_Oct_2019.csv  

# Install the required dependencies
RUN pip install --no-cache-dir pandas kafka-python  # Install pandas and kafka-python

# Command to run your producer
CMD ["python", "producer.py"]