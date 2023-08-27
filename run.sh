#!/bin/bash

# Execute the initial workflow - DONE
#docker run -v ./data:/data  workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output /data/examples/No\ 0/workflow.cwl /data/examples/No\ 0/input.yml

# Execute No1 - Runs but empty output
#docker run -v ./data:/data  workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output /data/examples/No\ 1/workflowSolution.cwl /data/examples/No\ 1/input.yml

# Execute No1 - DONE
# docker run -v ./data:/data  workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output /data/examples/No\ 2/workflowSolution.cwl /data/examples/No\ 2/input.yml

# Execute No3
# docker run -v ./data:/data  workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output /data/examples/No\ 3/workflowSolution.cwl /data/examples/No\ 3/input.yml

# Execute No4 - XTandem1 nor gProfiler NOT AVAILABLE
 #docker run -v ./data:/data  workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output /data/examples/No\ 4/workflowSolution.cwl /data/examples/No\ 4/input.yml

# Execute No5 - XTandem1 NOT AVAILABLE
# docker run -v ./data:/data  workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output /data/examples/No\ 5/workflowSolution.cwl /data/examples/No\ 5/input.yml

# Execute No6 - XTandem1 NOT AVAILABLE
docker run -v ./data:/data  workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output /data/examples/No\ 6/workflowSolution.cwl /data/examples/No\ 6/input.yml