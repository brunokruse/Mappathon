## Mappathon Examples
Some examples on how to get Syphon+MadMapper talking together in OSX.

### Processing
1. Make sure to have MadMapper and processing 2.0b8 installed.
2. Download the Syphon processing library from here: http://bit.ly/10WhdYq
3. Unzip and copy the 'Syphon' folder to your Documents -> Processing -> Libraries folder. (where you have your Processing sketches)
4. Download the Processing example above and copy to your Documents -> Processing folder as well.
5. Run the sketch and view the Syphon output in MadMapper.

<pre>

// you must call beginDraw() to render to the server
canvas.beginDraw();

// all drawing calls are part of the PGraphics context
canvas.background(255);
canvas.stroke(0);
canvas.fill(175);
canvas.ellipse(x,y,32,32);

// it's necessary to end the renderer with endDraw()
canvas.endDraw();
// draw the buffer in your processing window
image(canvas, 0, 0);
//send the buffer via syphon
server.sendImage(canvas);

</pre>


### openFrameworks
<pre>



</pre>

### Max+Jitter
<pre>
coming soon!
</pre>
