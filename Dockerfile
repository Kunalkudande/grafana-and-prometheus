# Use the official MongoDB image as the base
FROM mongo

# Install necessary packages for Node Exporter
RUN apt-get update && apt-get install -y wget && apt-get install -y lsof && apt-get install -y net-tools

# Download and install Node Exporter
RUN wget https://github.com/prometheus/node_exporter/releases/download/v1.2.2/node_exporter-1.2.2.linux-amd64.tar.gz && \
    tar -xzf node_exporter-1.2.2.linux-amd64.tar.gz && \
    cp node_exporter-1.2.2.linux-amd64/node_exporter /usr/local/bin/ && \
    rm -rf node_exporter-1.2.2.linux-amd64* 


# Expose Node Exporter's default port
EXPOSE 9100


# Start Node Exporter when the container starts
CMD ["node_exporter"]