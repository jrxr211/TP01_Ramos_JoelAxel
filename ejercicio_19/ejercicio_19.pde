int linea;
int dire = 1;

void setup() {
  size(400, 400);
  linea = 200;
}

void draw() {
  background(0);
  
  for (int i = 0; i < 1; i++) {
    linea = linea + dire; // incrementa
  }
    if (linea >= height || linea <= 0) {
    dire = dire * -1;
  }
  println(linea);
  
  stroke(255);
  fill(120,255,35);
  line(dire, linea, width, linea);
  ellipse(width/2, linea + 40, 80, 80);
}
