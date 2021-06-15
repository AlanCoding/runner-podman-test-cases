### To use

When you activate the script, then you may gaze upon the stdout of the runs
once each is finished.

#### On your own machine

```
pip install -r requirements.txt
make clean
source script.sh
```

wait some time, then

```
source check.sh
```

#### On AWX server

As "awx" user.

```
source /var/lib/awx/venv/awx/bin/activate
source script.sh
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

Things might start going south.

```
killall podman
```
