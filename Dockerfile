FROM itaybre/bnfc:latest

COPY entrypoint.sh /entrypoint.sh
COPY pruebas /pruebas

ENTRYPOINT ["/entrypoint.sh"]