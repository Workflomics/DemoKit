# Workflomics DemoKit
Data and instructions needed to run locally the Workflomics project



Run

```
docker run -v ./data:/data  workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output /data/examples/workflow.cwl /data/examples/inp.yml
```