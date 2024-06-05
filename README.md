# Ansible CLI Github Action

This action is based on `ubuntu:noble` image.  
You can execute all `ansible` related actions i.e, `ansible` or `ansible-playbook`.  
You can also execute standard linux commands.

Inspired by https://github.com/RvuvuzelaM/ansible-cli-github-action

## Inputs

|Input|Required|Comment|Example|
|-|-|-|-|
|`command`|Yes|The command to execute|`ansible-playbook -i inventory.yml playbook.yml`|

## Example usage

```yaml
uses: jeanne-d4rk/ansible-cli-action@latest
with:
  command: "ansible-playbook -i inventory.yml playbook.yml"
```

