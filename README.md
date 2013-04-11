## Mappathon Examples
Some examples on how to get Syphon+MadMapper talking together in OSX.

### Processing
1. Make sure to have MadMapper and processing 2.0b8 installed.
2. Download the Syphon processing library from here: http://bit.ly/10WhdYq
3. Unzip and copy the 'Syphon' folder to your Documents -> Processing -> Libraries folder. (where you have your Processing sketches)
4. Download the Processing example above and copy to your Documents -> Processing folder as well.
5. Run the examples and view the Syphon output in MadMapper.


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

Anything drawn between the <pre>canvas.beginDraw();</pre> and canvas.endDraw(); will be outputted to Syphon. Remember to use server.sendImage(canvas) at the end of your sketch to send.

When trying to port over more complicated sketches a few things to remember are to include the 'canvas.' prefix when drawing.

A quick hack can be to use a PImage to capture the screen and use that as your canvas when you 

<pre>

</pre>


### openFrameworks
1. Clone the ofxSyphon addon into your addons folder. 

<pre>
cd openFrameworks/addons/
git clone https://github.com/astellato/ofxSyphon
</pre>

2. Copy the emptySyphonExample from the openFrameworks folder to your apps directory
3. Make sure you place the example one level deep... for example:

<pre>
openFrameworks->apps->mappathonExamples->emptySyphonExample
</pre>


### Max+Jitter
Make sure you are using the latest version of Max 6.1

1. Download the Max6 Syphon objects from: http://bit.ly/ZLnY5n
2. Install the objects in your Cycling '74 directory (you can make a new folder for this)
<pre>
Applications -> Cycling '74 -> Your Folder
</pre>
3. Run the examples from above.
