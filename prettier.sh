#!/bin/bash

for i in `ls *.html`; do
    prettier $i > .tmp.html
    mv .tmp.html $i
done
