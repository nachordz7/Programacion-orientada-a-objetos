/*
Crear una animación donde un grupo de elementos móviles se desplazan por la pantalla de forma encadenada. Cada elemento debe reaccionar a la posición del elemento que tiene asignado por delante en la estructura de datos, creando un efecto de seguimiento o persecución dinámica.
Consigna:Usar la clase Movil que venimos desarrollando.Implementar la lógica de actualización de posiciones con la siguiente regla de comportamiento: Cada elemento N debe seguir al elemento N+1.Estrategia para los extremos:  El último elemento (N más alto ): Al no tener un elemento N+1 podemos diseñarle un comportamiento especial. 
Puede seguir directamente la posición del puntero del mouse (mouseX, mouseY), o al primer elemento de la estructura de datos, o se puede mover libremente sin acercarse a otro.
*/

Movil[] moviles;
int cant = 20;

void setup() {
  size(800, 600);

  moviles = new Movil[cant];

  for (int i = 0; i < cant; i++) {
    moviles[i] = new Movil(random(width), random(height));
  }
}

void draw() {
  background(30);

  for (int i = 0; i < cant; i++) {

    if (i == cant - 1) {
      moviles[i].seguir(mouseX, mouseY);
    } else {
      moviles[i].seguir(moviles[i + 1].x, moviles[i + 1].y);
    }

    moviles[i].actualizar();
  }

  for (int i = 0; i < cant; i++) {
    moviles[i].mostrar();
  }
}
