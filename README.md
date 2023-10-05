# Docker environment for Quantizing LLaMA models with llama.cpp

This is the Docker image and corresponding environment that I use for quantization of LLaMA models using `llama.cpp`.

Simply download your desired model, bind it to a container, and run your desired quantization algorithm.

(This project defaults to the 7B LLaMA model and the 4-bit integer quantization with k-quant 0.)

## Download the model

> If you have already downloaded the model, or have downloaded a model with a different name, simply adjust the path in `PATH_TO_MODEL`.

To download the 7B LLaMA model you can use `download_7b.sh`. This requires your Hugging Face username and an access token for authorization to download the model.

For this, create a file named `USERNAME` containing your username and a file named `HUGGING_FACE_API_KEY` containing your access token.

(The download will take a while, and it might seem like you get stuck at `Filtering content: 66% (2/3)`, but it is still downloading then, so have patience.)

## Using the container

Build the image with `build.sh` and run a container with `run.sh`.

## 4-bit integer quantization with k-quant 0

In the container, run `q4_0.sh` to quantize your model.
