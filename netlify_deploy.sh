#!/bin/bash
# netlify_deploy.sh
# Usage: ./netlify_deploy.sh
echo "Make sure netlify-cli is installed and you're logged in (netlify login)."
echo "Running: netlify deploy --prod --dir=."
netlify deploy --prod --dir=.
