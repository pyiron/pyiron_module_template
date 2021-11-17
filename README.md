#pyiron_module

This repository is a template for new pyiron modules similar to the existing modules of the 
pyiron framework, e.g. 
[pyiron_base](https://github.com/pyiron/pyiron_base),
[pyiron_atomistics](https://github.com/pyiron/pyiron_atomistics),
and 
[pyiron_contrib](https://github.com/pyiron/pyiron_contrib).

Within this repository, the new module is called `pyiron_module` which should be renamed to `pyiron_IntendedModuleName`. 
This can be easily achieved by modifying and running the update_module_name.sh script. 

We usually collect all files relevant for the continuous integration (CI) pipelines in `.ci_support`, 
while the actual CI workflows are handled by GitHub and stored in `.github`.

If the licence is free to choose, we use the BSD3 licence packed here.

If possible include a binder button on the README page to allow for fast testing of the new module. 
This repository has an example `binder` directory for which at least the `environment.yml` needs to be changed.

To get the CI for the new pyiron_module set up, you need to ask someone of the pyiron core team (with pyiron runner rights)
to set up tokens for dependabot, PyPI, and codacy. 
Furthermore, the pyiron_module should be made available via conda; see 
[conda-forge/staged-recipes](https://github.com/conda-forge/staged-recipes) for how to publish it there.
