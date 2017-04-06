#!/bin/bash

echo "["$(df -h | grep sda1 | awk '{ print $5 }')"]"
