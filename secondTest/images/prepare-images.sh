#!/bin/bash
# This script transforms EPS and TIF images to PDF. Useful for generating PDFTeX output files using EPS and TIF images.
echo "Starting image transformation for latex output."
echo
echo "Transforming EPS images to PDF..."
for file in ./*.eps
do
    epspdf $file
    echo $file " processed."
done
echo "Done."
echo
echo "Transforming TIF images to PDF..."
for file in ./*.tif
do
    filename=${file%.tif}
    convert $file ${filename}".pdf"
    echo $file " processed."
done
echo "Done."
