$Path1 = Read-Host "Enter the path to the workflow (.cwl) file:"
if (-not (Test-Path $Path1)) {
    $Path1 = ".\$Path1"
}

$Path2 = Read-Host "Enter the path to the input (.yml) file"
if (-not (Test-Path $Path2)) {
    $Path2 = ".\$Path2"
}

docker run -v ${PWD}\data:/data workflomics/container:v1.0 cwl-runner --leave-tmpdir --outdir /data/output $Path1 $Path2
