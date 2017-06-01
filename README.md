# minidnla in docker

This is minidlna on top of alpine linux.

## Usage

Prefix any config directive of minidlna with `MINIDLNA_`
and run your container:

```
docker run -d --net=host \
	-v <config dir on host>:/config \
	-v <media dir on host>:/opt derflocki/minidlna
```

See: http://manpages.ubuntu.com/manpages/raring/man5/minidlna.conf.5.html

Let me know if you figure out how to run it without `--het=host`.
