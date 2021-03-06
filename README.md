# FreshBooks: CLI Task 
> A command-line interface for interacting with Freshbooks Tasks

[![Build Status](http://ci.ldk.io/logankoester/freshboooks-cli-task/badge)](http://ci.ldk.io/logankoester/freshboooks-cli-task)
[![status](https://sourcegraph.com/api/repos/github.com/logankoester/freshboooks-cli-task/badges/status.png)](https://sourcegraph.com/github.com/logankoester/freshboooks-cli-task)
[![Gittip](http://img.shields.io/gittip/logankoester.png)](https://www.gittip.com/logankoester/)


## Overview

[freshbooks-cli](https://github.com/logankoester/freshbooks-cli) is a
command-line interface to the [FreshBooks](http://freshbooks.com/) API.

`freshbooks-cli-task` implements the `task` subcommand for
[freshbooks-cli](https://github.com/logankoester/freshbooks-cli).


## Usage

    --list, -l - Display the full list of tasks
    --help, -h - Display this message


## Examples

    # Displaying the full list of tasks
    $ freshbooks-task --list
    task_id rate  name           description                 
    1       99.99 Simulated task A task generated by nodemock


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


[![xrefs](https://sourcegraph.com/api/repos/github.com/logankoester/freshboooks-cli-task/badges/xrefs.png)](https://sourcegraph.com/github.com/logankoester/freshboooks-cli-task)
[![funcs](https://sourcegraph.com/api/repos/github.com/logankoester/freshboooks-cli-task/badges/funcs.png)](https://sourcegraph.com/github.com/logankoester/freshboooks-cli-task)
[![top func](https://sourcegraph.com/api/repos/github.com/logankoester/freshboooks-cli-task/badges/top-func.png)](https://sourcegraph.com/github.com/logankoester/freshboooks-cli-task)
[![library users](https://sourcegraph.com/api/repos/github.com/logankoester/freshboooks-cli-task/badges/library-users.png)](https://sourcegraph.com/github.com/logankoester/freshboooks-cli-task)
[![authors](https://sourcegraph.com/api/repos/github.com/logankoester/freshboooks-cli-task/badges/authors.png)](https://sourcegraph.com/github.com/logankoester/freshboooks-cli-task)
[![Total views](https://sourcegraph.com/api/repos/github.com/logankoester/freshboooks-cli-task/counters/views.png)](https://sourcegraph.com/github.com/logankoester/freshboooks-cli-task)
[![Views in the last 24 hours](https://sourcegraph.com/api/repos/github.com/logankoester/freshboooks-cli-task/counters/views-24h.png)](https://sourcegraph.com/github.com/logankoester/freshboooks-cli-task)


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/logankoester/freshboooks-cli-task/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

