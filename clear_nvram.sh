#!/bin/sh
# This script clears any empty variable in nvram to free some spaces.
echo Clear NVRAM...
for line in `nvram show | grep ^[^=]*=$ `; do var=${line%*=}; nvram unset $var; done; nvram commit
