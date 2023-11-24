#!/bin/bash

current_date_time=$(date)

cp ~/.config .
git add .
git commit -m "config of: $current_date_time"
git push --force
