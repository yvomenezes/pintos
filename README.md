# PintOS Project

This repo contains our implementation of the [ PintOS Project ]( https://www.scs.stanford.edu/10wi-cs140/pintos/pintos_1.html ).
Our first goal is to setup a docker image to simplify the environment setup.
Then, complete the project.

## Quick Start

Follow these steps to setup the pintOS's environment and build the code:

1. Create and run the container:

```bash 
docker build . -t ubuntu:pintos
docker run -v ./src/:/home/dickers/pintos/src/ -it --name ubuntu ubuntu:pintos bash
```

On the container `pintos` created, the user `dickers` has password `dickers`.

The next steps should be eventually automated with docker.

2. Skipping bochs instalation... Hopefully not important

3. Add `utils/` commands to `$PATH`:

```bash
echo "export PATH='$HOME/pintos/src/utils:\$PATH'" >> ~/.bashrc
source ~/.bashrc
```

Check that `backtrace` is on path:

```bash
backtrace --help
```

4. Install `src/misc/gdb-macros`

```bash
cd ~/pintos/src/misc
sudo chmod +x gdb-macros
echo "export PATH='$HOME/pintos/src/misc/gdb-macros:\$PATH'" >> ~/.bashrc
source ~/.bashrc
```

Test the instalation by running:

```bash
pintos-gdb
```

If it does not complain about missing `gdb-macros`, the instalation was successfull.

