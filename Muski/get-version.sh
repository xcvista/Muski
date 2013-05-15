#!/bin/bash
cd $1
pwd > /dev/stderr
git log -1 --format="%h"