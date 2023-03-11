FROM ubuntu:latest

EXPOSE 8000


WORKDIR /app

ENV HOST=localhost DBPORT=5432

ENV USER=root PASSWORD=root DBNAME=root

COPY ./main main

# dando permissao para executar o arquivo
RUN chmod +x main

# copiando os arquivos estaticos para dentro do container
COPY ./templates/ templates/

CMD [ "./main" ]
