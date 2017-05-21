# Javascript

# Sphero

> The official Orbotix JavaScript SDK module to programmatically control Sphero robots [Sphero](https://www.npmjs.com/package/sphero)


```sh

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