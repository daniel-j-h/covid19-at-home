# Covid19@Home

Adapted from https://github.com/stefancrain/folding-at-home for my 6x GTX 1080 TI GPU rig

![](./danipod.jpg)


```
docker run --rm --entrypoint="/usr/bin/FAHClient" danieljh/covid19-at-home --help

docker run 
  -p 7396:7396 \
  danieljh/covid19-at-home:latest \
  --user=YOUR_NAME_HERE \
  --team=245416 \
  --power=full \
  --gpu-usage=100
```

I manually built and pushed the image once

```
docker build -t danieljh/covid19-at-home -f ./build/Dockerfile ./build
docker push danieljh/covid19-at-home
```

https://hub.docker.com/r/danieljh/covid19-at-home/tags
