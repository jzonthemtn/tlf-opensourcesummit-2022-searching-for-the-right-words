#!/bin/bash

python3 -m transformers.onnx --model=nlptown/bert-base-multilingual-uncased-sentiment --feature sequence-classification docker/model/
