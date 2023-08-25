# Workflomics DemoKit
Data and instructions needed to run locally the Workflomics project.

## Instructions

### Docker

1. **Install Docker Desktop:**

   Install Docker Desktop by following the instructions in the [Docker Desktop repository](https://github.com/docker/docker-desktop).

2. **Pull Docker Image:**

   After installing Docker Desktop, open a terminal and execute the following command to pull the Docker image:

   ```bash
   docker pull workflomics/container:v1.0

### Git

1. **Install Git:**

   If you haven't already, install Git on your system. You can download Git from [git-scm.com](https://git-scm.com/).

2. **Clone This Repository:**

   Clone this repository to your local machine using the following command:

   ```bash
   git clone https://github.com/Workflomics/DemoKit.git


### Run workflow


1. **Execute the example workflow:**

   Navigate to the root of the cloned repository using the terminal. Then, run the following command:

   ```bash
   docker run -v ./data:/data  workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output /data/examples/workflow.cwl /data/examples/inp.yml

