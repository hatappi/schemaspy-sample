JAR_DIR=$(cd $(dirname $0); pwd)/jar/
SCHEMASPY_FILENAME='schemaspy-6.0.0-beta.3.jar'
MYSQL_CONNECTOR_FILENAME='mysql-connector-java-5.1.41-bin.jar'

HTML_OUT_DIR=$CIRCLE_ARTIFACTS/schemaspy

java \
  -jar $JAR_DIR$SCHEMASPY_FILENAME \
  -t mysql \
  -dp $JAR_DIR$MYSQL_CONNECTOR_FILENAME \
  -db circle_ruby_test \
  -host ${DATABASE_HOST:-localhost} \
  -u ${DATABASE_USERNAME:-root} \
  -p ${DATABASE_PASSWORD:-''} \
  -o $HTML_OUT_DIR \

