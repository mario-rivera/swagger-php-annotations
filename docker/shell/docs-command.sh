#!/bin/bash

## check composer dependencies are installed
if [ ! -d "$(pwd)/vendor" ]; then
    echo "Composer dependencies missing. Please run composer install."
    exit 0
fi

# if [[ $(composer show 2>&1) == *"No dependencies installed"* ]]; then
#     echo "Composer dependencies missing. Please run composer install."
#     exit 0
# fi

if [ ! -d $YAML_TARGETDIR ]; then
    mkdir -p $YAML_TARGETDIR
    chmod 777 $YAML_TARGETDIR
fi

echo "Generating open api file..."
vendor/bin/openapi --debug --output $YAML_TARGET $PROJECT_PATH