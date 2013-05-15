#!/bin/bash

cd $"$1"
git log -1 --format="%h"
