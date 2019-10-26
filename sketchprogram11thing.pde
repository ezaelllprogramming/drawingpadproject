int x, y;
int red = 255;
int green = 255;
int blue = 255;
float sliderX;
float thickness;

void setup() {
  size(800, 600);
  sliderX = 50;
  thickness = 1;
}

void draw() {
  
  stroke(0);
  strokeWeight(thickness);
  if (mousePressed) {
      line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
  fill(255);
  stroke(0);
  strokeWeight(1);
  rect(0,0,width,100);
  line (50,50,150,50);
  ellipse(sliderX,50,20,20);
  
  if (mousePressed) {
      if (dist(sliderX, 50, mouseX, mouseY) < 100) {
         sliderX = mouseX;
         
         if (sliderX < 50) {
           sliderX = 50;
         }
         
          if (sliderX > 150) {
           sliderX = 150;
         }
      }
  }
  
  thickness = map(sliderX,50,150,1,20);

//  //x = y = 300;
//  //noFill();
//  //stroke(0);
//  //strokeWeight(4);
//  //textSize(30);

//  background(red, green, blue);
  
//  if (dist (400, 150, mouseX, mouseY) < 50) {
//    fill(255, 0, 0);
//  } else {
//    fill(100, 0, 0);
//  }
//  ellipse(400, 150, 100, 100);

//  if (dist (400, 300, mouseX, mouseY) < 50) {
//    fill(0, 255, 0);
//  } else {
//    fill(0, 100, 0);
//  }
//  ellipse(400, 300, 100, 100);
  
//   if (dist (400, 450, mouseX, mouseY) < 50) {
//    fill(0, 0, 255);
//  } else {
//    fill(0, 0, 100);
//  }
//  ellipse(400, 450, 100, 100);
//}
//void mouseReleased() {
  
//  if (dist(400, 150, mouseX, mouseY) < 50) {
//    red = 255;
//    green = 0;
//    blue = 0;
//  }
  
//   if (dist(400, 300, mouseX, mouseY) < 50) {
//    red = 0;
//    green = 255;
//    blue = 0;
//  }
  
//   if (dist(400, 450, mouseX, mouseY) < 50) {
//    red = 0;
//    green = 0;
//    blue = 255;
//  }
  
}
