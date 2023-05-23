#!/bin/sh
# This script clears any empty variable from nvram to free some spaces.
for line in `nvram show | grep ^[^=]*=$ `; do var=${line%*=}; nvram unset $var; done; nvram commit
