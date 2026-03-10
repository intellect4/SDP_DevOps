#!/bin/sh

JAVA_HOME='/c/Program Files/Java/jdk-17.0.18'
MAVEN_CMD='/c/Program Files/apache-maven-3.9.13/bin/mvn.cmd'

if [ ! -x "$JAVA_HOME/bin/java" ]; then
  echo "Java 17 not found at $JAVA_HOME"
  exit 1
fi

if [ ! -f "$MAVEN_CMD" ]; then
  echo "Maven not found at $MAVEN_CMD"
  exit 1
fi

export JAVA_HOME
export PATH="$JAVA_HOME/bin:$PATH"
exec "$MAVEN_CMD" "$@"
