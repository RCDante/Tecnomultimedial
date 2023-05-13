//VARIABLES DE IMAGEN
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage imgGoBack;
PImage imgGo; 

//VARIABLES DE TEXTO
String texto1W = "La Y2K Superbike es una motocicleta fabricada por MTT en el año 2000, muy rápida y utilizada en competiciones gracias a su motor de turbina de gas y diseño aerodinámico.";

String texto2W= "La Y2K tiene un motor de helicóptero Rolls-Royce 250-C18, que le da una gran potencia y una velocidad impresionante de 0 a 100 km/h en solo 2.5 segundos.";

String texto3W = "Esta es una moto con un diseño futurista, chasis de fibra de carbono, y es atractiva para los amantes del diseño y de la velocidad..";

String texto4W = "Aunque la Y2K fue un hito en la historia de las motocicletas por su innovación y velocidad sin precedentes, su producción fue limitada debido a su alto costo y a la falta de demanda.";
 
String texto5W = "La Y2K es una motocicleta icónica con diseño innovador y tecnología avanzada que sigue siendo impresionante a pesar de haber sido superada en velocidad y rendimiento por otras motocicletas..";

//VARIABLES DE FUENTE 
PFont ft1;
PFont ft2;
PFont ft3;
PFont ft4;
PFont ft5;

//VARIABLES DE ANIMACIÓN DE TEXTO
float posX1W;
float posY1W;

float posX2W;
float posY2W;

float posX3W;
float posY3W;

float posX4W;
float posY4W;

float posX5W;
float posY5W;

//VARIABLES DE BOTONES
boolean goBack = false;
boolean go = false;

//OTROS
boolean diapo1 = true;
boolean diapo2 = false;
boolean diapo3 = false;
boolean diapo4 = false;
boolean diapo5 = false;

float velocidad = 6;

void setup() {
    size(640, 480);
    
    //IMAGENES CARGADAS 
    img1 = loadImage("diapo1.jpg");
    img2 = loadImage("diapo2.jpg");
    img3 = loadImage("diapo3.jpg");
    img4 = loadImage("diapo4.jpg");
    img5 = loadImage("diapo5.jpg");
    imgGoBack = loadImage("volver.jpg");
    imgGo = loadImage("go.png");
    
    //POSICION DE TEXTO 
    posX1W = 640;
    posY1W = 70;
    
    posX2W = 640;
    posY2W = 50;
    
    posX3W = 640;
    posY3W = 300;
    
    posX4W = 640;
    posY4W = 450;
    
    posX5W = 640;
    posY5W = 215;
    
    //FUENTES
    ft1 = loadFont("impact.vlw");
    ft2 = loadFont("lithospro.vlw");
    ft3 = loadFont("verdana-boldItalic.vlw");
    ft4 = loadFont("SegoeUIBlack.vlw");
    ft5 = loadFont("Georgia-Bold.vlw");
}

void draw() {
    println("La posición actual del mouse es: (" + mouseX + ", " + mouseY + ")");
    
    //DIAPO 1
    if (!go) {
        background(255,255,255);
        image(imgGo, 241, 190,150,150);
        
    } else {
        if (diapo1) {
            image(img1, 0, 0, 640, 480);
            fill(0);
            textFont(ft1);
            textSize(50);
            text(texto1W,posX1W,posY1W);
                
            //MOVIMIENTO D1
            if (posX1W > -textWidth(texto1W)) {
                posX1W -= velocidad;
                    
            } else {
                posX1W = width;
                diapo1 = false;
                diapo2 = true;
            }
        }

        //  DIAPO 2
        if (diapo2) {
            image(img2, 0, 0, 640, 480);
            fill(0);
            textFont(ft2);
            textSize(50);
            text(texto2W,posX2W,posY2W);

            //MOVIMIENTO D2
            if (posX2W > -textWidth(texto2W)) {
                posX2W -= velocidad;
                    
            } else {
                posX2W = width;
                diapo2 = false;
                diapo3 = true;
            }
        }
        
        // DIAPO 3 
        if (diapo3) {
            image(img3, 0, 0, 640, 480);
            fill(0);
            textFont(ft3);
            textSize(50);
            text(texto3W,posX3W,posY3W);
            
            //MOVIMIENTO D3
            if (posX3W > -textWidth(texto3W)) {
                posX3W -= velocidad;
                    
            } else {
                posX3W = width;
                diapo3 = false;
                diapo4 = true;
            }
        }

        //DIAPO 4
        if (diapo4) {
            image(img4, 0, 0, 640, 480);
            fill(0);
            textFont(ft4);
            textSize(50);
            text(texto4W,posX4W,posY4W);
            
            //MOVIMIENTO D4
            if (posX4W > -textWidth(texto4W)) {
                posX4W -= velocidad;
                    
            } else {
                posX4W = width;
                diapo4 = false;
                diapo5 = true;
            }
        }

        // DIAPO 5
        if (diapo5 && go) {
            image(img5, 0, 0, 640, 480);
            fill(0);
            textFont(ft5);
            textSize(50);
            text(texto5W,posX5W,posY5W);
            
            //MOVIMIENTO D5
            if (posX5W > -textWidth(texto5W)) {
                posX5W -= velocidad;
            } else {
                image(imgGoBack,575, 380, 50, 85);
            }
        }
    }
}

void mouseClicked() {
    //BOTON DE INICIO 
    if (!go && mouseX >= 260 && mouseX <= 390 && mouseY >= 200 && mouseY <= 450) {
        go = true;
        diapo1 = true;
    }

    //BOTON DE REINICIO 
    if (diapo5 && go && mouseX >= 577 && mouseX <= 624 && mouseY >= 379 && mouseY <= 465) {
        go = false; 
        diapo5 = false;
        diapo1 = true;
        posX5W = width;
        posX5W = width;
        posX3W = width;
    }
}
