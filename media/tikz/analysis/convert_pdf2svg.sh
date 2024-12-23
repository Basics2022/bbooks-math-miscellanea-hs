#!/bin/bash

for f in *.pdf; do
    base_name="${f%.pdf}"
    output_file="${base_name}.svg"
    pdf2svg "$f" "$output_file"
done
