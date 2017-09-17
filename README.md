# Docker Minidlna (for ARM)

Simple docker container to run a MiniDLNA server.

## Usage

```
docker run -d --name minidlna
       --net host
       -v /mnt/EXTERNALHDD:/mymedia
       -e "MINIDLNA_FRIENDLY_NAME=My DLNA server"
       -e "MINIDLNA_MEDIA_DIR=V,/mymedia"
       -e "MINIDLNA_ROOT_CONTAINER=B"
       fmartingr/minidlna-arm
```
