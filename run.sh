docker run \
       -it \
       --rm \
       -v $(cat PATH_TO_MODEL):/llama-model \
       quantize-llama
