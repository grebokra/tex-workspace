#!/bin/bash

docker build . -t texw:latest && docker volume create miktex
