#!/usr/bin/env sh
set -e
DIR=$(CDPATH= cd -- "$(dirname "$0")" && pwd)
if [ ! -f "$DIR/gradle/wrapper/gradle-wrapper.jar" ]; then
  echo "Gradle wrapper JAR missing; using preinstalled Gradle to generate it..."
  gradle -q wrapper --gradle-version 8.9
fi
exec "$DIR/gradlew" "$@"
