#!/bin/bash
echo "Deploying command '$@'..."

for HOST in moore{00..24} sslab{00..24} borg{00.24} xinu{00..21} sac{01..13} pod{1..5}-{1..5} pod0-0 mc{01..18} escher{00..23}; do
    echo $HOST
    echo "nohup $@ >/dev/null 2>&1 & exit" | ssh -o StrictHostKeyChecking=no etemplin@${HOST}.cs.purdue.edu >>/tmp/deploy_etemplin 2>&1 &
done

echo "Done."
