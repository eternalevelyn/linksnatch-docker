# linksnatch-docker
A docker setup repository for [Linksnatch](https://github.com/amitmerchant1990/linksnatch). Pretty simple to run.
## Automatic Installation
Just chmod the script/run it (on Linux) or run the batch file (on Windows).

```sudo chmod +x install.sh && install.sh```

or

```install.bat```
## Manual installation
This is a bit more complicated. This would be the manual install path, if the previous scripts didn't work.

```
docker build . -t linksnatch:latest # this builds the container image from scratch
docker-compose up -d # this runs the container
```
