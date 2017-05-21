# Javascript

# Sphero

> The official Orbotix JavaScript SDK module to programmatically control Sphero robots [Sphero](https://www.npmjs.com/package/sphero)


```sh
root@edison:~# nano sphero01.js
```

```js
var sphero = require("sphero"),
    orb = sphero("/dev/rfcomm0"); // change port accordingly 
 
orb.connect(function() {
  orb.roll(150, 0);
  orb.color("green");
  orb.detectCollisions();
  orb.on("collision", function(data) {
    console.log("collision detected");
    console.log("  data:", data);
 
    orb.color("red");
 
    setTimeout(function() {
      orb.color("green");
    }, 100);
  });
});                                                                             
```

```sh
root@edison:~# node sphero01.js
root@edison:~# node sphero01.js                                                 
collision detected                                                              
  data: { desc: 'Collision detected',                                           
  idCode: 7,                                                                    
  event: 'collision',                                                           
  did: 2,                                                                       
  cid: 18,                                                                      
  packet:                                                                       
   { sop1: 255,                                                                 
     sop2: 254,                                                                 
     idCode: 7,                                                                 
     dlenMsb: 0,                                                                
     dlenLsb: 17,                                                               
     dlen: 17,                                                                  
     data: <Buffer 0a 1d fd 38 00 00 01 00 5b 00 18 4c 00 07 e6 a1>,            
     checksum: 61 },                                                            
  x: 2589,                                                                      
  y: 64824,                                                                     
  z: 0,                                                                         
  axis: 1,                                                                      
  xMagnitude: 91,                                                               
  yMagnitude: 24,                                                               

```