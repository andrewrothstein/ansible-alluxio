[![CircleCI](https://circleci.com/gh/andrewrothstein/ansible-alluxio.svg?style=svg)](https://circleci.com/gh/andrewrothstein/ansible-alluxio)
andrewrothstein.alluxio
===========================

Installs [Alluxio](http://www.alluxio.org/).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.alluxio
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
