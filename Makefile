export SHELL := /bin/bash
export TAG := TEST

.PHONY: all
all: gpu-tf-torch-cuda

.PHONY: gpu-tf-torch-cuda
gpu-tf-torch-cuda:
	docker build --no-cache -t gpu-tf-torch-cuda:$(TAG) -f Dockerfile .

#------------------------------- RUN TARGETS ----------------------------------------------------------------------

.PHONY: run-gpu-tf-torch-cuda
run-gpu-tf-torch-cuda:
	docker run -it gpu-tf-torch-cuda:$(TAG) /bin/bash

.PHONY: run-gpu-tf-torch-cuda-test
run-gpu-tf-torch-cuda-test:
	docker run -i gpu-tf-torch-cuda:$(TAG) bash < test.sh

