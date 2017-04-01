var sys = require('sys')
var exec = require('child_process').exec;

function puts(error, stdout, stderr) { sys.puts(stdout) }

function espeak(phrase) {
  console.log(phrase)
}

exec("echo hi | espeak", puts);
espeak('hello')
