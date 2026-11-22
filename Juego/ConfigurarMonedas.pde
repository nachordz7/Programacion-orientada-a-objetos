
class ConfiguradorMonedas {

  int configurar(int numero, Moneda[] monedas) {

    // LIMPIAR MONEDAS ANTERIORES
    for (int i = 0; i < monedas.length; i++) {
      monedas[i] = null;
    }

    int indice = 0;

    // =====================================
    // NIVEL 3
    // =====================================

    if (numero == 3) {

      monedas[indice++] = new Moneda(100, 300);
      monedas[indice++] = new Moneda(780, 300);
    }

    // =====================================
    // NIVEL 6
    // 20 MONEDAS ALREDEDOR DE LA CRUZ
    // =====================================

    else if (numero == 6) {

      // RECORRIDO SUPERIOR
      monedas[indice++] = new Moneda(450, 205);
      monedas[indice++] = new Moneda(450, 245);
      monedas[indice++] = new Moneda(450, 285);
      monedas[indice++] = new Moneda(450, 365);
      monedas[indice++] = new Moneda(450, 405);

      // RECORRIDO INFERIOR
      monedas[indice++] = new Moneda(410, 325);
      monedas[indice++] = new Moneda(370, 325);
      monedas[indice++] = new Moneda(330, 325);
      monedas[indice++] = new Moneda(490, 325);
      monedas[indice++] = new Moneda(530, 325);

      // DIAGONAL SUPERIOR IZQUIERDA
      monedas[indice++] = new Moneda(370, 245);
      monedas[indice++] = new Moneda(400, 215);

      // DIAGONAL SUPERIOR DERECHA
      monedas[indice++] = new Moneda(530, 245);
      monedas[indice++] = new Moneda(500, 215);

      // DIAGONAL INFERIOR IZQUIERDA
      monedas[indice++] = new Moneda(370, 405);
      monedas[indice++] = new Moneda(400, 435);

      // DIAGONAL INFERIOR DERECHA
      monedas[indice++] = new Moneda(530, 405);
      monedas[indice++] = new Moneda(500, 435);

      // ALREDEDOR DEL CENTRO
      monedas[indice++] = new Moneda(410, 285);
      monedas[indice++] = new Moneda(490, 365);
    }

    // =====================================
    // NIVEL 8
    // =====================================

    else if (numero == 8) {

      monedas[indice++] = new Moneda(75, 155);
    }

    // =====================================
    // NIVEL 9
    // =====================================

    else if (numero == 9) {

      monedas[indice++] = new Moneda(780, 325);
      monedas[indice++] = new Moneda(450, 115);

      monedas[indice++] = new Moneda(285, 205);
      monedas[indice++] = new Moneda(615, 205);
      monedas[indice++] = new Moneda(285, 445);
      monedas[indice++] = new Moneda(615, 445);
    }

    // =====================================
    // NIVEL 12
    // =====================================

    else if (numero == 12) {

      monedas[indice++] = new Moneda(150, 175);
      monedas[indice++] = new Moneda(750, 175);

      monedas[indice++] = new Moneda(70, 400);
      monedas[indice++] = new Moneda(830, 400);
    }


// NIVEL 14 - MONEDAS EN LOS PASILLOS LATERALES

else if (numero == 14) {

  // MONEDA DEL PASILLO IZQUIERDO
  monedas[indice++] = new Moneda(165, 270);

  // MONEDA DEL PASILLO DERECHO
  monedas[indice++] = new Moneda(735, 270);

}



    // =====================================
    // NIVEL 15
    // 4 MONEDAS
    // =====================================

    else if (numero == 15) {

      // HABITACIÓN SUPERIOR
      monedas[indice++] = new Moneda(450, 100);

      // HABITACIÓN INFERIOR
      monedas[indice++] = new Moneda(450, 550);

      // SECTOR IZQUIERDO
      monedas[indice++] = new Moneda(260, 325);

      // SECTOR DERECHO
      monedas[indice++] = new Moneda(640, 325);
    }

    return indice;
  }
}
