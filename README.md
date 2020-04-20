# docker-ddh

A lightweight Docker image for [`darakian/ddh`](https://github.com/darakian/ddh), a fast duplicate file finder.

```
docker pull mrsaints/ddh
docker run --rm \
    -v "$(pwd):/target/:ro" \
    -v "$(pwd)/results/:/results/" \
    mrsaints/ddh \
    ddh . --output /results/results_1.txt
```

_Mount the files / directories you want to check to `/target/`, and optionally set `:ro` for extra safety._
