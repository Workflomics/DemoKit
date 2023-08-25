#!/bin/bash

# Function to execute a workflow
execute_workflow() {
    local workflow_path="$1"
    echo "Executing $workflow_path..."
    docker run "$workflow_path"
    if [ $? -eq 0 ]; then
        echo "Workflow $workflow_path executed successfully."
    else
        echo "Failed to execute $workflow_path."
    fi
}

# Step 1: Accept the directory path as an argument or prompt the user for it
if [ $# -eq 1 ]; then
    dir_path="$1"
else
    read -p "Enter the path to the directory: " dir_path
fi

# Step 2: Display the directory path
echo "Directory path: $dir_path"

# Step 3: Ask user for workflow execution choice
read -p "Do you want to execute all workflows in the directory? (y/n): " execute_all

if [ "$execute_all" = "y" ]; then
    # Step 4: Execute all workflows
    for workflow in "$dir_path"/*; do
        if [ -f "$workflow" ]; then
            execute_workflow "$workflow"
        fi
    done
else
    # Step 5: Execute a specific workflow
    read -p "Enter the name of the workflow to execute: " specific_workflow
    specific_workflow_path="$dir_path/$specific_workflow"
    if [ -f "$specific_workflow_path" ]; then
        execute_workflow "$specific_workflow_path"
    else
        echo "Workflow $specific_workflow not found in the directory."
    fi
fi