# minidnla in docker

This is minidlna on top of alpine linux.


The package contains various modifications to the original alpine minidlna package:
* buildt using --enable-netgear to disable extracting metadata form video files
* patch allowing custom icons in minidlna.conf
* increased albumart-size to 512px
* unescape &#39; in Search queries to "'"
## Usage

```
docker run -d --net=host \
	-v <config dir on host>:/config \
	-v <media dir on host>:/opt derflocki/docker-minidlna
```

