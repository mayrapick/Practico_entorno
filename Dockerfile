FROM ubuntu:latest 

WORKDIR /home/home/practico_entorno

COPY generar.sh descargar.sh descomprimir.sh procesar.sh comprimir.sh menu.sh /home/home/practico_entorno

RUN apt-get update && apt-get install -y wget imagemagick

ENV OUTPUT_DIR=/output

CMD ["/bin/bash", "/home/home/practico_entorno/menu.sh"]

