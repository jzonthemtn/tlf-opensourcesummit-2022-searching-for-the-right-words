#!/bin/bash

python3 -m transformers.onnx --model=cardiffnlp/twitter-roberta-base-sentiment --feature sequence-classification onnx/
