# Activator docker image

Full scala, sbt, activator stack tailored to be used as handy development docker image.

## Usage

Add to your `bashrc` or `zshrc`:

```bash
# Tailor `-u $UID:GID` directive if it does not work for you
alias _devdocker="docker run -it --rm $(pwd):$(pwd) -w $(pwd) -e HOME=/tmp -u $UID:GID"

alias activator="_devdocker waterlink/activator activator"
alias activator-ui="_devdocker -p 8000:8000 waterlink/activator activator ui"

alias sbt="_devdocker waterlink/activator sbt"
# .. an so on ..
```

And use it like:

```bash
activator-ui # runs activator ui on localhost:8000 (or $(docker-machine ip dev):8000)
activator new <template>  # new project
# .. and so on ..
```
