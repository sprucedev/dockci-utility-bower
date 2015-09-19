# DockCI Utility: Bower
DockCI premade utility to download dependencies using the Bower package manager

## Usage
- Add a utility project into DockCI
    - Use this git repository as the repo
    - Set the slug to something like `bower`
    - Set the name to something like `Bower`
- Manually create a build
    - Use the latest version as the git reference
- Modify your `dockci.yaml`:
```
utilities:
  - name: bower
    input:
      - bower.json /work/bower.json
    output:
      - from: /work/bower_components
        to: util
```
- Modify your `Dockerfile`:
    - You may also prefer to only copy some files
```
ADD ./util/bower_components /code/bower_components
```
