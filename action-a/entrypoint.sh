#!/bin/sh -l

sh -c "echo $*"
chmod +x action-a/entrypoint.sh

git clone https://github.com/ashah8/hello-world-actions.git
cd hello-world-actions
git checkout first-action
chmod +x action-a/entrypoint.sh
git add action-a/entrypoint.sh
git commit -m "make entrypoint script executable"
git push
