FROM haskell:8.4

RUN apt-get update 
RUN apt-get -y install --no-install-recommends openjdk-8-jdk openjdk-8-jre jasmin-sable

RUN stack install --resolver ghc-8.4.4 happy alex BNFC-2.8.2

COPY entrypoint.sh /entrypoint.sh
COPY pruebas /pruebas

ENTRYPOINT ["/entrypoint.sh"]
# CMD ["bash"]