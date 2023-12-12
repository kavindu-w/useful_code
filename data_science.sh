## pip virtual environment

python -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
#########################
## use anaconda prompt as admin(vscode one sometimes not work -> access rights issues)

# don't forget to deactivate current env
conda deactivate currentenv
conda create -n envname python=x.x otherspecific versions
conda activate envname
# data science python 3.6 env
conda create -n ds python=3.6 pandas=0.24 numpy=1.17 scikit-learn=0.22 seaborn ipykernel
# default installation
conda create -n ds seaborn ipykernel
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
eval "$('/c/Users/5400/anaconda3/Scripts/conda.exe' 'shell.bash' 'hook')"
# <<< conda initialize <<<



# using yml file(conda) , use requirements.txt for pip users
conda env create -f environment.yml
# create following yml file in the code directory and run above code
name: base
channels:
  - conda-forge
  - defaults
dependencies:
  - _ipyw_jlab_nb_ext_conf=0.1.0=py39haa95532_0
  - _py-xgboost-mutex=2.0=cpu_0
  - alabaster=0.7.12=pyhd3eb1b0_0
  - anaconda=2023.03=py39_0
  - anaconda-client=1.11.1=py39haa95532_0
  - anaconda-navigator=2.4.0=py39haa95532_0
  - anyio=3.5.0=py39haa95532_0
  - appdirs=1.4.4=pyhd3eb1b0_0
  - argon2-cffi=21.3.0=pyhd3eb1b0_0
  - argon2-cffi-bindings=21.2.0=py39h2bbff1b_0
  - arrow=1.2.3=py39haa95532_1
  - astroid=2.14.2=py39haa95532_0
  - astropy=5.1=py39h080aedc_0
  - asttokens=2.0.5=pyhd3eb1b0_0
  - atomicwrites=1.4.0=py_0
  - attrs=22.1.0=py39haa95532_0
  - automat=20.2.0=py_0
  - autopep8=1.6.0=pyhd3eb1b0_1
  - babel=2.11.0=py39haa95532_0
  - backcall=0.2.0=pyhd3eb1b0_0
  - backports=1.1=pyhd3eb1b0_0
  - backports.functools_lru_cache=1.6.4=pyhd3eb1b0_0
  - backports.tempfile=1.0=pyhd3eb1b0_1
  - backports.weakref=1.0.post1=py_1
  - bcrypt=3.2.0=py39h2bbff1b_1
  - beautifulsoup4=4.11.1=py39haa95532_0
  - binaryornot=0.4.4=pyhd3eb1b0_1
  - black=22.6.0=py39haa95532_0
  - blas=1.0=mkl
  - bleach=4.1.0=pyhd3eb1b0_0
  - blosc=1.21.3=h6c2663c_0
  - bokeh=2.4.3=py39haa95532_0
  - boltons=23.0.0=py39haa95532_0
  - boost-cpp=1.73.0=h2bbff1b_12
  - bottleneck=1.3.5=py39h080aedc_0
  - brotli=1.0.9=h2bbff1b_7
  - brotli-bin=1.0.9=h2bbff1b_7
  - brotlipy=0.7.0=py39h2bbff1b_1003
  - bzip2=1.0.8=he774522_0
  - ca-certificates=2023.01.10=haa95532_0
  - cairo=1.16.0=haedb8bc_4
  - catboost=1.0.6=py39haa95532_1
  - certifi=2022.12.7=py39haa95532_0
  - cffi=1.15.1=py39h2bbff1b_3
  - cfitsio=3.470=h2bbff1b_7
  - chardet=4.0.0=py39haa95532_1003
  - charls=2.2.0=h6c2663c_0
  - charset-normalizer=2.0.4=pyhd3eb1b0_0
  - click=8.0.4=py39haa95532_0
  - cloudpickle=2.0.0=pyhd3eb1b0_0
  - clyent=1.2.2=py39haa95532_1
  - colorama=0.4.6=py39haa95532_0
  - colorcet=3.0.1=py39haa95532_0
  - comm=0.1.2=py39haa95532_0
  - conda=23.3.1=py39haa95532_0
  - conda-build=3.24.0=py39haa95532_0
  - conda-content-trust=0.1.3=py39haa95532_0
  - conda-env=2.6.0=haa95532_1
  - conda-package-handling=2.0.2=py39haa95532_0
  - conda-package-streaming=0.7.0=py39haa95532_0
  - conda-repo-cli=1.0.41=py39haa95532_0
  - conda-token=0.4.0=pyhd3eb1b0_0
  - conda-verify=3.4.2=py_1
  - console_shortcut=0.1.1=4
  - constantly=15.1.0=pyh2b92418_0
  - contourpy=1.0.5=py39h59b6b97_0
  - cookiecutter=1.7.3=pyhd3eb1b0_0
  - cryptography=39.0.1=py39h21b164f_0
  - cssselect=1.1.0=pyhd3eb1b0_0
  - curl=7.87.0=h2bbff1b_0
  - cycler=0.11.0=pyhd3eb1b0_0
  - cytoolz=0.12.0=py39h2bbff1b_0
  - daal4py=2023.0.2=py39h757b272_0
  - dal=2023.0.1=h59b6b97_26646
  - dask=2022.7.0=py39haa95532_0
  - dask-core=2022.7.0=py39haa95532_0
  - datashader=0.14.4=py39haa95532_0
  - datashape=0.5.4=py39haa95532_1
  - debugpy=1.5.1=py39hd77b12b_0
  - decorator=5.1.1=pyhd3eb1b0_0
  - defusedxml=0.7.1=pyhd3eb1b0_0
  - diff-match-patch=20200713=pyhd3eb1b0_0
  - dill=0.3.6=py39haa95532_0
  - distributed=2022.7.0=py39haa95532_0
  - docstring-to-markdown=0.11=py39haa95532_0
  - docutils=0.18.1=py39haa95532_3
  - entrypoints=0.4=py39haa95532_0
  - et_xmlfile=1.1.0=py39haa95532_0
  - executing=0.8.3=pyhd3eb1b0_0
  - expat=2.4.9=h6c2663c_0
  - ffmpeg=4.2.2=he774522_0
  - filelock=3.9.0=py39haa95532_0
  - flake8=6.0.0=py39haa95532_0
  - flask=2.2.2=py39haa95532_0
  - flit-core=3.6.0=pyhd3eb1b0_0
  - font-ttf-dejavu-sans-mono=2.37=hd3eb1b0_0
  - font-ttf-inconsolata=2.001=hcb22688_0
  - font-ttf-source-code-pro=2.030=hd3eb1b0_0
  - font-ttf-ubuntu=0.83=h8b1ccd4_0
  - fontconfig=2.14.1=hc0defaf_1
  - fonts-anaconda=1=h8fa9717_0
  - fonts-conda-ecosystem=1=hd3eb1b0_0
  - fonttools=4.25.0=pyhd3eb1b0_0
  - freetype=2.12.1=ha860e81_0
  - fribidi=1.0.10=h62dcd97_0
  - fsspec=2022.11.0=py39haa95532_0
  - future=0.18.3=py39haa95532_0
  - gensim=4.3.0=py39hd77b12b_0
  - getopt-win32=0.1=h2bbff1b_0
  - giflib=5.2.1=h8cc25b3_3
  - glib=2.69.1=h5dc1a3c_2
  - glob2=0.7=pyhd3eb1b0_0
  - graphite2=1.3.14=hd77b12b_1
  - graphviz=2.50.0=h7eca76f_1
  - greenlet=2.0.1=py39hd77b12b_0
  - gst-plugins-base=1.18.5=h9e645db_0
  - gstreamer=1.18.5=hd78058f_0
  - gts=0.7.6=h63ab5a1_3
  - gym=0.21.0=py39h832f523_2
  - h5py=3.7.0=py39h3de5c98_0
  - harfbuzz=4.3.0=hb646838_1
  - hdf5=1.10.6=h1756f20_1
  - heapdict=1.0.1=pyhd3eb1b0_0
  - holoviews=1.15.4=py39haa95532_0
  - huggingface_hub=0.10.1=py39haa95532_0
  - hvplot=0.8.2=py39haa95532_0
  - hyperlink=21.0.0=pyhd3eb1b0_0
  - hyperopt=0.2.7=pyhd8ed1ab_0
  - icc_rt=2022.1.0=h6049295_2
  - icu=58.2=ha925a31_3
  - idna=3.4=py39haa95532_0
  - imagecodecs=2021.8.26=py39h319e4f4_2
  - imageio=2.26.0=py39haa95532_0
  - imagesize=1.4.1=py39haa95532_0
  - imbalanced-learn=0.10.1=py39haa95532_0
  - importlib-metadata=4.11.3=py39haa95532_0
  - importlib_metadata=4.11.3=hd3eb1b0_0
  - importlib_resources=5.2.0=pyhd3eb1b0_1
  - incremental=21.3.0=pyhd3eb1b0_0
  - inflection=0.5.1=py39haa95532_0
  - iniconfig=1.1.1=pyhd3eb1b0_0
  - intake=0.6.7=py39haa95532_0
  - intel-openmp=2021.4.0=haa95532_3556
  - intervaltree=3.1.0=pyhd3eb1b0_0
  - ipykernel=6.19.2=py39hd4e2768_0
  - ipython=8.10.0=py39haa95532_0
  - ipython_genutils=0.2.0=pyhd3eb1b0_1
  - ipywidgets=7.6.5=pyhd3eb1b0_1
  - isort=5.9.3=pyhd3eb1b0_0
  - itemadapter=0.3.0=pyhd3eb1b0_0
  - itemloaders=1.0.4=pyhd3eb1b0_1
  - itsdangerous=2.0.1=pyhd3eb1b0_0
  - jedi=0.18.1=py39haa95532_1
  - jellyfish=0.9.0=py39h2bbff1b_0
  - jinja2=3.1.2=py39haa95532_0
  - jinja2-time=0.2.0=pyhd3eb1b0_3
  - jmespath=0.10.0=pyhd3eb1b0_0
  - joblib=1.1.1=py39haa95532_0
  - jpeg=9e=h2bbff1b_1
  - jq=1.6=haa95532_1
  - json5=0.9.6=pyhd3eb1b0_0
  - jsonpatch=1.32=pyhd3eb1b0_0
  - jsonpointer=2.1=pyhd3eb1b0_0
  - jsonschema=4.17.3=py39haa95532_0
  - jupyter=1.0.0=py39haa95532_8
  - jupyter_client=7.3.4=py39haa95532_0
  - jupyter_console=6.6.2=py39haa95532_0
  - jupyter_core=5.2.0=py39haa95532_0
  - jupyter_server=1.23.4=py39haa95532_0
  - jupyterlab=3.5.3=py39haa95532_0
  - jupyterlab_pygments=0.1.2=py_0
  - jupyterlab_server=2.19.0=py39haa95532_0
  - jupyterlab_widgets=1.0.0=pyhd3eb1b0_1
  - jxrlib=1.1=he774522_2
  - keyring=23.4.0=py39haa95532_0
  - kiwisolver=1.4.4=py39hd77b12b_0
  - lazy-object-proxy=1.6.0=py39h2bbff1b_0
  - lcms2=2.12=h83e58a3_0
  - lerc=3.0=hd77b12b_0
  - libaec=1.0.4=h33f27b4_1
  - libarchive=3.6.2=hebabd0d_0
  - libboost=1.73.0=h6c2663c_12
  - libbrotlicommon=1.0.9=h2bbff1b_7
  - libbrotlidec=1.0.9=h2bbff1b_7
  - libbrotlienc=1.0.9=h2bbff1b_7
  - libclang=12.0.0=default_h627e005_2
  - libcurl=7.87.0=h86230a5_0
  - libdeflate=1.17=h2bbff1b_0
  - libffi=3.4.2=hd77b12b_6
  - libgd=2.3.3=hd77b12b_2
  - libiconv=1.16=h2bbff1b_2
  - liblief=0.12.3=hd77b12b_0
  - libogg=1.3.5=h2bbff1b_1
  - libpng=1.6.39=h8cc25b3_0
  - libsodium=1.0.18=h62dcd97_0
  - libspatialindex=1.9.3=h6c2663c_0
  - libssh2=1.10.0=hcd4344a_0
  - libtiff=4.5.0=h6c2663c_2
  - libuv=1.44.2=h2bbff1b_0
  - libvorbis=1.3.7=he774522_0
  - libwebp=1.2.4=hbc33d0d_1
  - libwebp-base=1.2.4=h2bbff1b_1
  - libxgboost=1.7.3=hd77b12b_0
  - libxml2=2.9.14=h0ad7f3c_0
  - libxslt=1.1.35=h2bbff1b_0
  - libzopfli=1.0.3=ha925a31_0
  - lightgbm=3.3.5=py39hd77b12b_0
  - llvmlite=0.39.1=py39h23ce68f_0
  - locket=1.0.0=py39haa95532_0
  - lxml=4.9.1=py39h1985fb9_0
  - lz4=3.1.3=py39h2bbff1b_0
  - lz4-c=1.9.4=h2bbff1b_0
  - lzo=2.10=he774522_2
  - m2-msys2-runtime=2.5.0.17080.65c939c=3
  - m2-patch=2.7.5=2
  - m2w64-libwinpthread-git=5.0.0.4634.697f757=2
  - markdown=3.4.1=py39haa95532_0
  - markupsafe=2.1.1=py39h2bbff1b_0
  - matplotlib=3.7.0=py39haa95532_0
  - matplotlib-base=3.7.0=py39hf11a4ad_0
  - matplotlib-inline=0.1.6=py39haa95532_0
  - mccabe=0.7.0=pyhd3eb1b0_0
  - menuinst=1.4.19=py39h59b6b97_0
  - mistune=0.8.4=py39h2bbff1b_1000
  - mkl=2021.4.0=haa95532_640
  - mkl-service=2.4.0=py39h2bbff1b_0
  - mkl_fft=1.3.1=py39h277e83a_0
  - mkl_random=1.2.2=py39hf11a4ad_0
  - mock=4.0.3=pyhd3eb1b0_0
  - mpmath=1.2.1=py39haa95532_0
  - msgpack-python=1.0.3=py39h59b6b97_0
  - msys2-conda-epoch=20160418=1
  - multipledispatch=0.6.0=py39haa95532_0
  - munkres=1.1.4=py_0
  - mypy_extensions=0.4.3=py39haa95532_1
  - navigator-updater=0.3.0=py39haa95532_0
  - nbclassic=0.5.2=py39haa95532_0
  - nbclient=0.5.13=py39haa95532_0
  - nbconvert=6.5.4=py39haa95532_0
  - nbformat=5.7.0=py39haa95532_0
  - nest-asyncio=1.5.6=py39haa95532_0
  - networkx=2.8.4=py39haa95532_0
  - ninja=1.10.2=haa95532_5
  - ninja-base=1.10.2=h6d14046_5
  - nltk=3.7=pyhd3eb1b0_0
  - notebook=6.5.2=py39haa95532_0
  - notebook-shim=0.2.2=py39haa95532_0
  - numba=0.56.4=py39hf11a4ad_0
  - numexpr=2.8.4=py39h5b0cc5e_0
  - numpy=1.23.5=py39h3b20f71_0
  - numpy-base=1.23.5=py39h4da318b_0
  - numpydoc=1.5.0=py39haa95532_0
  - openjpeg=2.4.0=h4fc8c34_0
  - openpyxl=3.0.10=py39h2bbff1b_0
  - openssl=1.1.1t=h2bbff1b_0
  - packaging=22.0=py39haa95532_0
  - pandas=1.5.3=py39hf11a4ad_0
  - pandocfilters=1.5.0=pyhd3eb1b0_0
  - panel=0.14.3=py39haa95532_0
  - pango=1.50.7=h78c2152_0
  - param=1.12.3=py39haa95532_0
  - paramiko=2.8.1=pyhd3eb1b0_0
  - parsel=1.6.0=py39haa95532_0
  - parso=0.8.3=pyhd3eb1b0_0
  - partd=1.2.0=pyhd3eb1b0_1
  - pathlib=1.0.1=pyhd3eb1b0_1
  - pathspec=0.10.3=py39haa95532_0
  - patsy=0.5.3=py39haa95532_0
  - pcre=8.45=hd77b12b_0
  - pep8=1.7.1=py39haa95532_1
  - pexpect=4.8.0=pyhd3eb1b0_3
  - pickleshare=0.7.5=pyhd3eb1b0_1003
  - pillow=9.4.0=py39hd77b12b_0
  - pip=22.3.1=py39haa95532_0
  - pixman=0.40.0=h2bbff1b_1
  - pkginfo=1.9.6=py39haa95532_0
  - platformdirs=2.5.2=py39haa95532_0
  - plotly=5.9.0=py39haa95532_0
  - pluggy=1.0.0=py39haa95532_1
  - ply=3.11=py39haa95532_0
  - pooch=1.4.0=pyhd3eb1b0_0
  - poppler=22.12.0=h268424c_0
  - poppler-data=0.4.11=haa95532_1
  - powershell_shortcut=0.0.1=3
  - poyo=0.5.0=pyhd3eb1b0_0
  - prometheus_client=0.14.1=py39haa95532_0
  - prompt-toolkit=3.0.36=py39haa95532_0
  - prompt_toolkit=3.0.36=hd3eb1b0_0
  - protego=0.1.16=py_0
  - psutil=5.9.0=py39h2bbff1b_0
  - ptyprocess=0.7.0=pyhd3eb1b0_2
  - pure_eval=0.2.2=pyhd3eb1b0_0
  - py=1.11.0=pyhd3eb1b0_0
  - py-lief=0.12.3=py39hd77b12b_0
  - py-xgboost=1.7.3=py39haa95532_0
  - py4j=0.10.9.3=py39haa95532_0
  - pyasn1=0.4.8=pyhd3eb1b0_0
  - pyasn1-modules=0.2.8=py_0
  - pycodestyle=2.10.0=py39haa95532_0
  - pycosat=0.6.4=py39h2bbff1b_0
  - pycparser=2.21=pyhd3eb1b0_0
  - pyct=0.5.0=py39haa95532_0
  - pycurl=7.45.1=py39hcd4344a_0
  - pydispatcher=2.0.5=py39haa95532_2
  - pydocstyle=6.3.0=py39haa95532_0
  - pyerfa=2.0.0=py39h2bbff1b_0
  - pyflakes=3.0.1=py39haa95532_0
  - pyglet=1.5.27=py39hcbf5309_1
  - pygments=2.11.2=pyhd3eb1b0_0
  - pyhamcrest=2.0.2=pyhd3eb1b0_2
  - pyjwt=2.4.0=py39haa95532_0
  - pylint=2.16.2=py39haa95532_0
  - pylint-venv=2.3.0=py39haa95532_0
  - pyls-spyder=0.4.0=pyhd3eb1b0_0
  - pynacl=1.5.0=py39h8cc25b3_0
  - pyodbc=4.0.34=py39hd77b12b_0
  - pyopenssl=23.0.0=py39haa95532_0
  - pyparsing=3.0.9=py39haa95532_0
  - pyqt=5.15.7=py39hd77b12b_0
  - pyqt5-sip=12.11.0=py39hd77b12b_0
  - pyqtwebengine=5.15.7=py39hd77b12b_0
  - pyrsistent=0.18.0=py39h196d8e1_0
  - pysocks=1.7.1=py39haa95532_0
  - pytables=3.7.0=py39h388bc9b_1
  - pytest=7.1.2=py39haa95532_0
  - python=3.9.16=h6244533_1
  - python-dateutil=2.8.2=pyhd3eb1b0_0
  - python-fastjsonschema=2.16.2=py39haa95532_0
  - python-graphviz=0.20.1=py39haa95532_0
  - python-libarchive-c=2.9=pyhd3eb1b0_1
  - python-lsp-black=1.2.1=py39haa95532_0
  - python-lsp-jsonrpc=1.0.0=pyhd3eb1b0_0
  - python-lsp-server=1.7.1=py39haa95532_0
  - python-slugify=5.0.2=pyhd3eb1b0_0
  - python-snappy=0.6.1=py39hd77b12b_0
  - python_abi=3.9=2_cp39
  - pytoolconfig=1.2.5=py39haa95532_1
  - pytorch=1.12.1=cpu_py39h5e1f01c_1
  - pytz=2022.7=py39haa95532_0
  - pyviz_comms=2.0.2=pyhd3eb1b0_0
  - pywavelets=1.4.1=py39h2bbff1b_0
  - pywin32=305=py39h2bbff1b_0
  - pywin32-ctypes=0.2.0=py39haa95532_1000
  - pywinpty=2.0.10=py39h5da7b33_0
  - pyyaml=6.0=py39h2bbff1b_1
  - pyzmq=23.2.0=py39hd77b12b_0
  - qdarkstyle=3.0.2=pyhd3eb1b0_0
  - qstylizer=0.2.2=py39haa95532_0
  - qt-main=5.15.2=he8e5bd7_7
  - qt-webengine=5.15.9=hb9a9bb5_5
  - qtawesome=1.2.2=py39haa95532_0
  - qtconsole=5.4.0=py39haa95532_0
  - qtpy=2.2.0=py39haa95532_0
  - qtwebkit=5.212=h3ad3cdb_4
  - queuelib=1.5.0=py39haa95532_0
  - regex=2022.7.9=py39h2bbff1b_0
  - requests=2.28.1=py39haa95532_0
  - requests-file=1.5.1=pyhd3eb1b0_0
  - rope=1.7.0=py39haa95532_0
  - rtree=1.0.1=py39h2eaa2aa_0
  - ruamel.yaml=0.17.21=py39h2bbff1b_0
  - ruamel.yaml.clib=0.2.6=py39h2bbff1b_1
  - scikit-image=0.19.3=py39hd77b12b_1
  - scikit-learn=1.2.1=py39hd77b12b_0
  - scikit-learn-intelex=2023.0.2=py39haa95532_0
  - scipy=1.10.0=py39h321e85e_1
  - scrapy=2.8.0=py39haa95532_0
  - seaborn=0.12.2=py39haa95532_0
  - send2trash=1.8.0=pyhd3eb1b0_1
  - service_identity=18.1.0=pyhd3eb1b0_1
  - setuptools=65.6.3=py39haa95532_0
  - sip=6.6.2=py39hd77b12b_0
  - six=1.16.0=pyhd3eb1b0_1
  - smart_open=5.2.1=py39haa95532_0
  - snappy=1.1.9=h6c2663c_0
  - sniffio=1.2.0=py39haa95532_1
  - snowballstemmer=2.2.0=pyhd3eb1b0_0
  - sortedcontainers=2.4.0=pyhd3eb1b0_0
  - soupsieve=2.3.2.post1=py39haa95532_0
  - sphinx=5.0.2=py39haa95532_0
  - sphinxcontrib-applehelp=1.0.2=pyhd3eb1b0_0
  - sphinxcontrib-devhelp=1.0.2=pyhd3eb1b0_0
  - sphinxcontrib-htmlhelp=2.0.0=pyhd3eb1b0_0
  - sphinxcontrib-jsmath=1.0.1=pyhd3eb1b0_0
  - sphinxcontrib-qthelp=1.0.3=pyhd3eb1b0_0
  - sphinxcontrib-serializinghtml=1.1.5=pyhd3eb1b0_0
  - spyder=5.4.1=py39haa95532_0
  - spyder-kernels=2.4.1=py39haa95532_0
  - sqlalchemy=1.4.39=py39h2bbff1b_0
  - sqlite=3.40.1=h2bbff1b_0
  - stack_data=0.2.0=pyhd3eb1b0_0
  - statsmodels=0.13.5=py39h080aedc_1
  - sympy=1.11.1=py39haa95532_0
  - tabulate=0.8.10=py39haa95532_0
  - tbb=2021.7.0=h59b6b97_0
  - tbb4py=2021.7.0=py39h59b6b97_0
  - tblib=1.7.0=pyhd3eb1b0_0
  - tenacity=8.0.1=py39haa95532_1
  - terminado=0.17.1=py39haa95532_0
  - text-unidecode=1.3=pyhd3eb1b0_0
  - textdistance=4.2.1=pyhd3eb1b0_0
  - threadpoolctl=2.2.0=pyh0d69192_0
  - three-merge=0.1.1=pyhd3eb1b0_0
  - tifffile=2021.7.2=pyhd3eb1b0_2
  - tinycss2=1.2.1=py39haa95532_0
  - tk=8.6.12=h2bbff1b_0
  - tldextract=3.2.0=pyhd3eb1b0_0
  - tokenizers=0.11.4=py39he5181cf_1
  - toml=0.10.2=pyhd3eb1b0_0
  - tomli=2.0.1=py39haa95532_0
  - tomlkit=0.11.1=py39haa95532_0
  - toolz=0.12.0=py39haa95532_0
  - tornado=6.1=py39h2bbff1b_0
  - tqdm=4.64.1=py39haa95532_0
  - traitlets=5.7.1=py39haa95532_0
  - transformers=4.24.0=py39haa95532_0
  - twisted=22.2.0=py39h2bbff1b_1
  - twisted-iocpsupport=1.0.2=py39h2bbff1b_0
  - typing-extensions=4.4.0=py39haa95532_0
  - typing_extensions=4.4.0=py39haa95532_0
  - tzdata=2022g=h04d1e81_0
  - ujson=5.4.0=py39hd77b12b_0
  - unidecode=1.2.0=pyhd3eb1b0_0
  - urllib3=1.26.14=py39haa95532_0
  - vc=14.2=h21ff451_1
  - vs2015_runtime=14.27.29016=h5e58377_2
  - w3lib=1.21.0=pyhd3eb1b0_0
  - watchdog=2.1.6=py39haa95532_0
  - wcwidth=0.2.5=pyhd3eb1b0_0
  - webencodings=0.5.1=py39haa95532_1
  - websocket-client=0.58.0=py39haa95532_4
  - werkzeug=2.2.2=py39haa95532_0
  - whatthepatch=1.0.2=py39haa95532_0
  - wheel=0.38.4=py39haa95532_0
  - widgetsnbextension=3.5.2=py39haa95532_0
  - win_inet_pton=1.1.0=py39haa95532_0
  - wincertstore=0.2=py39haa95532_2
  - winpty=0.4.3=4
  - wrapt=1.14.1=py39h2bbff1b_0
  - xarray=2022.11.0=py39haa95532_0
  - xgboost=1.7.3=py39haa95532_0
  - xlwings=0.29.1=py39haa95532_0
  - xz=5.2.10=h8cc25b3_1
  - yaml=0.2.5=he774522_0
  - yapf=0.31.0=pyhd3eb1b0_0
  - zeromq=4.3.4=hd77b12b_0
  - zfp=0.5.5=hd77b12b_6
  - zict=2.1.0=py39haa95532_0
  - zipp=3.11.0=py39haa95532_0
  - zlib=1.2.13=h8cc25b3_0
  - zope=1.0=py39haa95532_1
  - zope.interface=5.4.0=py39h2bbff1b_0
  - zstandard=0.19.0=py39h2bbff1b_0
  - zstd=1.5.2=h19a0ad4_0
prefix: C:\ProgramData\Anaconda3
