#!/bin/sh

DIRNAME=$(dirname "$0")
APP_HOME=$(cd "$DIRNAME" >/dev/null && pwd)

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar
JAVACMD="java"

if [ ! -f "$CLASSPATH" ]; then
    echo "Gradle wrapper JAR tidak ditemukan. Download otomatis..."
    mkdir -p "$APP_HOME/gradle/wrapper"
    curl -L -o "$CLASSPATH" \
        https://raw.githubusercontent.com/gradle/gradle/v8.2.0/gradle/wrapper/gradle-wrapper.jar
fi

exec "$JAVACMD" -Xmx64m -classpath "$CLASSPATH" \
    org.gradle.wrapper.GradleWrapperMain "$@"
