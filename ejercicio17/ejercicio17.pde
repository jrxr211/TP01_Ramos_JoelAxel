float xLink, yLink, xTesoro, yTesoro, distancia, distanciaDesaparicion;

void setup() {
  size(400, 400);
  xLink = 100; // Coordenadas iniciales de Link
  yLink = 100;
  xTesoro = 200; // Coordenadas iniciales del Tesoro
  yTesoro = 300;
  distanciaDesaparicion = 50; // Distancia para desaparecer el tesoro (opcional, para pruebas)
}

void draw() {
  background(220);
  stroke(0);
  fill(255, 0, 0); // Link (rojo)
  ellipse(xLink, yLink, 20, 20); // Círculo para Link
  fill(255, 215, 0); // Tesoro (amarillo)
  rect(xTesoro, yTesoro, 20, 20); // Cuadrado para el Tesoro
  calcularDistancia();
  mostrarDistancia();
  verificarDesaparicion();
}

void calcularDistancia() {
  float diferenciaX = xTesoro - xLink;
  float diferenciaY = yTesoro - yLink;
  distancia = sqrt(diferenciaX * diferenciaX + diferenciaY * diferenciaY);
}

void mostrarDistancia() {
  textSize(16);
  text("Distancia: " + distancia, 10, 20);
}

void verificarDesaparicion() {
  if (distancia <= distanciaDesaparicion) {
    fill(128, 128, 128); // Color gris para indicar desaparición (opcional)
    rect(xTesoro, yTesoro, 20, 20); // Volver a dibujar el tesoro en gris
  }
}

void mouseMoved() {
  xLink = mouseX; // Actualizar la posición de Link con el mouse
  yLink = mouseY;
}
