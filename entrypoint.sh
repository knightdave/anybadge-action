#!/bin/bash -l
set -e

declare -a options

echo "pwd: $(pwd)"
echo "id: $(id)"

if [[ ${INPUT_FILE} != "" ]]; then options+=(--file="${INPUT_FILE}") ; fi
if [[ ${INPUT_LABEL} != "" ]]; then options+=(--label="${INPUT_LABEL}") ; fi
if [[ ${INPUT_VALUE} != "" ]]; then options+=(--value="${INPUT_VALUE}") ; fi
if [[ ${INPUT_VALUE-FORMAT} != "" ]]; then options+=(--value-format="${INPUT_VALUE-FORMAT}") ; fi
if [[ ${INPUT_COLOR} != "" ]]; then options+=(--color="${INPUT_COLOR}") ; fi
if [[ ${INPUT_PREFIX} != "" ]]; then options+=(--prefix="${INPUT_PREFIX}") ; fi
if [[ ${INPUT_PADDING} != "" ]]; then options+=(--padding="${INPUT_PADDING}") ; fi
if [[ ${INPUT_LABEL-PADDING} != "" ]]; then options+=(--label-padding="${INPUT_LABEL-PADDING}") ; fi
if [[ ${INPUT_VALUE-PADDING} != "" ]]; then options+=(--value-padding="${INPUT_VALUE-PADDING}") ; fi
if [[ ${INPUT_FONT} != "" ]]; then options+=(--font="${INPUT_FONT}") ; fi
if [[ ${INPUT_FONT-SIZE} != "" ]]; then options+=(--font-size="${INPUT_FONT-SIZE}") ; fi
if [[ ${INPUT_TEMPLATE} != "" ]]; then options+=(--template="${INPUT_TEMPLATE}") ; fi
if [[ ${INPUT_USE-MAX} != "" ]]; then options+=(--use-max="${INPUT_USE-MAX}") ; fi
if [[ ${INPUT_OVERWRITE} == true ]]; then options+=(--overwrite) ; fi
if [[ ${INPUT_TEXT-COLOR} != "" ]]; then options+=(--text-color="${INPUT_TEXT-COLOR}") ; fi

echo "anybadge ${options[@]} ${INPUT_ARGS}"

anybadge "${options[@]}" "${INPUT_ARGS}"
