# minidnla in docker

This is minidlna on top of alpine linux.

## Usage

```
docker run -d --net=host \
	-v <config dir on host>:/config \
	-v <media dir on host>:/opt derflocki/docker-minidlna
```

