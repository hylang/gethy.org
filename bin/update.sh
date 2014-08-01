#!/bin/bash
set -e

HOST=lucifer.pault.ag

function run {
    ssh -q -t ${HOST} $@
}

run git -C /home/tag/projects/gethy.org/ pull
run docker build --rm -t paultag/gethy.org /home/tag/projects/gethy.org/
run sudo service gethy.org stop
run docker rm gethy.org
run sudo service gethy.org start
