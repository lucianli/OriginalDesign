int x = 0;

void setup() {
  size(700,700);
  frameRate(60);
}

void draw() {
  background(255 - x/4, 110, 43 + x/4);
  sun();
  sea();
  land();
  clouds();
}

void land() {
  noStroke();
  fill(55,130,50);
  beginShape();
  vertex(0,565);
  vertex(200,575);
  vertex(250,600);
  vertex(300,640);
  vertex(500,690);
  vertex(550,700);
  vertex(0,700);
  endShape(CLOSE);
}

void sea() {
  noStroke();
  fill(30,70,150);
  rect(0,500,700,200);
}

void sun() {
  noStroke();
  fill(240,220,0);
  ellipse(350,600-x,200,200);
  x = x + 2;
  if (x > 800) {
    x = 0;
    background(0);
  }
}

void clouds() {
  noStroke();
  fill(255);
  ellipse(-300 + x/2,150,90,70);
  ellipse(-350 + x/2,150,110,95);
  ellipse(-400 + x/2,150,95,80);
  ellipse(1250 - x,200,80,65);
  ellipse(1300 - x,200,100,85);
  ellipse(1350 - x,200,100,75);
  ellipse(-300 + x,250,85,70);
  ellipse(-350 + x,250,120,100);
  ellipse(-400 + x,250,80,65);
}


