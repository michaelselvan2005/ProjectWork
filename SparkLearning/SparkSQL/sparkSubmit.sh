
#!/bin/bash

# Set Spark home directory
#export SPARK_HOME=/path/to/spark

# Set Python path if necessary
#export PYSPARK_PYTHON=/path/to/python

# Specify your Spark application's Python file
APP_PY_FILE=/i-n-MLOps/PySpark/ProjectWork/ProjectWork/SparkLearning/SparkSQL/readingFiles.py


 echo $APP_PY_FILE
 
SPARK_SUBMIT_OPTS="--master local[2] --name YourSparkApp"

# Run spark-submit command
$SPARK_HOME/bin/spark-submit $SPARK_SUBMIT_OPTS $APP_PY_FILE