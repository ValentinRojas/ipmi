void dibujarEscena(PImage img, int efectoTexto, String texto) {

  transicionFade();

  tint(255, alpha);

  image(img, slideX, 0, width, height);

  noTint();

  cajaTexto();

  dibujarTexto(
    efectoTexto,
    texto,
    width / 4 + slideX,
    height - 130,
    340,
    80
    );
}

void transicionFade() {

  if (transicion) {

    alpha += 3;

    if (alpha >= 255) {

      alpha = 255;

      transicion = false;
    }
  }
}

void cajaTexto() {

  fill(255, 220);

  rect(0, height - 140, width, 100);
}

void dibujarTexto(
  int tipo,
  String texto,
  float x,
  float y,
  float w,
  float h
  ) {

  textSize(18);

  fill(0, alpha);

  if (tipo == 1) {

    text(texto, x, y, w, h);
  }

  else if (tipo == 2) {

    float offset = map(textProgress, 0, 1, 40, 0);

    text(texto, x, y + offset, w, h);
  }

  else if (tipo == 3) {

    int letras = int(textProgress * texto.length());

    String visible = texto.substring(0, letras);

    text(visible, x, y, w, h);
  }

  else if (tipo == 4) {

    float tamaño = map(textProgress, 0, 1, 8, 18);

    textSize(tamaño);

    text(texto, x, y, w, h);
  }
}

void autoAvance(int siguiente) {

  if (frameCount - inicioTiempo > tiempo) {

    siguienteEscena(siguiente);
  }
}

void siguienteEscena(int nueva) {

  escena = nueva;

  inicioTiempo = frameCount;

  alpha = 0;

  transicion = true;

  textProgress = 0;

  slideX = width;

  slide = true;
}

void botonReset() {

  float w = 160;
  float h = 40;

  float x = width / 2 - w / 2;
  float y = height - 45;

  fill(200);

  rect(x, y, w, h, 10);

  fill(0);

  textSize(20);

  text("REINICIAR", width / 2, y + h / 2);

  if (mousePressed &&
    mouseX > x &&
    mouseX < x + w &&
    mouseY > y &&
    mouseY < y + h) {

    resetear();
  }
}

void resetear() {

  escena = 0;

  alpha = 0;

  transicion = true;

  textProgress = 0;

  slideX = width;

  slide = true;
}
