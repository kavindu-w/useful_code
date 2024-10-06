## pip virtual environment

python -m venv venv
.\venv\Scripts\activate # for windows
source venv/bin/activate # for others
pip3 install -r requirements.txt

# to find the version of specific module
pip freeze | grep h2o(module_name)
pip list | findstr shap # for windows

#########################
# check python version
py --list
# install specific version of python environment
python 3.10 -m venv venv 

##############
## use anaconda prompt as admin(vscode one sometimes not work -> access rights issues)

# don't forget to deactivate current env
conda deactivate currentenv
conda create -n envname python=x.x otherspecific versions
conda activate envname
# data science python 3.6 env
conda create -n ds python=3.6 pandas=0.24 numpy=1.17 scikit-learn=0.22 seaborn ipykernel
# default installation
conda create -n ds seaborn ipykernel scikit-learn
# dse_prj with osmnx
conda create -n dse_prj -c conda-forge --strict-channel-priority osmnx

## progress bar
conda install -c conda-forge tqdm
# use case
for terminal_index, terminal_row in tqdm(df.iterrows(), desc="Extracting POI features", unit="terminal", colour="green", total=len(df)):

# list packages
conda list

# install packages after install(activate relevant env)
conda install seaborn ipykernel

# update
conda update -n base -c defaults conda

## git bash conda fix
# add to .profile folder in win/users/username/

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval "$('/c/Users/user/anaconda3/Scripts/conda.exe' 'shell.bash' 'hook')"
# <<< conda initialize <<<

############
# vscode stop auto activating conda env
conda config --set auto_activate_base False

# using yml file(conda) , use requirements.txt for pip users
conda env create -f environment.yml
