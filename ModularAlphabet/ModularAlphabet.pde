import peasy.*;

PeasyCam cam;

LetterGenerator lg;
String input = "abcba";
PImage stars, sky;

void setup() {
  size(800, 600, P3D);
  cam = new PeasyCam(this, 600);
  
  stars = loadImage("https://upload.wikimedia.org/wikipedia/commons/6/62/Starsinthesky.jpg");
  sky = loadImage("https://pbblogassets.s3.amazonaws.com/uploads/2018/10/22074923/pink-sky-cover.jpg");

  lg = new LetterGenerator(input, 0, height/2);
  
}

void draw() {
  translate(-width/2, -height/2);

  background(127);
  lg.run(); 
}
