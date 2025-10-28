Package file structure:
```bash
package_name/
├── LICENSE (MIT or any)
├── README.md
└── package_name/
│       ├── __init__.py (Blank)
│       └── example.py (your functions)
├── setup.py
```


Setup.py content:
```python
from setuptools import setup, find_packages

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

classifiers = [
    "Development Status :: 3 - Alpha",
    "Intended Audience :: Developers",
    "Intended Audience :: Science/Research",
    "Programming Language :: Python :: 3 :: Only",  # Specify Python 3 only
    "Programming Language :: Python :: 3.6",
    "Programming Language :: Python :: 3.7",
    "Programming Language :: Python :: 3.8",
    "Programming Language :: Python :: 3.9",
    "Programming Language :: Python :: 3.10",
    "Programming Language :: Python :: 3.11",
    "License :: OSI Approved :: MIT License",
    "Operating System :: OS Independent",
    "Topic :: Scientific/Engineering",
    "Topic :: Software Development",
]

setup(
    name="package name (with underscores for separation)",
    packages=find_packages(),
    version="0.1.0",
    description="your description",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="package folder link or other parent directory link on GitHub",
    keywords=[],
    author="kavindu-w",
    author_email='your-mail',
    license='MIT',
    classifiers=classifiers,
    python_requires=">=3.6",
    install_requires=[],
    project_urls={
        "Homepage": "package folder link or other parent directory link on GitHub",
        "Source": "package folder link on GitHub",
        "Download": "https://pypi.org/project/package/", #optional
    }
)
```

Next steps:
Install requirements:
```bash
pip install twine wheel setup
```

Build package (cd to package dir)
```bash
python .\setup.py sdist bdist_wheel
```

Validate package
```bash
twine check dist/*
```

Upload package (need to register account on pypi + get API key)
```bash
twine upload dist/*
```
