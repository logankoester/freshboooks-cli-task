exports.get = (@freshbooks, callback) ->
    task = new @freshbooks.Task
    task.list callback

exports.formatters =
  table: (tasks) ->
    _ = require 'lodash'
    cliff = require 'cliff'

    keys = [
      'task_id',
      'rate',
      'name',
      'description'
    ]

    list = _.map tasks, (task) ->
      [
        task.task_id,
        task.rate,
        task.name,
        task.description
      ]

    list.unshift(keys)

    cliff.stringifyRows list, [
      'blue',
      'green',
      'white',
      'white'
    ]
