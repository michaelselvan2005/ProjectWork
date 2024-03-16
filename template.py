import os
from pathlib import Path

project_name = "SparkLearning"

list_of_file=[

    f"{project_name}/__init__.py",
    f"{project_name}/SparkSQL/readingFiles.py",
    f"{project_name}/DataFrame/data_ingestion.py",
    f"{project_name}/DataSet/data_validation.py",
    f"{project_name}/RDD/data_transformation.py",
    "app.py",
    "requirements.txt",
    "Dockerfile",
    ".dockerignore",
    "demo.py",
    "setup.py",
    "test.py"
 ]


for filepath in list_of_file :
    filepath = Path(filepath)
    filedir,filename = os.path.split(filepath)
    if filedir != "":
        os.makedirs(filedir,exist_ok=True)
    if(not os.path.exists(filename)) or (os.path.getsize(filepath) ==0):
        with open(filepath,"w") as f:
            pass
    else:
        print(f"file is already present at:{filepath}")
