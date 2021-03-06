path = require 'path'
nopt = require 'nopt'
conf = require('freshbooks-cli-config').getConf()
exec = require('child_process').exec

displayHelp = ->
  manpage = path.join(__dirname, 'man', 'freshbooks-task.1')
  cmd = "man --local-file #{manpage}"
  exec cmd, (err, stdout, stderr) ->
    process.stdout.write "#{stdout}"
    process.stderr.write "#{stderr}"
    console.error err if err

getFreshbooks = ->
  if conf.get 'simulate'
    Freshbooks = require './lib/mock_freshbooks'
  else
    Freshbooks = require 'freshbooks'
  base_uri = "#{conf.get('api:url')}/#{conf.get('api:version')}/xml-in"
  return new Freshbooks base_uri, conf.get('api:token')

parsedOptions = nopt
  list: Boolean
  help: Boolean
,
  l: ['--list']
  h: ['--help']
, process.argv, 2

if parsedOptions.help
  displayHelp()

else if parsedOptions.list

  list = require './lib/list'
  list.get getFreshbooks(), (err, projects) ->
    console.error if err
    console.log list.formatters.table(projects)

else
  displayHelp()
