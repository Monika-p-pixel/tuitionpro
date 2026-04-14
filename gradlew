#!/usr/bin/env sh
#
# Copyright 2015 the original author or authors.
# Licensed under the Apache License, Version 2.0
#
set -e
CLASSPATH="$(dirname "$0")/gradle/wrapper/gradle-wrapper.jar"
if [ ! -f "$CLASSPATH" ] || [ ! -s "$CLASSPATH" ]; then
    echo "Downloading Gradle wrapper jar..."
    mkdir -p "$(dirname "$CLASSPATH")"
    if command -v curl > /dev/null; then
        curl -fsSL "https://services.gradle.org/distributions/gradle-8.4-bin.zip" -o /tmp/gradle-dist.zip
        unzip -p /tmp/gradle-dist.zip "gradle-8.4/lib/gradle-wrapper.jar" > "$CLASSPATH" 2>/dev/null || \
        unzip -j /tmp/gradle-dist.zip "*/gradle-wrapper.jar" -d "$(dirname "$CLASSPATH")" > /dev/null
    fi
fi
if [ -z "$JAVA_HOME" ]; then
    JAVA_CMD="java"
else
    JAVA_CMD="$JAVA_HOME/bin/java"
fi
exec "$JAVA_CMD" \
    -classpath "$CLASSPATH" \
    org.gradle.wrapper.GradleWrapperMain \
    "$@"
