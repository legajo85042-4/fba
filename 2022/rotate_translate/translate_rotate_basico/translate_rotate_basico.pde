int centroX = 0;
int centroY = 0;
int angulo = 0;

void setup(){
  size(400, 400);
}

void draw(){
  background(200);
  translate(centroX, centroY);
  rotate(radians(angulo));
  dibujarMiraEn(0,0);
  dibujarRectEnCentroPantalla(width/2, height/2);
  dibujarRectContornoPantalla();
}

void dibujarMiraEn(int posX, int posY){
  fill(255,0,0);
  ellipse(posX, posY, 10, 10);
  line(posX-10, posY, posX+10, posY);
  line(posX, posY-10, posX, posY+10);
}

void dibujarRectEnCentroPantalla(int posX, int posY){
  fill(255,0,0);
  rectMode(CENTER);
  rect(posX, posY, 50, 50);
  line(0, 0, posX, posY);
}

void dibujarRectContornoPantalla(){
  noFill();
  rectMode(CORNER);
  rect(0,0,width,height);
}

void mouseClicked(){
  if(mouseButton == RIGHT){
    centroX++;
    centroY++;
  }else{
    centroX--;
    centroY--;
  }
}

void keyPressed(){
  if(keyCode == LEFT)
    angulo++;
  else if(keyCode == RIGHT)
    angulo--;
}
