PVector position;
float angle = 0;
float scaleFactor = 1.0;
float shearFactor = 0.0;
void setup() {
size(400, 400);
position = new PVector(width / 2, height / 2);
rectMode(CENTER);
}
void draw() {
background(255, 165, 0); // Establece el fondo a color naranja
translate(position.x, position.y);
rotate(angle);
scale(scaleFactor);
shearX(shearFactor);
rect(0, 0, 100, 100);
}
void keyPressed() {
if (key == 'w' || key == 'W') { // W = Traslacion hacia Arriba.
position.y -= 10;
} else if (key == 's' || key == 'S') { // S = Traslacion hacia Abajo.
position.y += 10;
} else if (key == 'a' || key == 'A') { // A = Traslacion hacia Izquierda.
position.x -= 10;
} else if (key == 'd' || key == 'D') { // D = Traslacion hacia Derecha.
position.x += 10;
} else if (key == 'r' || key == 'R') { // R = Rotación en sentido horario.
angle += radians(10);
} else if (key == 'e' || key == 'E') { // E = Aumentar Escalamiento.
scaleFactor += 0.1;
} else if (key == 'q' || key == 'Q') { // Q = Disminuir Escalamiento.
scaleFactor -= 0.1;
} else if (key == 'x' || key == 'X') { // X = Aumentar Sesgado Horizontal.
shearFactor += 0.1;
} else if (key == 'z' || key == 'Z') { // Z = Disminuir Sesgado Horizontal.
shearFactor -= 0.1;
}
}
