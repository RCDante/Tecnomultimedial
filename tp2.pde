//https://youtu.be/93HHj4RVEqU
PImage img;

int tamanoDeCuadrado;
int numeroDeLineas;
int espacioDeLineas;
int grosorDeLineas;

int inicioX1;
int inicioX2;
int inicioX3;

int inicioY1;
int inicioY2;
int inicioY3;

color colorDeFondo;
color colorDeLinea1;
color colorDeLinea2;
color colorDeLinea3;

void setup() {
  size(800, 400);
  img = loadImage("cc10.png");

  tamanoDeCuadrado = 200;
  numeroDeLineas = 21;
  espacioDeLineas = 10;
  grosorDeLineas = 4;

  inicioX1 = 444;
  inicioX2 = 487;
  inicioX3 = 531;
  inicioY1 = 66;
  inicioY2 = 106;
  inicioY3 = 147;

  colorDeFondo  = color(34, 34, 34); // Color de fondo inicial
  colorDeLinea1 = color(72, 162, 221); // Color inicial para las líneas del conjunto 1
  colorDeLinea2 = color(142, 188, 54); // Color inicial para las líneas del conjunto 2
  colorDeLinea3 = color(232, 103, 39); // Color inicial para las líneas del conjunto 3
}

void draw() {
  background(colorDeFondo);

  image(img, 0, 0, width/2, height);

  println("Posición del mouse: (" + mouseX + ", " + mouseY + ")");

  int tamanoDeCuadrado = 200;
  int numeroDeLineas = 21;
  int espacioDeLineas = 10;
  int grosorDeLineas = 4;

  if (mouseY < pmouseY) {
    inicioX1 += espacioDeLineas;
    inicioX3 -= espacioDeLineas;
  } else if (mouseY > pmouseY) {
    inicioX1 -= espacioDeLineas;
    inicioX3 += espacioDeLineas;
  }

  for (int i = 0; i < numeroDeLineas; i++) {
    int x1 = inicioX1 + i * espacioDeLineas;
    int x2 = inicioX2 + i * espacioDeLineas;
    int x3 = inicioX3 + i * espacioDeLineas;

    strokeWeight(grosorDeLineas);

    // Dibujar líneas con el color actual
    stroke(colorDeLinea1);
    line(x1, inicioY1, x1, inicioY1 + tamanoDeCuadrado);

    stroke(colorDeLinea2);
    line(x2, inicioY2, x2, inicioY2 + tamanoDeCuadrado);

    stroke(colorDeLinea3);
    line(x3, inicioY3, x3, inicioY3 + tamanoDeCuadrado);
  }
}
void mouseClicked() {
  // Cambiar el color de fondo y los colores de las líneas al hacer clic
  colorDeFondo = color(random(255), random(255), random(255));
  colorDeLinea1 = color(random(255), random(255), random(255));
  colorDeLinea2 = color(random(255), random(255), random(255));
  colorDeLinea3 = color(random(255), random(255), random(255));
}

void keyPressed() {
  if (key == ' ') {
    // Restaurar los colores y las posiciones iniciales al presionar la tecla espacio
    inicioX1 = 444;
    inicioX3 = 531;
    colorDeFondo = color(34, 34, 34);
    colorDeLinea1 = color(72, 162, 221);
    colorDeLinea2 = color(142, 188, 54);
    colorDeLinea3 = color(232, 103, 39);
  }
}
