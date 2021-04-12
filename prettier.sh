#!/bin/bash

pret() {
    prettier $1 > .$1.tmp.html
    mv .$1.tmp.html $1
}

for i in `ls *.html`; do
    pret $i &
done
wait
