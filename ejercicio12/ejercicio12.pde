String texto_consola = "escribe tu nombre:";
String nombre_ingresado = "joel ramos  ";
String mensaje_saludo = "hola bienvenido, ";

void setup() {
  size(400, 200);
  println(texto_consola);
}

void draw() {
  background(0);
  text(mensaje_saludo+nombre_ingresado, 25, 100);
  textSize(32);

}

void keyPressed() {
  nombre_ingresado += key;
  println(nombre_ingresado);
  
  if (key == '\n') {
    mensaje_saludo = "Hola, " + nombre_ingresado + " Bienvenido :D";
    println(mensaje_saludo);
  }
}
