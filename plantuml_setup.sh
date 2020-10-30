#!/bin/sh
# PlantUML setup
#
# If you're running locally, adjust the following variables not to temper your system
PLANTUML_VERSION="1.2020.15"
PLANTUML_DIR=/usr/share/plantuml
PLANTUML_JAR="plantuml.jar"
PLANTUML_URL="https://sourceforge.net/projects/plantuml/files/$PLANTUML_VERSION/plantuml.$PLANTUML_VERSION.jar"

echo "Seting up PlantUML"
echo "Version $PLANTUML_VERSION"
echo "DESTINATION $PLANTUML_DIR/$PLANTUML_JAR"
echo "From $PLANTUML_URL"
echo "-----------------------------------"
wget $PLANTUML_URL --no-check-certificate || exit 1
echo
echo "Creating destination dir"
mkdir -p $PLANTUML_DIR || exit 2
echo "Copying .jar"
mv plantuml.$PLANTUML_VERSION.jar $PLANTUML_DIR/$PLANTUML_JAR || exit 3
echo "Done setting up plantuml version"