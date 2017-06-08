var espeak = require('espeak');
 
espeak.cmd = '/usr/bin/espeak'; 
 
espeak.speak('hello world', function(err, wav) {
  if (err) return console.error(err);
  
  var buffer = wav.buffer;
  
  var dataUri = wav.toDataUri();
});
 
espeak.speak('hello world, slower', ['-p 60', '-s 90', '-g 30'], function(err, wav) {});
 
