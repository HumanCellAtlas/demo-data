#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'Please supply your staging credentials'
    exit 0
fi

creds=$1

files="ERR1631056.fastq.gz ERR1631057.fastq.gz ERR1631058.fastq.gz ERR1631059.fastq.gz ERR1631060.fastq.gz ERR1631061.fastq.gz ERR1630117.fastq.gz ERR1631062.fastq.gz ERR1631063.fastq.gz ERR1631064.fastq.gz ERR1631065.fastq.gz ERR1631066.fastq.gz ERR1631067.fastq.gz ERR1631068.fastq.gz ERR1631069.fastq.gz ERR1631070.fastq.gz ERR1631071.fastq.gz ERR1630118.fastq.gz ERR1631072.fastq.gz ERR1631073.fastq.gz ERR1631074.fastq.gz ERR1631075.fastq.gz ERR1631076.fastq.gz ERR1631077.fastq.gz ERR1631078.fastq.gz ERR1631079.fastq.gz ERR1631080.fastq.gz ERR1631081.fastq.gz ERR1630119.fastq.gz ERR1631082.fastq.gz ERR1631083.fastq.gz ERR1631084.fastq.gz ERR1631085.fastq.gz ERR1631086.fastq.gz ERR1631087.fastq.gz ERR1631088.fastq.gz ERR1631089.fastq.gz ERR1631090.fastq.gz ERR1631091.fastq.gz ERR1630120.fastq.gz ERR1631092.fastq.gz ERR1631093.fastq.gz ERR1631094.fastq.gz ERR1631095.fastq.gz ERR1631096.fastq.gz ERR1631097.fastq.gz ERR1631098.fastq.gz ERR1631099.fastq.gz ERR1631100.fastq.gz"


for file in $files ; do
    stage_file.py -t $file input_file.txt $creds
done
