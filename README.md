# Linux Foundation Open Source Summit

This repository contains some of the code for the presentation "Searching for the Right Words" at the Linux Foundation Open Source Summit 2022 in Austin, TX. The other code is contained in my Lucene and Solr forks. After building all of those projects in order, this repository can be used to build a Solr container to utilize an ONNX model for document classification during indexing.

This repository was adapted from [solr-tmdb](https://github.com/o19s/solr-tmdb) for the ease of having a Solr container with data to index.

## Abstract

[Searching for the Right Words: Bringing NLP to Apache solr through ONNX and OpenNLP](https://sched.co/11Nq2)

Natural language processing capabilities have exploded in the past few years, with most of the work done in Python. The ONNX Runtime provides a means for using deep learning models across programming languages, architectures, and platforms, promising to further democratize advancements in machine learning. With the ONNX Runtime, developers no longer have to rely on remote services to access NLP services created in other languages. In this session we will show how a deep learning model trained using PyTorch or Tensorfow can be used for inference from a Java search stack of Apache OpenNLP, Apache Lucene, and Apache Solr. We will demonstrate how these state-of-the-art NLP capabilities can be realized in Apache Solr to offer search users a more impactful search experience. We will discuss the challenges, the relationships between OpenNLP, Lucene, and Solr, and how attendees can get started in these open source projects.

## Usage

Build the Solr 9.0.0-SNAPSHOT Docker image from the [opennlp-onnx](https://github.com/jzonthemtn/solr/tree/opennlp-onnx) branch of my Solr fork. (This image is referenced by the `docker-compose.yml` file in this repository.)

Install the dependencies in `requirements.txt`. Then, run the `export.sh` script to take a sequence classification model from the Huggingface Hub and export it to ONNX. The exported model will be written to the `onnx` directory.

Next, run the `run.sh` script to build the Docker image and run it using `docker-compose`. This will start a Solr container containing the OpenNLP 2.0 with ONNX integration and configuration.

Run the `index.sh` script to index documents into the `tmdb` index.

During the indexing, each movie description will be processed using the OpenNLP document categorizer. Each document will have a `classification` field that indicates the model's predicted category.

## License

This project is licensed under the Apache License, version 2.
