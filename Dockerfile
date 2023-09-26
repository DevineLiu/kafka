FROM hseeberger/scala-sbt:8u312_1.6.2_2.13.8 as builder

WORKDIR /workspaces/kafka
COPY  . .
RUN ./gradlew clean releaseTarGz
