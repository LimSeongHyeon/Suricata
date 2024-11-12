# Filebeat base image
FROM docker.elastic.co/beats/filebeat:7.10.0

# Copy the custom filebeat configuration
COPY filebeat.yml /usr/share/filebeat/filebeat.yml

# Set permissions for filebeat configuration file
USER root
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml

# Entry point
ENTRYPOINT ["filebeat", "-e"]
