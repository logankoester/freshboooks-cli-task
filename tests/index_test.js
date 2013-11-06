(function() {
  var nixt, showHelp;

  nixt = require('nixt');

  showHelp = function(result) {
    if (!(result.stdout.match(/--help/))) {
      return new Error('--help should be mentioned');
    }
  };

  exports.group = {
    'No options': function(test) {
      return test.doesNotThrow(function() {
        return nixt().expect(showHelp).run('bin/freshbooks-task').code(0).end(test.done);
      });
    },
    '--help': function(test) {
      return test.doesNotThrow(function() {
        return nixt().expect(showHelp).run('bin/freshbooks-task --help').code(0).end(test.done);
      });
    },
    '--list': function(test) {
      return test.doesNotThrow(function() {
        return nixt().expect(function(result) {
          if (!(result.stdout.match(/Simulated task/))) {
            return new Error('Simulated task should be listed');
          }
        }).run('freshbooks_config=tests/config_file bin/freshbooks-task --list').code(0).end(test.done);
      });
    }
  };

}).call(this);
