# Pull base image.
FROM rabbitmq:3.8-rc-alpine

RUN rabbitmq-plugins enable rabbitmq_management
RUN rabbitmq-plugins enable rabbitmq_web_stomp
RUN rabbitmq-plugins enable rabbitmq_mqtt

# Define default command.
#CMD ["rabbitmq-start"]

# Expose ports.
EXPOSE 5672
EXPOSE 15672
EXPOSE 15674
EXPOSE 1883
