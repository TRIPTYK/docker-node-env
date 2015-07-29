#!/bin/bash
echo "Dumping mongo server this website"
mongodump -h $(docker-machine ip dev) --out ./dump
