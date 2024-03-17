#!/bin/bash

# Define variables
SPARK_HOME="C:/spark/spark-3.5.0"
PY_SCRIPT="main.py"
MASTER_URL="yarn-cluster"
APP_NAME="MySparkApp"

# Call spark-submit
$SPARK_HOME/bin/spark-submit \
    --master $MASTER_URL \
    --name $APP_NAME \
    $PY_SCRIPT