### To use

you need to install `tree`

```
source /var/lib/awx/venv/awx/bin/activate
```

### Some commands

Run like in the main examples.

```
ansible-runner run -p test.yml demo
```

Fire and forget version.

```
ansible-runner start -p test.yml demo
```

Make temp directory

```
mktemp -d -t alancoding_XXXXX
```

See active jobs

```
ps aux --forest | grep "ansible-runner"
ansible-runner is-alive demo -i alancoding_0
```
