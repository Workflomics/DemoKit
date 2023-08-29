#!/bin/bash

read -e -p "Enter the path to the workflow (.cwl) file: " path1
compgen -f "$path1" > /dev/null 2>&1 || path1="./$path1"

read -e -p "Enter the path to the input (.yml) file: " path2
compgen -f "$path2" > /dev/null 2>&1 || path2="./$path2"

docker run -v ./data:/data workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output "/$path1" "/$path2"
