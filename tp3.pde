// https://youtu.be/WrolVyumpWM
PImage mosquita;
int puntaje, puntajeMaximo;
int cantFilas, cantColumnas;
int tam;
int d, e;
float x, y;
String estados;

void setup() {
  size (500, 800);
  puntaje = 0;
  puntajeMaximo = 0;
  cantFilas = 44;
  cantColumnas = 20;
  tam = width/cantColumnas;
  d = 30;
  e = 180;
  x = 275;
  y = 375;
  mosquita = loadImage("mosquita.png");
  mosquita.resize(50, 50);
 
  imageMode(CENTER);
  rectMode(CENTER);
  estados = "inicio";
}

void draw() {
  background(0, 170, 0);
  for (int j=0; j<cantFilas; j++) {
    for (int i=0; i<cantColumnas; i++) {
      fill(0, 150, 0);
      rect(i*tam, j*tam, tam, tam);
      textSize(30);
      fill(255, 255, 255, 3);
      text("Puntaje:", 30, 50);
      text(puntaje, 150, 50);
      text("Puntaje Maximo:", 250, 50);
      text(puntajeMaximo, 470, 50);
      fill(0);
    }
  }

  /* LO PONGO COMENTADO PORQUE SINO ME TIRA ERROR EN EL INT DE PUNTAJES
   if(estado.equals("inicio")){
   background(#3B830C);
   fill(232,68,68); //aca va el color que quieras
   text("Comenzar",width/2-30,height/2-30);
   } else if ( estado.equals("instrucciones") ) {
   background( 200, 100, 0 );
   fill(216,31,31);//aca tambien
   text( estado, width/2-30, height/2-30 );
   } else if (estado.equals("juego")){
   background( 200, 100, 0 );
   fill(165,12,12);//aca tambien
   text( estado, width/2-30, height/2-30 );
   viborita();
   }
   }*/
   image(mosquita,50,150);
  rect(x, y, 25, 25);
 // d = d+3;
}

void keyPressed() {

  if (key=='a') {
    x-=10;
  }
  if (key=='d') {
    x+=10;
  }
  if (key=='w') {
    y-=10;
  }
  if (key=='s') {
    y+=10;
    d = d+3;
    e = e+3;
  }
}
