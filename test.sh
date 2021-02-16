#!/usr/bin/env bash

nvidia-smi

python3 tf-test.py

python3 torch-test.py

