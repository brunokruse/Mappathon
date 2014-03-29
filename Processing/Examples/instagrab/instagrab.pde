import http.requests.*;

PImage webImg;

int savedTime;
int totalTime = 10000; // 30 seconds

public void setup() 
{
  size(640, 640);
  smooth();
  savedTime = millis();

  grabImages();
}

void draw() {
   int passedTime = millis() - savedTime;
  // Has five seconds passed?
  if (passedTime > totalTime) {
    println( " 10 seconds have passed! " );
    grabImages();
    savedTime = millis(); // Save the current time to restart the timer!
  }
} 

void grabImages() {
  //
  //GetRequest get = new GetRequest("https://api.instagram.com/v1/tags/eyebeamnyc/media/recent?callback=?&amp;client_id=d9eb6fe8ab9e49aa8de34e966b519366");
  GetRequest get = new GetRequest("https://api.instagram.com/v1/tags/eyebeamnyc/media/recent?callback=?&amp;client_id=a307c0d0dada4b77b974766d71b72e0e");

  get.send(); // program will wait untill the request is completed
  println("grabbing images");//

  JSONObject response = parseJSONObject(get.getContent());

  JSONArray data = response.getJSONArray("data");

  //for (int i=0;i<data.size();i++) {
    
    //JSONObject obj = data.getJSONObject(data.size()-1);
    JSONObject obj = data.getJSONObject(0);
  
    JSONObject images = obj.getJSONObject("images");
    
    JSONObject params = images.getJSONObject("standard_resolution");

    String url = params.getString("url");

    //for (int j=0;j<images.size();j++) {
      
      //JSONObject image = images.getJSONObject(j);
      //String[] url = ;
      println("url: " + url);
      
    //}
    webImg = loadImage(url, "png");
    image(webImg, 0, 0);
  //}
 
}
