void dibujarReferencia() {

  image(img, 0, 0, 400, 400);

  stroke(0);
  
  strokeWeight(1);

  line(400, 0, 400, 400);
}

void dibujarPatron() {

  for (int fila = 0; fila < height / altoRect + 2; fila++) {

    float offset = calcularOffset(fila);

    if (oscilar) {
      offset += efectoOnda(fila);
    }

    for (int col = -2; col < 16; col++) {

      float x = 400 + col * anchoRect + offset;
      float y = fila * altoRect;

      dibujarModulo(x, y, col, fila);
    }
  }
}

float calcularOffset(int fila) {

  int paso = fila % 8;

  if (paso == 0) return desplazamiento;
  if (paso == 1) return desplazamiento - 17;
  if (paso == 2) return desplazamiento - 37;
  if (paso == 3) return desplazamiento - 17;

  if (paso == 4) return desplazamiento;
  if (paso == 5) return desplazamiento - 17;
  if (paso == 6) return desplazamiento - 37;
  if (paso == 7) return desplazamiento - 17;

  return desplazamiento;
}

void dibujarModulo(float x, float y, int col, int fila) {

  pushMatrix();

  translate(x + anchoRect/2, y + altoRect/2);

  float d = dist(mouseX, mouseY, x + anchoRect/2, y + altoRect/2);

  float escala = map(d, 0, 500, 1.9, 1);

  escala = constrain(escala, 1, 1.9);

  if (mouseX > 400) {
    scale(escala);
  }

  if (esNegro(col, fila)) {
    fill(0);
  } else {
    fill(255);
  }

  stroke(120);
  strokeWeight(3);

  rect(0, 0, anchoRect, altoRect);

  popMatrix();
}

boolean esNegro(int col, int fila) {

  if ((col + fila) % 2 == 0) {
    return true;
  } else {
    return false;
  }
}


void actualizarOnda() {

  if (oscilar) {

    posicionOnda += velocidadOnda;

    int cantidadFilas = height / int(altoRect) + 2;

    if (posicionOnda > cantidadFilas - 1 || posicionOnda < 0) {
      velocidadOnda = -velocidadOnda;
    }
  }
}

float efectoOnda(int fila) {

  float distancia = abs(fila - posicionOnda);

  if (distancia < 1) {
    return map(distancia, 0, 1, 10, 0);
  }

  return 0;
}



void mousePressed() { 

  if (mouseButton == RIGHT) {

    desplazamiento = random(-30, 30);
  }

  if (mouseButton == LEFT) {

    oscilar = !oscilar;
  }
}

void keyPressed() {

  if (key == 'r' || key == 'R') {

    desplazamiento = 10;

    oscilar = false;

    posicionOnda = 0;

    velocidadOnda = 0.08;
  }
}
