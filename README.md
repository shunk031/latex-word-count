# TeXcount with Docker Container

- Build the docker container image

```shell
docker build -t latex-word-count .
```

- Run the container

```shell
docker run --rm -it -v $(pwd):/workdir --name latex-word-count-dev latex-word-count main.tex
# 42
```
