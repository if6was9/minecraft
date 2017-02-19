# minecraft



## Running

To run daemonized:

```
$ docker run -d if6was9/minecraft
```

If you want to run interactively:

```
$ docker run -it if6was9/minecraft
```

## Persistent Data

You might want to store your minecraft world outside the container.

```
$ docker run -d -v <myhostdir>:/minecraft/data if6was9/minecraft	
```

