#!/bin/bash

#!/bin/bash

# Check if the operating system is Windows
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" || "$OSTYPE" == "cygwin" ]]; then
    # Command for Windows
    docker run -v .\data:/data  workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output /data/workflows/example/workflow.cwl /data/workflows/example/input.yml
else
    # Command for non-Windows systems
    docker run -v ./data:/data  workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output /data/workflows/example/workflow.cwl /data/workflows/example/input.yml
fi

