#/!bin/bash

# add launch path of the theme
# relative path
THEME_PATH="/themes/theme1/launch.sh"

COMPLETE_PATH="$(dirname $0)${THEME_PATH}"

sh $COMPLETE_PATH


