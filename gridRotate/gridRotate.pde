float rotation = 0;
void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  int nCells = 8;
  float cellSize = width/nCells;
  float x = 0;
  float y = 0;

  for (int i = 0; i < nCells; i++) {
    for (int j = 0; j < nCells; j++) {
      float offset = cellSize/2;
      x = cellSize * i;
      y = cellSize * j;

      pushMatrix();
      translate(x + offset, y + offset);
      rotate(radians(rotation));
      cells(0, 0, cellSize);
      popMatrix();
    }
  }
  rotation += 1;
}

void cells (float x, float y, float size) {
  rectMode(CENTER);
  rect(x, y, size, size);
}
