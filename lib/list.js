(function() {
  exports.get = function(freshbooks, callback) {
    var task;
    this.freshbooks = freshbooks;
    task = new this.freshbooks.Task;
    return task.list(callback);
  };

  exports.formatters = {
    table: function(tasks) {
      var cliff, keys, list, _;
      _ = require('lodash');
      cliff = require('cliff');
      keys = ['task_id', 'rate', 'name', 'description'];
      list = _.map(tasks, function(task) {
        return [task.task_id, task.rate, task.name, task.description];
      });
      list.unshift(keys);
      return cliff.stringifyRows(list, ['blue', 'green', 'white', 'white']);
    }
  };

}).call(this);
