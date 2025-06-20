// File: figures/grassmann-quivers.asy
size(200);
pen blackdot = black+linewidth(1.5);
pen whitedot = white+linewidth(1.5);

void node(pair z, bool filled=true) {
  draw(circle(z,0.2), black);
  if (filled)
    fill(circle(z,0.2), black);
  else
    fill(circle(z,0.2), white);
}

void chain(pair start, int n, bool[] filled) {
  for (int i = 0; i < n-1; ++i)
    draw((start + (i,0))--(start + (i+1,0)));
  for (int i = 0; i < n; ++i)
    node(start + (i,0), filled[i]);
}

pair label_center(pair p, string s) {
  label("$" + s + "$", p + (0,-0.8));
  return p;
}

// A_n: Gr(1,n)
bool[] afill = {false, true, false, false, false}; // edit as needed
pair astart = (-6,0);
chain(astart, afill.length, afill);
label_center(astart + (2,0), "A_n : Gr(1,n)");

// D_n: Gr(2,n)
bool[] dfill = {false, false, true, false, false}; // center filled
pair dstart = (0,0);
chain(dstart, dfill.length, dfill);
draw((dstart + (1,0))--(dstart + (1,1)));
node(dstart + (1,1), false);
label_center(dstart + (2,0), "D_n : Gr(2,n)");

// E_n: Gr(3,n)
bool[] efill = {false, false, false, true, false, false}; // one filled
pair estart = (6,0);
chain(estart, efill.length, efill);
draw((estart + (2,0))--(estart + (2,1)));
node(estart + (2,1), false);
label_center(estart + (3,0), "E_n : Gr(3,n)");

