# Ansible Role Files

[![Build Status](https://travis-ci.org/darkraiden/ansible-role-files.svg?branch=master)](https://travis-ci.org/darkraiden/ansible-role-files)

Role to provision files and template configurations.

## Requirements

-   Ansible 1.7.2+

## Dependencies

None.

## Role Variables

```yaml
files: {}
```

The role, to work, requires the variable above only. Here's a list of examples of how `files` can be used.

### Create a file or a directory

```yaml
files:
  - path: /path/to/file
    state: touch
  - path: /path/to/directory
    state: directory
```

### Create a template

```yaml
files:
  - src: templateName.j2
    path: /path/to/file/to/generate
    template: true # It works as long as it's defined, even if false
```

### Copy a file

```yaml
files:
  - src: fileName
    dest: /dest/of/file # NB: `dest` is needed to trigger copy, instead of `path`
```

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: darkraiden.ansible-files }

## License

BSD

## Author Information

This role was created in 2018 by [Davide Di Mauro](https://github.com/darkraiden).
