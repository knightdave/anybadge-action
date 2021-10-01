# anybadge-action
Action for generating badges for your projects based on [anybadge](https://github.com/jongracecox/anybadge)

It runs badge creation offline wihout calls to extenal badge services.

<!-- BEGIN_ACTION_DOC -->
# Anybadge Action

### Description
A Github Action that generates badge for you project using anybadge.

### Action Type
Docker

### Author
knightdave

### Inputs
* `file`:

  _Description_: Output file location

  _Required_: `true`

  _Default_: `badge.svg`

* `label`:

  _Description_: The badge label

  _Required_: `false`

  _Default_: `""`

* `value`:

  _Description_: The badge value

  _Required_: `false`

  _Default_: `""`

* `value_format`:

  _Description_: Formatting string for value (e.g. "%.2f" for 2dp floats)

  _Required_: `false`

  _Default_: `""`

* `color`:

  _Description_: For fixed color badges use `colorto` specify the badge color

  _Required_: `false`

  _Default_: `""`

* `prefix`:

  _Description_: Optional prefix for value

  _Required_: `false`

  _Default_: `""`

* `padding`:

  _Description_: Number of characters to pad on either side of the badge text

  _Required_: `false`

  _Default_: `""`

* `label_padding`:

  _Description_: Number of characters to pad on either side of the badge label

  _Required_: `false`

  _Default_: `""`

* `value_padding`:

  _Description_: Number of characters to pad on either side of the badge value

  _Required_: `false`

  _Default_: `""`

* `font`:

  _Description_: Supported fonts "Arial, Helvetica, sans-serif"

  _Required_: `false`

  _Default_: `""`

* `font_size`:

  _Description_: Font size

  _Required_: `false`

  _Default_: `""`

* `template`:

  _Description_: Location of alternative template .svg file

  _Required_: `false`

  _Default_: `""`

* `use_max`:

  _Description_: Use the maximum threshold color when the value exceeds the maximum threshold

  _Required_: `false`

  _Default_: `""`

* `overwrite`:

  _Description_: Overwrite output file if it already exists

  _Required_: `false`

  _Default_: `false`

* `text_color`:

  _Description_: Text color. Single value affects both labeland value colors. A comma separated pair affects label and value text respectively

  _Required_: `false`

  _Default_: `""`

* `args`:

  _Description_: Pairs of <upper>=<color>. For example 2=red 4=orange 6=yellow 8=good. Read this as "Less than 2 = red, less than 4 = orange...

  _Required_: `false`

  _Default_: `""`

### Outputs
None
<!-- END_ACTION_DOC -->
