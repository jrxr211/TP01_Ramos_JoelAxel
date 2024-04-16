int linea, y;

void setup(){
  size (600,600);
  linea= 120;
  y= 100;
  dibujarLineas();
  dibujarCirculos();
}
void draw(){}
void dibujarLineas(){
  do{
    stroke(0,0,255);
    strokeWeight(5);
    line(0,linea,width,linea);
    linea+=100;
  }while(linea<=height);
}
void dibujarCirculos(){
do{
for(int x=30; x<width; x+=60){
  stroke(0);
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(x,y,40,40);
}
y+=200;
}while(y<=height);
}
