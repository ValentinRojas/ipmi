int tiempo = 500;

int escena = 0;

int inicioTiempo;

float alpha = 0;

boolean transicion = true;

float textProgress = 0;

float slideX = 0;

boolean slide = true;

PImage img1, img2, img3, img4, img5;

void setup() {

  size(640, 480);

  img1 = loadImage("EPimg1.jpg");
  img2 = loadImage("EPimg2.jpg");
  img3 = loadImage("EPimg3.jpg");
  img4 = loadImage("EPimg4.jpg");
  img5 = loadImage("EPimg5.png");

  textAlign(CENTER, CENTER);
}

void draw() {

  background(0);

  if (escena != 0) {

    textProgress += 0.02;

    if (textProgress > 1) {
      textProgress = 1;
    }
  }

  if (slide) {

    slideX -= 20;

    if (slideX <= 0) {

      slideX = 0;
      slide = false;
    }
  }

  if (escena == 0) {

    background(20);

    fill(255);

    textSize(42);

    text("EL PRINCIPITO", width / 2, 150);

    fill(180);

    rect(220, 400, 200, 60, 15);

    fill(0);

    textSize(28);

    text("COMENZAR", width / 2, 430);

    if (mousePressed &&
      mouseX > 220 &&
      mouseX < 420 &&
      mouseY > 400 &&
      mouseY < 460) {

      siguienteEscena(1);
    }
  }

  else if (escena == 1) {

    dibujarEscena(
      img1,
      1,
      "El Principito es una novela corta escrita por Antoine de Saint-Exupéry en 1943. Habla sobre la amistad y lo esencial de la vida."
      );

    autoAvance(2);
  }

  else if (escena == 2) {

    dibujarEscena(
      img2,
      2,
      "El Principito vive en el asteroide B612 junto a su rosa, a quien ama profundamente."
      );

    autoAvance(3);
  }

  else if (escena == 3) {

    dibujarEscena(
      img3,
      3,
      "Viaja por varios planetas donde conoce adultos obsesionados con el poder y la riqueza."
      );

    autoAvance(4);
  }

  else if (escena == 4) {

    dibujarEscena(
      img4,
      4,
      "El zorro le enseña que lo esencial es invisible a los ojos."
      );

    autoAvance(5);
  }

  else if (escena == 5) {

    dibujarEscena(
      img5,
      1,
      "El Principito regresa a su planeta y el piloto comprende el verdadero valor de la vida."
      );

    botonReset();
  }
}
