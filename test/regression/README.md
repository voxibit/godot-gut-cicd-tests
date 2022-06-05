# Regression Tests

## Philosophy
- When a bug is discovered, create a test that fails because of the bug, but 
passes once the bug is fixed

## Structure
- The `res://tests/regression/` directory structure should contain one directory for each test
- Include links to issues, PRs, and description of the bug and what caused it in a README.md

## Requirements
- `addons/gut`

## Run
`godot -s addons/gut/gut_cmdln.gd --path $PWD -gexit -gdir=res://test/regression -glog=2`
