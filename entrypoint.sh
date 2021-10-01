#!/bin/bash
set -e

declare -a options

if [[ ${INPUT_FILE} != "" ]]; then options+=(--file="${INPUT_FILE}") ; fi
if [[ ${INPUT_LABEL} != "" ]]; then options+=(--label="${INPUT_LABEL}") ; fi
if [[ ${INPUT_VALUE} != "" ]]; then options+=(--value="${INPUT_VALUE}") ; fi
if [[ ${INPUT_VALUE_FORMAT} != "" ]]; then options+=(--value-format="${INPUT_VALUE_FORMAT}") ; fi
if [[ ${INPUT_COLOR} != "" ]]; then options+=(--color="${INPUT_COLOR}") ; fi
if [[ ${INPUT_PREFIX} != "" ]]; then options+=(--prefix="${INPUT_PREFIX}") ; fi
if [[ ${INPUT_PADDING} != "" ]]; then options+=(--padding="${INPUT_PADDING}") ; fi
if [[ ${INPUT_LABEL_PADDING} != "" ]]; then options+=(--label-padding="${INPUT_LABEL_PADDING}") ; fi
if [[ ${INPUT_VALUE_PADDING} != "" ]]; then options+=(--value-padding="${INPUT_VALUE_PADDING}") ; fi
if [[ ${INPUT_FONT} != "" ]]; then options+=(--font="${INPUT_FONT}") ; fi
if [[ ${INPUT_FONT_SIZE} != "" ]]; then options+=(--font-size="${INPUT_FONT_SIZE}") ; fi
if [[ ${INPUT_TEMPLATE} != "" ]]; then options+=(--template="${INPUT_TEMPLATE}") ; fi
if [[ ${INPUT_USE_MAX} != "" ]]; then options+=(--use-max="${INPUT_USE_MAX}") ; fi
if [[ ${INPUT_OVERWRITE} == true ]]; then options+=(--overwrite) ; fi
if [[ ${INPUT_TEXT_COLOR} != "" ]]; then options+=(--text-color="${INPUT_TEXT_COLOR}") ; fi


exec anybadge "${options[@]}" "${INPUT_ARGS}"
