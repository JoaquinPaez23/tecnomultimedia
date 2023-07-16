PImage[] imagenes;
String[] textos;
int pantallaActual;
boolean botonPresionado;
boolean boton1Presionado;
boolean botonEntrarPresionado;
boolean botonFinPresionado;
boolean botonCreditosPresionado;
boolean botonReinicioPresionado;

void setup() {
  size(600, 600);
  imagenes = new PImage[15];
  for (int i = 0; i < imagenes.length; i++) {
    imagenes[i] = loadImage("images/imagen" + i + ".jpg");
  }

  textos = new String[16];
  textos[0] = "Hansel y Gretel - Hermanos Grimm.";
  textos[1] = "Hansel y Gretel están en el medio del bosque y quieren regresar a casa.";
  textos[2] = "Los chicos siguen un camino de migas de pan \n hasta que escuchan un ruido extraño.";
  textos[3] = "Los chicos deciden ignorar el ruido y seguir el camino.";
  textos[4] = "A lo lejos ven una casa hecha de dulces y \n los chicos ya empiezan a tener hambre.";
  textos[5] = "Al acercarse a la casa, una señora mayor los invita a pasar a comer.\n Pero cuando entran, la señora mayor resulta ser una bruja \n que encadena a los chicos para luego comérselos.";
  textos[6] = "La bruja está llevando a Hansel al fuego \n pero Gretel, astuta, logra hacer que la bruja caiga al fuego.";
  textos[7] = "Hansel y Gretel matan a la bruja y \n encuentran un tesoro en la casa de la bruja y deciden llevárselo a casa.";
  textos[8] = "Los chicos logran encontrar su casa de vuelta y \n viven felices para siempre.";
  textos[9] = "Los chicos se asustan del ruido y deciden esconderse en un arbusto. \n Cuando salieron se dieron que era solo una ardilla y \n que el camino de migas ya no estaba.";
  textos[10] = "Como el camino de migas ya no estaba los chicos \n se pierden en el bosque y se encuentran con un lobo.";
  textos[11] = "Los niños mueren a causa del lobo hambriento.";
  textos[12] = "Los chicos saben que las casas no pueden estar hechas de dulces \n por lo que siguen el rastro de migas.";
  textos[13] = "El camino de migas llega a su fin y \n a lo lejos ven su casa con su padre. los niños llegaron sanos y salvos ";
  textos[14] = "Créditos: \n Joaquin Paez \n Hansel y Gretel - Hermanos Grimm .";

  pantallaActual = 0;
  botonPresionado = false;
  boton1Presionado = false;
  botonEntrarPresionado = false;
  botonFinPresionado = false;
  botonCreditosPresionado = false;
  botonReinicioPresionado = false;
}

void draw() {
  background(200); 

  image(imagenes[pantallaActual], 0, 0, width, height);

  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text(textos[pantallaActual], width / 2, height / 2);

  if (pantallaActual != 11 && pantallaActual != 8 && pantallaActual != 13 && pantallaActual != 14 && pantallaActual != 4) {
    noFill();
    noStroke();
    rect(width - 120, height - 50, 100, 30);
    fill(255);
    if (pantallaActual == 2) {
      text("Seguir caminando", width - 80, height - 35);
    } else {
      text("Siguiente", width - 60, height - 35);
    }
  }

  if (pantallaActual == 14) {
    fill(200);
    noStroke();
    rect(width / 2 - 100, height - 50, 200, 30);
    fill(0);
    text("Reiniciar", width / 2, height - 35);
  }

  if (botonPresionado) {
    siguientePantalla();
    botonPresionado = false;
  } else {
    if (pantallaActual == 2) {
      fill(200);
      noStroke();
      rect(width / 2 - 240, height - 50, 160, 30);
      fill(0);
      text("Esconderse", width / 2 - 160, height - 35);

      if (boton1Presionado) {
        pantallaActual = 9; 
      }
    }

    else if (pantallaActual == 4) {
      fill(200);
      noStroke();
      rect(width - 180, height - 50, 160, 30);
      fill(0);
      text("Entrar a la casa", width - 100, height - 35);

      fill(200);
      noStroke();
      rect(20, height - 50, 80, 30);
      fill(0);
      text("No ir", 60, height - 35);

      if (botonEntrarPresionado) {
        pantallaActual = 5; 
      }

     
      else if (botonFinPresionado) {
        pantallaActual = 12; 
      }
    }

    else if (pantallaActual == 8) {
      fill(200);
      noStroke();
      rect(width / 2 - 100, height - 50, 200, 30);
      fill(0);
      text("Créditos", width / 2, height - 35);

      if (botonCreditosPresionado) {
        pantallaActual = 14;
      }
    }

    else if (pantallaActual == 10) {
      noFill();
      noStroke();
      rect(width - 100, height - 50, 80, 30);
      fill(255);
      text("Siguiente", width - 60, height - 35);
    }

    else if (pantallaActual == 11) {
      fill(200);
      noStroke();
      rect(width / 2 - 100, height - 50, 200, 30);
      fill(0);
      text("Créditos", width / 2, height - 35);

      if (botonCreditosPresionado) {
        pantallaActual = 14; 
      }
    }

    else if (pantallaActual == 12) {
      noFill();
      noStroke();
      rect(width - 100, height - 50, 80, 30);
      fill(255);
      text("Siguiente", width - 60, height - 35);

      if (botonPresionado) {
        pantallaActual = 13; 
      }
    }

    else if (pantallaActual == 13) {
      fill(200);
      noStroke();
      rect(width / 2 - 100, height - 50, 200, 30);
      fill(0);
      text("Créditos", width / 2, height - 35);

      if (botonCreditosPresionado) {
        pantallaActual = 14; 
      }
    }

    else if (pantallaActual == 15) {
      fill(200);
      noStroke();
      rect(width / 2 - 100, height - 50, 200, 30);
      fill(0);
      text("Créditos", width / 2, height - 35);
    }
  }
}

void mousePressed() {
  if (pantallaActual != 11 && pantallaActual != 8 && pantallaActual != 13 && pantallaActual != 14 && pantallaActual != 4) {
    if (mouseX > width - 120 && mouseX < width - 20 && mouseY > height - 50 && mouseY < height - 20) {
      botonPresionado = true;
    }
  }

  if (pantallaActual == 2) {
    if (mouseX > width / 2 - 240 && mouseX < width / 2 - 80 && mouseY > height - 50 && mouseY < height - 20) {
      boton1Presionado = true;
    }
  }

  if (pantallaActual == 4) {
    if (mouseX > width - 180 && mouseX < width - 20 && mouseY > height - 50 && mouseY < height - 20) {
      botonEntrarPresionado = true;
    }
    if (mouseX > 20 && mouseX < 100 && mouseY > height - 50 && mouseY < height - 20) {
      botonFinPresionado = true;
    }
  }

  if (pantallaActual == 8 || pantallaActual == 14 || pantallaActual == 11 || pantallaActual == 13) {
    if (mouseX > width / 2 - 100 && mouseX < width / 2 + 100 && mouseY > height - 50 && mouseY < height - 20) {
      botonCreditosPresionado = true;
    }
  }
  
  if (pantallaActual == 14) {
    if (mouseX > width / 2 - 100 && mouseX < width / 2 + 100 && mouseY > height - 50 && mouseY < height - 20) {
      reiniciarPantallas();
      botonReinicioPresionado = true;
    }
  }
}

void siguientePantalla() {
  if (pantallaActual < imagenes.length - 1) {
    pantallaActual++;
  } else {
    pantallaActual = 0;
  }
}

void reiniciarPantallas() {
  pantallaActual = 0;
  botonPresionado = false;
  boton1Presionado = false;
  botonEntrarPresionado = false;
  botonFinPresionado = false;
  botonCreditosPresionado = false;
  botonReinicioPresionado = false;
}
