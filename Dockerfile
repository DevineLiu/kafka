FROM hseeberger/scala-sbt:8u312_1.6.2_2.13.8 as builder

WORKDIR /workspaces/kafka
COPY  . .

RUN ./gradlew clean releaseTarGz


FROM alpine:3.18.3

WORKDIR /workspaces/kafka
COPY --from=builder  /workspaces/kafka/core/build/distributions/kafka_2.13-2.8.3-SNAPSHOT.tgz .
RUN ls 