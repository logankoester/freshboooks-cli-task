nixt = require 'nixt'

showHelp = (result) ->
  if !(result.stdout.match(/--help/))
    return new Error('--help should be mentioned')

exports.group =

  'No options': (test) ->
    test.doesNotThrow ->
      nixt()
        .expect(showHelp)
        .run('bin/freshbooks-task')
        .code(0)
        .end(test.done)

  '--help': (test) ->
    test.doesNotThrow ->
      nixt()
        .expect(showHelp)
        .run('bin/freshbooks-task --help')
        .code(0)
        .end(test.done)

  '--list': (test) ->
    test.doesNotThrow ->
      nixt()
        .expect (result) ->
          if !(result.stdout.match(/Simulated task/))
            return new Error('Simulated task should be listed')
        .run('freshbooks_config=tests/config_file bin/freshbooks-task --list')
        .code(0)
        .end(test.done)
