# Unit Tests

## Philosophy
- Test the intended API of individual units.
- Do not test the implementation details.

## Structure
- The `res://tests/unit/` directory structure should mimic the main directory structure.

## Requirements
- `addons/gut`

## Run
`godot -s addons/gut/gut_cmdln.gd --path $PWD -gexit -gdir=res://test/unit -glog=2`
