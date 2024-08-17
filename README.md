# r_script
run R cmd by script. We provide a demo repo.

## Installation by conda
```
# create conda env by conda.lock.yml
conda create -n r_script -f conda.lock.yml
```
## use
```
# enter the env
conda activate r_script

# run the script
Rscript r_script.R -f 12 -s 28
```
