int centroX = 0;
int centroY = 0;
int angulo = 0;

void setup(){
  size(400, 400);
}

void draw(){
  background(200);
  translate(width/2, height/2);
  rotate(radians(angulo));
  dibujarMiraEn(0,0);
  dibujarRectEn(0,0);
  angulo++;
}

void dibujarMiraEn(int posX, int posY){
  fill(255,0,0);
  ellipse(posX, posY, 10, 10);
  line(posX-10, posY, posX+10, posY);
  line(posX, posY-10, posX, posY+10);
}

void dibujarRectEn(int posX, int posY){
  noFill();
  rectMode(CENTER);
  rect(posX, posY, 50, 50);
  line(0, 0, posX, posY);
}
