#!/bin/sh

rm files/output.mp4
python ivideo.py
cd files
ffmpeg -framerate 20 -i %02d.jpeg -vf fps=20 -pix_fmt yuv420p output.mp4

