s.quit;
s.boot;
/*(
  "Hello World!".postln;
  "Hi".postSln;
)*/

{ SinOsc.ar(200, 0, 0.5) }.play;
s.volume;


s.volume = 0;

s.volume = -10;

s.meter;  // Opens level meter window


(
// Boot server if needed
if(s.serverRunning.not, { s.boot; s.sync });

// Wait a moment, then test
fork {
    1.wait;
    "Testing audio...".postln;

    // Play a very obvious sound
    x = { Saw.ar([220, 221], 0.5) }.play;

    2.wait;
    x.free;

    "Test complete - did you hear it?".postln;
}
)

s.options.device;