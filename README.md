# Workflomics DemoKit
This repository serves as a demonstration of the features offered by the [Workflomics Web Platform](http://workflomics.org/). It includes detailed instructions and all the necessary data required for local testing of the platform.

## Important Notice

**Exploration Without Installation**: You can freely explore the various features and functionalities of the [Workflomics Web Platform](http://workflomics.org/) without the need for any prior installation. Feel free to browse through the interface and experiment with workflow creation and customization.

**Workflow Execution**: However, in order to execute the generated workflows locally, it's essential to follow the provided installation and setup steps. These steps ensure that your environment is properly configured to run the workflows and take advantage of the platform's execution capabilities.


# Local setup instructions

This section will guide you through the process of setting up the environment and generating workflows for local execution. By following these steps, you'll be able to seamlessly create and run workflows using the Workflomics Web Platform.

### Prerequisites

Before you begin, make sure you have the following prerequisites installed:

- **Docker Desktop**

   Install Docker Desktop by following the instructions in the [Docker Desktop repository](https://github.com/docker/docker-desktop). 

- **Git**

   If you haven't already, install Git on your system. You can download Git from [git-scm.com](https://git-scm.com/).

### Installation


1. **Pull Docker Image:**

   Assuming that you have **installed** and **started** (it must be running in the background) Docker Desktop, open a terminal and execute the following command to pull the Docker image:

   ```bash
   docker pull workflomics/container:v1.0

2. **Clone This Repository:**

   Use **git** to clone this repository to your local machine using the following command:

   ```bash
   git clone https://github.com/Workflomics/DemoKit.git

### Generating Workflows

Once you have the environment set up, you can easily generate workflows using the [Workflomics Web Platform](http://workflomics.org/).
After creating the workflows to your satisfaction, it's important to save them locally for future use.

To save the workflows, follow these steps:

1. Create a new folder within your project's Git repository under `data/workflows/`.
2. Give the folder an appropriate and descriptive name to easily identify the workflows.
3. Inside the newly created folder, save the workflow `.cwl` files that you generated using the Workflomics Web Platform.
4. Additionally, save the corresponding `.yml` input files for each workflow in the same folder.

This local storage of workflow files ensures that you have a record of your generated workflows and their associated input files, making it convenient for later use and execution.

### Local Execution

After generating and downloading locally the workflows (workflow .cwl files as well as the .yml input file), you can execute them locally. To do so, you can use the following script (tested on non-Windows machines):

Execute the `run.sh` script, where the provided scripts are available at `/data/workflows/example/workflow.cwl` and `/data/workflows/example/input.yml`.

or run the following command:

**Linux/Mac**
```bash
docker run -v ./data:/data  workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output /data/workflows/example/workflow.cwl /data/workflows/example/input.yml
```

**Windows**
```bash
docker run -v .\data:/data  workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output /data/workflows/example/workflow.cwl /data/workflows/example/input.yml
```

The above command will execute an example of a workflow (`workflow.cwl`) using the input files specified `input.yml` and will save the output files in the `output` folder.

# Workflow Customization

Section describes how to update and customize existing workflows, and fine-tune the execution process for precise control over your results.


## Updating Workflow Execution

The execution of workflows generated through the [Workflomics Web Platform](http://workflomics.org/) can be customized according to your requirements. By default, the input files used for execution point to data available online in our [DemoKit repository](https://github.com/Workflomics/DemoKit/tree/main/data/inputs). These files are also available locally under `/data/inputs`.

If you wish to use your own input files, you can easily update the execution process by modifying the `input.yml` files associated with your workflows. To do this:

1. Locate the respective `input.yml` file for the workflow you wish to modify. These files are located within the workflow folders you saved earlier under `/data/workflows/`.

2. Open the `input.yml` file in a text editor.

3. In the `input.yml` file, you'll find paths or URLs pointing to input files. To use your own files, simply update these paths to point to the desired local files on your machine. For example, you can replace URLs with paths to local files within your project repository.

For instance, within the `data/workflows/example/input.yml` file:

```yaml
path: https://raw.githubusercontent.com/Workflomics/DemoKit/main/data/inputs/2021-10-8_Ecoli.mzML #mzML
```
You can change the `path` value to point to a local file, like:
```yaml
path: /data/inputs/2021-10-8_Ecoli.mzML #mzML
```

## Customizing CWL Workflow Files

Feel free to customize the CWL workflow files generated by the [Workflomics Web Platform](http://workflomics.org/) to meet your specific needs.

## Individual Tool Annotations

For fine-tuned control, individual tool annotations are accessible at [this location](https://github.com/Workflomics/DemoKit/tree/main/data/inputs). These annotations provide detailed input information for specific tools within the workflow. You can leverage these annotations to tailor tool behavior according to your data and preferences.



