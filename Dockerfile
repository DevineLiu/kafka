FROM hseeberger/scala-sbt:8u312_1.6.2_2.13.8

WORKDIR /workspaces/kafka
COPY  . .

RUN ./gradlew jar