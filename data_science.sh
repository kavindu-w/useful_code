## use anaconda prompt as admin(vscode one sometimes not work -> access rights issues)

# don't forget to deactivate current env
conda deactivate currentenv
conda create -n envname python=x.x otherspecific versions
conda activate envname

# list packages
conda list

# install packages after install
conda install -n yourenvname package
