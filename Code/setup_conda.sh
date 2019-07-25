#!/bin/bash

eval "$(conda shell.bash hook)"

read -p "write the name of the new conda environemnt: " name

conda create -y -n "${name}"
conda activate "$name"
conda install pytorch torchvision cudatoolkit=9.0 -c pytorch -y
conda install -c conda-forge jupyterlab -y
conda install -y pandas scikit-learn
pip install texttable

echo "Done!"
echo "To activate the environment write: conda activate $name"
echo "To run jupyter-lab write: jupyter-lab"

