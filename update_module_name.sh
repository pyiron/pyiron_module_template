#!/bin/bash

module_name="pyiron_IntendedModuleName"

for file in binder/postBuild tests/test_tests.py .coveragerc .gitattributes MANIFEST.in setup.cfg setup.py .github/ISSUE_TEMPLATE/*.md docs/environment.yml binder/environment.yml; do
  sed -i "s/pyiron_module/${module_name}/g" ${file}
done

mv pyiron_module ${module_name}

python -m versioneer setup

rm update_module_name.sh
