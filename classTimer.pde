class Tiempo {
  int tiempo;
  int duracion;
  Tiempo() {
    duracion = 100;
    reset();
  }
  void reset() {
    tiempo = millis() + duracion;
  }
  boolean alarma() {
    if ( millis() > tiempo ) {
      tiempo = millis() + duracion;
      return true;
    }
    return false;
  }
}
