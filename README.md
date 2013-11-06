# freshbooks-cli-task 
[![Build Status](https://secure.travis-ci.org/logankoester/freshbooks-cli-task.png?branch=master)](http://travis-ci.org/logankoester/freshbooks-cli-task)

> A command-line interface for interacting with Freshbooks Tasks

## Overview

[freshbooks-cli](https://github.com/logankoester/freshbooks-cli) is a
command-line interface to the [FreshBooks](http://freshbooks.com/) API.

`freshbooks-cli-task` implements the `task` subcommand for
[freshbooks-cli](https://github.com/logankoester/freshbooks-cli).


## Usage

    --list, -l - Display the full list of tasks
    --help, -h - Display this message


## Examples

    # Executing task with no options
    $ freshbooks-task


## Contributing

The test suite is implemented with
[nodeunit](https://github.com/caolan/nodeunit) and
[nixt](https://github.com/vesln/nixt).

To rebuild & run the tests

    $ git clone https://github.com/logankoester/freshbooks-cli-task.git
    $ cd freshbooks-cli-task
    $ npm install
    $ grunt test

You can use `grunt watch` to automatically rebuild and run the test suite when
files are changed.

Use `npm link` from the project directory to tell `freshbooks-cli` to use
your modified `freshbooks-cli-task` during development.

To contribute back, fork the repo and open a pull request with your changes.


## License

Copyright (c) 2013 Logan Koester
Licensed under the MIT license.


