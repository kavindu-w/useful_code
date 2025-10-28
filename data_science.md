# pip virtual environment

```bash
python<optional version, e.g. 3.13> -m venv venv
.\venv\Scripts\activate # for windows
source venv/bin/activate # for others
pip3 install -r requirements.txt
```
## check python version
```bash
py --list
```
## install specific version of python environment
first add the python versions to system path (C:\Users\<name>\AppData\Local\Programs\Python\Python310\Scripts, and C:\Users\<name>\AppData\Local\Programs\Python\Python310\)
```bash
py -3.9 -m venv venv
```

## to find the version of specific module
```bash
pip list | findstr <module_name> # for windows
pip freeze | grep <module_name> # for others
```

## add the package version directly to the requirements
```bash
pip freeze | grep <module_name> >> requirements.txt
```
## push all the installed packages to the requirements
```bash
pip list  --format=freeze > requirements.txt
```
-----------------

# conda environment

use anaconda prompt as admin(vscode one sometimes not work -> access rights issues)

## don't forget to deactivate current env
```bash
conda deactivate <currentenv>
conda create -n <envname> python=x.x otherspecific versions
conda activate <envname>
```
## data science python 3.6 env
```bash
conda create -n ds python=3.6 pandas=0.24 numpy=1.17 scikit-learn=0.22 seaborn ipykernel
```
## default installation
```bash
conda create -n ds seaborn ipykernel scikit-learn
```

## list packages
```bash
conda list
```

## install packages after install(activate relevant env)
```bash
conda install seaborn ipykernel
```

## update
```bash
conda update -n base -c defaults conda
```

## git bash conda fix
add to .profile folder in win/users/username/

```bash
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval "$('/c/Users/user/anaconda3/Scripts/conda.exe' 'shell.bash' 'hook')"
# <<< conda initialize <<<
```

## vscode stop auto activating conda env
```bash
conda config --set auto_activate_base False
```

## using yml file(conda) , use requirements.txt for pip users
```bash
conda env create -f environment.yml
```
-----------------

# notebook paths
```python
import os
```

## Print the current working directory
```python
print(f"Current working directory: {os.getcwd()}")
```

## Correct the path and use os.path.join to construct it
```python
persona_path = os.path.join("..", "environment", "frontend_server", "storage", "the_cafe", "personas", "John Doe")
```

## Get the absolute path
```python
absolute_persona_path = os.path.abspath("../environment/frontend_server/storage/the_cafe/personas/John Doe")
```

## Print the constructed path to verify
```python
print(f"Constructed persona path: {absolute_persona_path}")
```

## Check if the path exists
```python
if not os.path.exists(absolute_persona_path):
    raise FileNotFoundError(f"The path {absolute_persona_path} does not exist.")
```
