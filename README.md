# Audiowaveform Docker Compiler
Compile [audiowaveform](https://github.com/bbc/audiowaveform) using docker

## Usage

```sh
git clone https://github.com/ClementD64/audiowaveform-docker-compiler.git
cd audiowaveform-docker-compiler
sh build.sh
```

It will create a docker image, build audiowaveform, copy it in your current directory and destroy the image