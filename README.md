# seff-gpu

`seff-gpu` is a small wrapper script for Slurm's `seff`-command that
prints additional GPU monitoring data collected by Slurm's
AccountingStorageTRES plugin.

## Installation

Just call `bin/seff JOBID` like you would normally do. The script calls
system `seff` and then calls `sacct` for GPU stats and will print them
if they are found.

## Installation (for cluster admins)

[AccountingStorageTRES](https://slurm.schedmd.com/tres.html#conf) plugin
must have `AccountingStorageTRES=gres/gpuutil` and `AccountingStorageTRES=gres/gpumem`
set.

If you provide GPU names either manually or via Slurm's
[NVML](https://slurm.schedmd.com/gres.html#AutoDetect)-plugin, you will
get GPU names as well.

Example config is shown below:
```sh
AccountingStorageTRES=cpu,mem,energy,node,billing,fs/disk,vmem,pages,gres/gpu,gres/gpu:a100,gres/gpumem,gres/gpuutil
```

## Module

There is an example Lmod module provided in the `modules`-folder. Modify
the installation path accordingly and place it to relevant module path or
run `module use REPO_PATH/modules` to use the `seff-gpu`-module.
