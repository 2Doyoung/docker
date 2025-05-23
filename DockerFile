# 베이스 이미지 선택
FROM openjdk:17-jdk-alpine

# JAR 파일 복사
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

# 앱 실행
ENTRYPOINT ["java","-jar","/app.jar"]