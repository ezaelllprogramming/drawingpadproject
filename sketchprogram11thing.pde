color white = #FFFFFF;
color black = #000000;
color grey = #555555;
color penColor = black;
float sliderY;
float thickness = 1;
int tool = 1;

PImage batman;

void setup() {
  size(800, 600);
  background(grey);
  sliderY = 350;
  batman = loadImage("Batman-PNG-HD.png");
  imageMode(CENTER);
}

void draw() {
   thickness = map(sliderY,300,400,50,1);
  

  if (mousePressed) {
      if (dist(50, sliderY, mouseX, mouseY) < 25) {
        sliderY = mouseY;
        if (sliderY > 400) sliderY = 400;
        if (sliderY < 300) sliderY = 300;
        
      }
  }
  
  if (mousePressed && mouseX > 100) {
    if (tool == 0) {
     stroke(penColor);
     strokeWeight(thickness);
     line(pmouseX, pmouseY, mouseX, mouseY);
    }   
    if (tool == 1) {
     image(batman, mouseX, mouseY, thickness*10,thickness*10);
    }
  }
  
  strokeWeight(1);
  stroke(black);
  fill(150);
  rect(0,0,100,600);
  
  fill(white);
  ellipse(50,50,25,25);
  
  fill(black);
  ellipse(50,80,25,25);
  
  line(50,300,50,400);
  ellipse(50,sliderY,25,25);
  
  image(batman, 50, 450, 50, 50);
  
}  

void mouseReleased() {
  if (dist(50,50, mouseX, mouseY) < 10) {
    penColor = white;
    tool = 0;
  }
  if (dist(50,80, mouseX, mouseY) < 10) {
    penColor = black;
    tool = 0;
  }
  if (dist(50,450,mouseX,mouseY) < 35) {
    tool = 1;
  }
  // if (dist(130, 70, mouseX,mouseY) <= 50) {
  //  mode = batman;
  //}
  if (mouseX > 10 && mouseX < 60 && mouseY > 520 && mouseY < 545) {
  selectInput("PICK DA FILE, BRO <3", "openImage");
  }
  if (mouseX > 10 && mouseX < 60 && mouseY > 550 && mouseY < 575) {
  selectOutput("Save as...", "saveImage");
  }
}

void saveImage(File f) {
  if (f != null) {
    PImage canvas = get(   71, 1, width-71, height-1);
    canvas.save(f.getAbsolutePath());
  }
}

void openImage(File f) {
  if (f != null) {
    int n = 0;
    while (n < 20) {
      PImage pic = loadImage(f.getAbsolutePath());
       image(pic, width/2, height/2, 300, 300);
       n = n + 1;
    } 
  }
}
    
