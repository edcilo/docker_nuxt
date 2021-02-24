#!/bin/sh
set -e

echo $(date '+%F %T.%3N %Z') "[nuxt] INFO: running start.sh"

env=${NUXT_ENV:-development}
app_path=/code
app_name=${APP_NAME:-app}

yarn --cwd "$app_path/$app_name" install

if [ $env = "prod" ] || [ $env = "production" ]
then
    echo $(date '+%F %T.%3N %Z') "[nuxt] INFO: building project"
    yarn --cwd "$app_path/$app_name" build
    yarn --cwd "$app_path/$app_name" generate
    echo $(date '+%F %T.%3N %Z') "[nuxt] INFO: starting production server"
    yarn --cwd "$app_path/$app_name" start
elif [ $env = "dev" ] || [ $env = "development" ]
then
    echo $(date '+%F %T.%3N %Z') "[nuxt] INFO: starting development server"
    yarn --cwd "$app_path/$app_name" dev
fi

exit 1
