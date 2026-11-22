
class Resultado {

  String nombre;
  int tiempo;
  int muertes;


  Resultado(String nombre, int tiempo, int muertes) {

    this.nombre = nombre;
    this.tiempo = tiempo;
    this.muertes = muertes;

  }

}


class Leaderboard {

  ArrayList<Resultado> resultados;


  Leaderboard() {

    resultados = new ArrayList<Resultado>();

    cargar();

  }


  // =====================================
  // CARGAR RESULTADOS GUARDADOS
  // =====================================

  void cargar() {

    resultados.clear();

    String[] datos = loadStrings("data/leaderboard.txt");

    if (datos == null) return;


    for (int i = 0; i < datos.length; i++) {

      String[] partes = split(datos[i], ';');

      if (partes.length == 3) {

        try {

          String nombre = partes[0];

          int tiempo = int(partes[1]);
          int muertes = int(partes[2]);

          resultados.add(
            new Resultado(nombre, tiempo, muertes)
          );

        }

        catch (Exception e) {

          // Ignorar líneas incompletas o dañadas.

        }

      }

    }

    ordenar();

  }


  // =====================================
  // AGREGAR RESULTADO NUEVO
  // =====================================

  void agregar(String nombre, int tiempo, int muertes) {

    nombre = trim(nombre);
    nombre = nombre.replace(";", "");

    if (nombre.length() == 0) {

      nombre = "JUGADOR";

    }


    resultados.add(
      new Resultado(nombre, tiempo, muertes)
    );

    ordenar();


    // CONSERVAR SOLO LOS 10 MEJORES

    while (resultados.size() > 10) {

      resultados.remove(resultados.size() - 1);

    }

    guardar();

  }


  // =====================================
  // ORDENAR RESULTADOS
  // MENOR TIEMPO Y MENOS MUERTES
  // =====================================

  void ordenar() {

    for (int i = 0; i < resultados.size(); i++) {

      for (int j = i + 1; j < resultados.size(); j++) {

        Resultado a = resultados.get(i);
        Resultado b = resultados.get(j);


        if (b.tiempo < a.tiempo ||
            (b.tiempo == a.tiempo && b.muertes < a.muertes)) {

          resultados.set(i, b);
          resultados.set(j, a);

        }

      }

    }

  }


  // =====================================
  // GUARDAR EN EL ARCHIVO
  // =====================================

  void guardar() {

    String[] datos = new String[resultados.size()];


    for (int i = 0; i < resultados.size(); i++) {

      Resultado r = resultados.get(i);

      datos[i] =
        r.nombre + ";" +
        r.tiempo + ";" +
        r.muertes;

    }


    saveStrings("data/leaderboard.txt", datos);

  }


  // =====================================
  // FORMATO MINUTOS:SEGUNDOS
  // =====================================

  String formatoTiempo(int segundos) {

    int minutos = segundos / 60;
    int resto = segundos % 60;

    String mm = nf(minutos, 2);
    String ss = nf(resto, 2);

    return mm + ":" + ss;

  }


  // =====================================
  // MOSTRAR TABLA
  // =====================================

  void mostrar() {

    // El fondo lo dibuja Menu.mostrarLeaderboard()

    textAlign(CENTER, CENTER);

    textFont(createFont("Monospaced", 32, true));


    // TÍTULO

    fill(245, 245, 235);
    textSize(42);

    text("LEADERBOARD", 450, 65);


    // LÍNEA DECORATIVA

    stroke(125, 25, 40);
    strokeWeight(4);

    line(120, 105, 780, 105);


    // ENCABEZADOS

    fill(100, 255, 105);
    textSize(17);

    text("POS", 145, 145);
    text("JUGADOR", 350, 145);
    text("TIEMPO", 570, 145);
    text("MUERTES", 735, 145);


    stroke(125, 25, 40);
    strokeWeight(1);

    line(100, 168, 800, 168);


    // SI NO HAY RESULTADOS

    if (resultados.size() == 0) {

      noStroke();

      fill(245, 245, 235);
      textSize(20);

      text(
        "TODAVÍA NO HAY RESULTADOS",
        450,
        300
      );


      fill(180, 180, 180);
      textSize(15);

      text(
        "COMPLETÁ EL NIVEL 1 PARA APARECER EN EL RANKING",
        450,
        340
      );

      return;

    }


    // MOSTRAR LOS RESULTADOS

    for (int i = 0; i < resultados.size(); i++) {

      Resultado r = resultados.get(i);

      float y = 195 + i * 34;


      if (i == 0) {

        fill(100, 255, 105);

      } else {

        fill(245, 245, 235);

      }


      noStroke();

      textSize(18);

      text(i + 1, 145, y);

      text(r.nombre, 350, y);

      text(formatoTiempo(r.tiempo), 570, y);

      text(r.muertes, 735, y);

    }

  }

}
