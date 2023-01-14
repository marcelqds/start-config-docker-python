FROM python:3.11.1-slim
WORKDIR /home/code
COPY requirements.txt init.sh entrypoint.sh /home/code/
RUN chmod +x ./init.sh && ./init.sh
EXPOSE 8000
CMD ["./entrypoint.sh"]
