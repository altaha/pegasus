#!/bin/bash

# Some useful colors.
if [[ -z "${color_start-}" ]]; then
  declare -r color_start="\033["
  declare -r color_red="${color_start}0;31m"
  declare -r color_green="${color_start}0;32m"
  declare -r color_yellow="${color_start}0;33m"
  declare -r color_blue="${color_start}0;34m"
  declare -r color_magenta="${color_start}0;35m"
  declare -r color_teal="${color_start}0;36m"
  declare -r color_white="${color_start}0;37m"
  declare -r color_norm="${color_start}0m"
fi
