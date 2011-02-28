#!/bin/sh
mkdir -p iOERacer.app
cp projects/OEIphone/repo-data/* iOERacer.app/
cp -r projects/OEIphone/data/* iOERacer.app/
cp build/OEIphone/OEIphone iOERacer.app/iOERacer
