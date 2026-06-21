//https://youtu.be/KB3uhSdbeow

PImage img;

float desplazamiento = 10;

boolean oscilar = false;

float posicionOnda = 0;
float velocidadOnda = 0.08;

float anchoRect = 28.5;
float altoRect = 51.5;

void setup() {

  size(800, 400);

  img = loadImage("14.jpg");

  rectMode(CENTER);
}

void draw() {

  background(220);

  dibujarPatron();

  dibujarReferencia();

  actualizarOnda();
}
