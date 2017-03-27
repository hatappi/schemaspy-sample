JAR_DIR=$(cd $(dirname $0); pwd)/jar
SCHEMASPY_FILEPATH=$JAR_DIR/schemaspy-6.0.0-beta.3.jar
MYSQL_CONNECTOR_FILEPATH=$JAR_DIR/mysql-connector-java-5.1.41-bin.jar

HTML_OUT_DIR=$CIRCLE_ARTIFACTS/schemaspy

java \
  -jar $SCHEMASPY_FILEPATH \
  -t mysql \
  -dp $MYSQL_CONNECTOR_FILEPATH \
  -db circle_ruby_test \
  -host ${DATABASE_HOST:-localhost} \
  -u ${DATABASE_USERNAME:-root} \
  -p ${DATABASE_PASSWORD:-''} \
  -o $HTML_OUT_DIR

