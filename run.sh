#!/bin/bash
docker-compose up -d elasticsearch
docker-compose up -d postgres
docker-compose up --build  mysite
