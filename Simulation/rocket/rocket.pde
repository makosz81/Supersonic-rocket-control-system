int picX = -49;
int picY = -300;

int titleFontSize = 22;
int otherFontSize = 20;

int simFontSize = 22;
int simleftred = 255;
int simleftgreen = 200;
int simleftblue = 0;

int posXtitle = -385;
int posYtitle = -380;
int titlered = 255;
int titlegreen = 0;
int titleblue = 0;

int posXLeft = -390;
int posYLeft = -300;
int delxLeft = 300;
int leftred = 0;
int leftgreen = 255;
int leftblue = 0;

int posXRight =80;
int posYRight = -80;
int delXRight = 230;
int rightred = 255;
int rightgreen = 255;
int rightblue = 50;

int circlered = 255;
int circlegreen = 0;
int circleblue = 0;

int posXCircle = 0;
int posYCircle = 350;
int sizeCircle = 30;

int scirclered = 255;
int scirclegreen = 0;
int scircleblue = 0;

int rectred = 0;
int rectgreen = 0;
int rectblue = 255;
int multiplyier = 100;

int srectred = 0;
int srectgreen = 255;
int srectblue = 5;

int smallFontSize = 18;
int posXdist = -50;
int poYdist = 390;
int distred = 2;
int distgreen = 255;
int distblue = 0;

//all changes stop
PImage rocket;
PImage background;

float[] angle1;
float[] angle2;
float[] angle3;
float[] angle4;
float[] angle5;
float[] angle6;
float[] angle7;

float[] acceleration1;
float[] acceleration2;
float[] acceleration3;
float[] acceleration4;
float[] acceleration5;
float[] acceleration6;
float[] acceleration7;

float[] velocity1;
float[] velocity2;
float[] velocity3;
float[] velocity4;
float[] velocity5;
float[] velocity6;
float[] velocity7;

float[] disturbance1;
float[] disturbance2;
float[] disturbance3;
float[] disturbance4;
float[] disturbance5;
float[] disturbance6;
float[] disturbance7;

float[] inertia1;
float[] inertia2;
float[] inertia3;
float[] inertia4;
float[] inertia5;
float[] inertia6;
float[] inertia7;

float[] delinertia1;
float[] delinertia2;
float[] delinertia3;
float[] delinertia4;
float[] delinertia5;
float[] delinertia6;
float[] delinertia7;

float[] spring1;
float[] spring2;
float[] spring3;
float[] spring4;
float[] spring5;
float[] spring6;
float[] spring7;

float[] damping1;
float[] damping2;
float[] damping3;
float[] damping4;
float[] damping5;
float[] damping6;
float[] damping7;

int i = 0;
int n = 1;
PFont f;
PFont g;
float time = 0;

void setup() {
  size(800, 940);
  //frameRate(12);
  rocket = loadImage("test.png");
  background = loadImage("Background.jpg");
  
  f = createFont("Arial", 50, true);
  g = createFont("Arial Bold", 50, true);

  String[] stuff11 = loadStrings("angle1.txt");
  angle1 = float(split(stuff11[0], ','));
  String[] stuff12 = loadStrings("angle2.txt");
  angle2 = float(split(stuff12[0], ','));
  String[] stuff13 = loadStrings("angle3.txt");
  angle3 = float(split(stuff13[0], ','));
  String[] stuff14 = loadStrings("angle4.txt");
  angle4 = float(split(stuff14[0], ','));
  String[] stuff15 = loadStrings("angle5.txt");
  angle5 = float(split(stuff15[0], ','));
  String[] stuff16 = loadStrings("angle6.txt");
  angle6 = float(split(stuff16[0], ','));
  String[] stuff17 = loadStrings("angle7.txt");
  angle7 = float(split(stuff17[0], ','));

  String[] stuff21 = loadStrings("acceleration1.txt");
  acceleration1 = float(split(stuff21[0], ','));
  String[] stuff22 = loadStrings("angle2.txt");
  acceleration2 = float(split(stuff22[0], ','));
  String[] stuff23 = loadStrings("angle3.txt");
  acceleration3 = float(split(stuff23[0], ','));
  String[] stuff24 = loadStrings("angle4.txt");
  acceleration4 = float(split(stuff24[0], ','));
  String[] stuff25 = loadStrings("angle5.txt");
  acceleration5 = float(split(stuff25[0], ','));
  String[] stuff26 = loadStrings("angle6.txt");
  acceleration6 = float(split(stuff26[0], ','));
  String[] stuff27 = loadStrings("angle7.txt");
  acceleration7 = float(split(stuff27[0], ','));

  String[] stuff31 = loadStrings("velocity1.txt");
  velocity1 = float(split(stuff31[0], ','));
  String[] stuff32 = loadStrings("velocity2.txt");
  velocity2 = float(split(stuff32[0], ','));
  String[] stuff33 = loadStrings("velocity3.txt");
  velocity3 = float(split(stuff33[0], ','));
  String[] stuff34 = loadStrings("velocity4.txt");
  velocity4 = float(split(stuff34[0], ','));
  String[] stuff35 = loadStrings("velocity5.txt");
  velocity5 = float(split(stuff35[0], ','));
  String[] stuff36 = loadStrings("velocity6.txt");
  velocity6 = float(split(stuff36[0], ','));
  String[] stuff37 = loadStrings("velocity7.txt");
  velocity7 = float(split(stuff37[0], ','));


  String[] stuff41 = loadStrings("disturbance1.txt");
  disturbance1 = float(split(stuff41[0], ','));
  String[] stuff42 = loadStrings("disturbance2.txt");
  disturbance2 = float(split(stuff42[0], ','));
  String[] stuff43 = loadStrings("disturbance3.txt");
  disturbance3 = float(split(stuff43[0], ','));
  String[] stuff44 = loadStrings("disturbance4.txt");
  disturbance4 = float(split(stuff44[0], ','));
  String[] stuff45 = loadStrings("disturbance5.txt");
  disturbance5 = float(split(stuff45[0], ','));
  String[] stuff46 = loadStrings("disturbance6.txt");
  disturbance6 = float(split(stuff46[0], ','));
  String[] stuff47 = loadStrings("disturbance7.txt");
  disturbance7 = float(split(stuff47[0],','));

  String[] stuff51 = loadStrings("inertia1.txt");
  inertia1 = float(split(stuff51[0], ','));
  String[] stuff52 = loadStrings("inertia2.txt");
  inertia2 = float(split(stuff52[0], ','));
  String[] stuff53 = loadStrings("inertia3.txt");
  inertia3 = float(split(stuff53[0], ','));
  String[] stuff54 = loadStrings("inertia4.txt");
  inertia4 = float(split(stuff54[0], ','));
  String[] stuff55 = loadStrings("inertia5.txt");
  inertia5 = float(split(stuff55[0], ','));
  String[] stuff56 = loadStrings("inertia6.txt");
  inertia6 = float(split(stuff56[0], ','));
  String[] stuff57 = loadStrings("inertia7.txt");
  inertia7 = float(split(stuff57[0],','));

  String[] stuff61 = loadStrings("delinertia1.txt");
  delinertia1 = float(split(stuff61[0], ','));
  String[] stuff62 = loadStrings("delinertia2.txt");
  delinertia2 = float(split(stuff62[0], ','));
  String[] stuff63 = loadStrings("delinertia3.txt");
  delinertia3 = float(split(stuff63[0], ','));
  String[] stuff64 = loadStrings("delinertia4.txt");
  delinertia4 = float(split(stuff64[0], ','));
  String[] stuff65 = loadStrings("delinertia5.txt");
  delinertia5 = float(split(stuff65[0], ','));
  String[] stuff66 = loadStrings("delinertia6.txt");
  delinertia6 = float(split(stuff66[0], ','));
  String[] stuff67 = loadStrings("delinertia7.txt");
  delinertia7 = float(split(stuff67[0],','));


  String[] stuff71 = loadStrings("spring1.txt");
  spring1 = float(split(stuff71[0], ','));
  String[] stuff72 = loadStrings("spring2.txt");
  spring2 = float(split(stuff72[0], ','));
  String[] stuff73 = loadStrings("spring3.txt");
  spring3 = float(split(stuff73[0], ','));
  String[] stuff74 = loadStrings("spring4.txt");
  spring4 = float(split(stuff74[0], ','));
  String[] stuff75 = loadStrings("spring5.txt");
  spring5 = float(split(stuff75[0], ','));
  String[] stuff76 = loadStrings("spring6.txt");
  spring6 = float(split(stuff76[0], ','));
  String[] stuff77 = loadStrings("spring7.txt");
  spring7 = float(split(stuff77[0],','));


  String[] stuff81 = loadStrings("damping1.txt");
  damping1 = float(split(stuff81[0], ','));
  String[] stuff82 = loadStrings("damping2.txt");
  damping2 = float(split(stuff82[0], ','));
  String[] stuff83 = loadStrings("damping3.txt");
  damping3 = float(split(stuff83[0], ','));
  String[] stuff84 = loadStrings("damping4.txt");
  damping4 = float(split(stuff84[0], ','));
  String[] stuff85 = loadStrings("damping5.txt");
  damping5 = float(split(stuff85[0], ','));
  String[] stuff86 = loadStrings("damping6.txt");
  damping6 = float(split(stuff86[0], ','));
  String[] stuff87 = loadStrings("damping7.txt");
  damping7 = float(split(stuff87[0],','));
}

void draw() {
  i++;
  background(background);
  translate(width/2, height/2);
  
  textFont(g, titleFontSize);
  fill(titlered,titlegreen,titleblue);
  text("Represantation of behavior of a stable rocket under random Disturbance.", posXtitle, posYtitle);

  fill(distred,distgreen,distblue);
  textFont(g, smallFontSize);
  text("Disturbance",posXdist,poYdist);

  if (n == 1) {
    fill(simleftred, simleftgreen, simleftblue);
    textFont(g, simFontSize);
    text("Simulation 1.", posXLeft,posYLeft);
    
    fill(leftred, leftgreen, leftblue);
    textFont(f, otherFontSize);
    text("Inertia (Kg/m^2):", posXLeft,posYLeft + otherFontSize);
    text(inertia1[0], posXLeft + delxLeft,posYLeft + otherFontSize);
    text("Delta Inertia ((Kg/m^2)/s):", posXLeft,posYLeft + 2*otherFontSize);
    text(delinertia1[0] * 100, posXLeft + delxLeft,posYLeft + 2*otherFontSize);
    text("Delta Restoring ((N m)/rad):", posXLeft,posYLeft + 3*otherFontSize);
    text(spring1[0], posXLeft + delxLeft,posYLeft + 3*otherFontSize);
    text("Delta Damping ((N m)/(rad/s)):", posXLeft,posYLeft + 4*otherFontSize);
    text(damping1[0], posXLeft + delxLeft,posYLeft + 4*otherFontSize);

    fill(rightred,rightgreen,rightblue);
    text("Time (s):", posXRight, posYRight);
    text(time, posXRight + delXRight, posYRight);
    text("Angle (Deg):", posXRight, posYRight + otherFontSize);
    text(degrees(angle1[i]), posXRight + delXRight, posYRight + otherFontSize);
    text("Velocity (Deg/s):", posXRight, posYRight + 2*otherFontSize);
    text(degrees(velocity1[i]), posXRight + delXRight, posYRight + 2*otherFontSize);
    text("Acceleration (Deg/s^2):", posXRight, posYRight + 3*otherFontSize);
    text(degrees(acceleration1[i]), posXRight + delXRight, posYRight + 3*otherFontSize);
    text("Disturbance (N m):", posXRight, posYRight + 4*otherFontSize);
    text(degrees(disturbance1[i]), posXRight + delXRight, posYRight + 4*otherFontSize);
    
    stroke(scirclered,scirclegreen,scircleblue);
    fill(circlered,circlegreen,circleblue);
    ellipse(posXCircle,posYCircle,sizeCircle,sizeCircle);
    
    fill(rectred,rectgreen,rectblue);
    stroke(srectred,srectgreen,srectblue);
    rect(posXCircle,posYCircle - sizeCircle/4,-int(disturbance1[i]*multiplyier),sizeCircle/2);
 
    time = time + 0.01;
    rotate(angle1[i]);
  }


  if (n == 2) {
    fill(simleftred, simleftgreen, simleftblue);
    textFont(g, simFontSize);
    text("Simulation 2.", posXLeft,posYLeft);
    
    fill(leftred, leftgreen, leftblue);
    textFont(f, otherFontSize);
    text("Inertia (Kg/m^2):", posXLeft,posYLeft + otherFontSize);
    text(inertia2[0], posXLeft + delxLeft,posYLeft + otherFontSize);
    text("Delta Inertia ((Kg/m^2)/s):", posXLeft,posYLeft + 2*otherFontSize);
    text(delinertia2[0] * 100, posXLeft + delxLeft,posYLeft + 2*otherFontSize);
    text("Delta Restoring ((N m)/rad):", posXLeft,posYLeft + 3*otherFontSize);
    text(spring2[0], posXLeft + delxLeft,posYLeft + 3*otherFontSize);
    text("Delta Damping ((N m)/(rad/s)):", posXLeft,posYLeft + 4*otherFontSize);
    text(damping2[0], posXLeft + delxLeft,posYLeft + 4*otherFontSize);
    
    fill(rightred,rightgreen,rightblue);
    text("Time (s):", posXRight, posYRight);
    text(time, posXRight + delXRight, posYRight);
    text("Angle (Deg):", posXRight, posYRight + otherFontSize);
    text(degrees(angle2[i]), posXRight + delXRight, posYRight + otherFontSize);
    text("Velocity (Deg/s):", posXRight, posYRight + 2*otherFontSize);
    text(degrees(velocity2[i]), posXRight + delXRight, posYRight + 2*otherFontSize);
    text("Acceleration (Deg/s^2):", posXRight, posYRight + 3*otherFontSize);
    text(degrees(acceleration2[i]), posXRight + delXRight, posYRight + 3*otherFontSize);
    text("Disturbance (N m):", posXRight, posYRight + 4*otherFontSize);
    text(degrees(disturbance2[i]), posXRight + delXRight, posYRight + 4*otherFontSize);
    
    stroke(scirclered,scirclegreen,scircleblue);
    fill(circlered,circlegreen,circleblue);
    ellipse(posXCircle,posYCircle,sizeCircle,sizeCircle);
    
    fill(rectred,rectgreen,rectblue);
    stroke(srectred,srectgreen,srectblue);
    rect(posXCircle,posYCircle - sizeCircle/4,-int(disturbance2[i]*multiplyier),sizeCircle/2);
 
    time = time + 0.01;
    rotate(angle2[i]);
  }


  if (n == 3) {
    fill(simleftred, simleftgreen, simleftblue);
    textFont(g, simFontSize);
    text("Simulation 3.", posXLeft,posYLeft);
    
    fill(leftred, leftgreen, leftblue);
    textFont(f, otherFontSize);
    text("Inertia (Kg/m^2):", posXLeft,posYLeft + otherFontSize);
    text(inertia3[0], posXLeft + delxLeft,posYLeft + otherFontSize);
    text("Delta Inertia ((Kg/m^2)/s):", posXLeft,posYLeft + 2*otherFontSize);
    text(delinertia3[0] * 100, posXLeft + delxLeft,posYLeft + 2*otherFontSize);
    text("Delta Restoring ((N m)/rad):", posXLeft,posYLeft + 3*otherFontSize);
    text(spring3[0], posXLeft + delxLeft,posYLeft + 3*otherFontSize);
    text("Delta Damping ((N m)/(rad/s)):", posXLeft,posYLeft + 4*otherFontSize);
    text(damping3[0], posXLeft + delxLeft,posYLeft + 4*otherFontSize);
    
    fill(rightred,rightgreen,rightblue);
    text("Time (s):", posXRight, posYRight);
    text(time, posXRight + delXRight, posYRight);
    text("Angle (Deg):", posXRight, posYRight + otherFontSize);
    text(degrees(angle3[i]), posXRight + delXRight, posYRight + otherFontSize);
    text("Velocity (Deg/s):", posXRight, posYRight + 2*otherFontSize);
    text(degrees(velocity3[i]), posXRight + delXRight, posYRight + 2*otherFontSize);
    text("Acceleration (Deg/s^2):", posXRight, posYRight + 3*otherFontSize);
    text(degrees(acceleration3[i]), posXRight + delXRight, posYRight + 3*otherFontSize);
    text("Disturbance (N m):", posXRight, posYRight + 4*otherFontSize);
    text(degrees(disturbance3[i]), posXRight + delXRight, posYRight + 4*otherFontSize);
    
    stroke(scirclered,scirclegreen,scircleblue);
    fill(circlered,circlegreen,circleblue);
    ellipse(posXCircle,posYCircle,sizeCircle,sizeCircle);
    
    fill(rectred,rectgreen,rectblue);
    stroke(srectred,srectgreen,srectblue);
    rect(posXCircle,posYCircle - sizeCircle/4,-int(disturbance3[i]*multiplyier),sizeCircle/2);
 
    time = time + 0.01;
    rotate(angle3[i]);
  }


  if (n == 4) {
    fill(simleftred, simleftgreen, simleftblue);
    textFont(g, simFontSize);
    text("Simulation 4.", posXLeft,posYLeft);
    
    fill(leftred, leftgreen, leftblue);
    textFont(f, otherFontSize);
    text("Inertia (Kg/m^2):", posXLeft,posYLeft + otherFontSize);
    text(inertia4[0], posXLeft + delxLeft,posYLeft + otherFontSize);
    text("Delta Inertia ((Kg/m^2)/s):", posXLeft,posYLeft + 2*otherFontSize);
    text(delinertia4[0] * 100, posXLeft + delxLeft,posYLeft + 2*otherFontSize);
    text("Delta Restoring ((N m)/rad):", posXLeft,posYLeft + 3*otherFontSize);
    text(spring4[0], posXLeft + delxLeft,posYLeft + 3*otherFontSize);
    text("Delta Damping ((N m)/(rad/s)):", posXLeft,posYLeft + 4*otherFontSize);
    text(damping4[0], posXLeft + delxLeft,posYLeft + 4*otherFontSize);
    
    fill(rightred,rightgreen,rightblue);
    text("Time (s):", posXRight, posYRight);
    text(time, posXRight + delXRight, posYRight);
    text("Angle (Deg):", posXRight, posYRight + otherFontSize);
    text(degrees(angle4[i]), posXRight + delXRight, posYRight + otherFontSize);
    text("Velocity (Deg/s):", posXRight, posYRight + 2*otherFontSize);
    text(degrees(velocity4[i]), posXRight + delXRight, posYRight + 2*otherFontSize);
    text("Acceleration (Deg/s^2):", posXRight, posYRight + 3*otherFontSize);
    text(degrees(acceleration4[i]), posXRight + delXRight, posYRight + 3*otherFontSize);
    text("Disturbance (N m):", posXRight, posYRight + 4*otherFontSize);
    text(degrees(disturbance4[i]), posXRight + delXRight, posYRight + 4*otherFontSize);
    
    stroke(scirclered,scirclegreen,scircleblue);
    fill(circlered,circlegreen,circleblue);
    ellipse(posXCircle,posYCircle,sizeCircle,sizeCircle);
    
    fill(rectred,rectgreen,rectblue);
    stroke(srectred,srectgreen,srectblue);
    rect(posXCircle,posYCircle - sizeCircle/4,-int(disturbance4[i]*multiplyier),sizeCircle/2);
 
    time = time + 0.01;
    rotate(angle4[i]);
  }


  if (n == 5) {
    fill(simleftred, simleftgreen, simleftblue);
    textFont(g, simFontSize);
    text("Simulation 5.", posXLeft,posYLeft);
    
    fill(leftred, leftgreen, leftblue);
    textFont(f, otherFontSize);
    text("Inertia (Kg/m^2):", posXLeft,posYLeft + otherFontSize);
    text(inertia5[0], posXLeft + delxLeft,posYLeft + otherFontSize);
    text("Delta Inertia ((Kg/m^2)/s):", posXLeft,posYLeft + 2*otherFontSize);
    text(delinertia5[0] * 100, posXLeft + delxLeft,posYLeft + 2*otherFontSize);
    text("Delta Restoring ((N m)/rad):", posXLeft,posYLeft + 3*otherFontSize);
    text(spring5[0], posXLeft + delxLeft,posYLeft + 3*otherFontSize);
    text("Delta Damping ((N m)/(rad/s)):", posXLeft,posYLeft + 4*otherFontSize);
    text(damping5[0], posXLeft + delxLeft,posYLeft + 4*otherFontSize);
    
    fill(rightred,rightgreen,rightblue);
    text("Time (s):", posXRight, posYRight);
    text(time, posXRight + delXRight, posYRight);
    text("Angle (Deg):", posXRight, posYRight + otherFontSize);
    text(degrees(angle5[i]), posXRight + delXRight, posYRight + otherFontSize);
    text("Velocity (Deg/s):", posXRight, posYRight + 2*otherFontSize);
    text(degrees(velocity5[i]), posXRight + delXRight, posYRight + 2*otherFontSize);
    text("Acceleration (Deg/s^2):", posXRight, posYRight + 3*otherFontSize);
    text(degrees(acceleration5[i]), posXRight + delXRight, posYRight + 3*otherFontSize);
    text("Disturbance (N m):", posXRight, posYRight + 4*otherFontSize);
    text(degrees(disturbance5[i]), posXRight + delXRight, posYRight + 4*otherFontSize);
    
    stroke(scirclered,scirclegreen,scircleblue);
    fill(circlered,circlegreen,circleblue);
    ellipse(posXCircle,posYCircle,sizeCircle,sizeCircle);
    
    fill(rectred,rectgreen,rectblue);
    stroke(srectred,srectgreen,srectblue);
    rect(posXCircle,posYCircle - sizeCircle/4,-int(disturbance5[i]*multiplyier),sizeCircle/2);
 
    time = time + 0.01;
    rotate(angle5[i]);
  }


  if (n == 6) {
    fill(simleftred, simleftgreen, simleftblue);
    textFont(g, simFontSize);
    text("Simulation 6.", posXLeft,posYLeft);
    
    fill(leftred, leftgreen, leftblue);
    textFont(f, otherFontSize);
    text("Inertia (Kg/m^2):", posXLeft,posYLeft + otherFontSize);
    text(inertia6[0], posXLeft + delxLeft,posYLeft + otherFontSize);
    text("Delta Inertia ((Kg/m^2)/s):", posXLeft,posYLeft + 2*otherFontSize);
    text(delinertia6[0] * 100, posXLeft + delxLeft,posYLeft + 2*otherFontSize);
    text("Delta Restoring ((N m)/rad):", posXLeft,posYLeft + 3*otherFontSize);
    text(spring6[0], posXLeft + delxLeft,posYLeft + 3*otherFontSize);
    text("Delta Damping ((N m)/(rad/s)):", posXLeft,posYLeft + 4*otherFontSize);
    text(damping6[0], posXLeft + delxLeft,posYLeft + 4*otherFontSize);
    
    fill(rightred,rightgreen,rightblue);
    text("Time (s):", posXRight, posYRight);
    text(time, posXRight + delXRight, posYRight);
    text("Angle (Deg):", posXRight, posYRight + otherFontSize);
    text(degrees(angle6[i]), posXRight + delXRight, posYRight + otherFontSize);
    text("Velocity (Deg/s):", posXRight, posYRight + 2*otherFontSize);
    text(degrees(velocity6[i]), posXRight + delXRight, posYRight + 2*otherFontSize);
    text("Acceleration (Deg/s^2):", posXRight, posYRight + 3*otherFontSize);
    text(degrees(acceleration6[i]), posXRight + delXRight, posYRight + 3*otherFontSize);
    text("Disturbance (N m):", posXRight, posYRight + 4*otherFontSize);
    text(degrees(disturbance6[i]), posXRight + delXRight, posYRight + 4*otherFontSize);
    
    stroke(scirclered,scirclegreen,scircleblue);
    fill(circlered,circlegreen,circleblue);
    ellipse(posXCircle,posYCircle,sizeCircle,sizeCircle);
    
    fill(rectred,rectgreen,rectblue);
    stroke(srectred,srectgreen,srectblue);
    rect(posXCircle,posYCircle - sizeCircle/4,-int(disturbance6[i]*multiplyier),sizeCircle/2);
 
    time = time + 0.01;
    rotate(angle6[i]);
  }

  if (n == 7) {
    fill(simleftred, simleftgreen, simleftblue);
    textFont(g, simFontSize);
    text("Simulation 7.", posXLeft,posYLeft);
    
    fill(leftred, leftgreen, leftblue);
    textFont(f, otherFontSize);
    text("Inertia (Kg/m^2):", posXLeft,posYLeft + otherFontSize);
    text(inertia7[0], posXLeft + delxLeft,posYLeft + otherFontSize);
    text("Delta Inertia ((Kg/m^2)/s):", posXLeft,posYLeft + 2*otherFontSize);
    text(delinertia7[0] * 100, posXLeft + delxLeft,posYLeft + 2*otherFontSize);
    text("Delta Restoring ((N m)/rad):", posXLeft,posYLeft + 3*otherFontSize);
    text(spring7[0], posXLeft + delxLeft,posYLeft + 3*otherFontSize);
    text("Delta Damping ((N m)/(rad/s)):", posXLeft,posYLeft + 4*otherFontSize);
    text(damping7[0], posXLeft + delxLeft,posYLeft + 4*otherFontSize);
    
    fill(rightred,rightgreen,rightblue);
    text("Time (s):", posXRight, posYRight);
    text(time, posXRight + delXRight, posYRight);
    text("Angle (Deg):", posXRight, posYRight + otherFontSize);
    text(degrees(angle7[i]), posXRight + delXRight, posYRight + otherFontSize);
    text("Velocity (Deg/s):", posXRight, posYRight + 2*otherFontSize);
    text(degrees(velocity7[i]), posXRight + delXRight, posYRight + 2*otherFontSize);
    text("Acceleration (Deg/s^2):", posXRight, posYRight + 3*otherFontSize);
    text(degrees(acceleration7[i]), posXRight + delXRight, posYRight + 3*otherFontSize);
    text("Disturbance (N m):", posXRight, posYRight + 4*otherFontSize);
    text(degrees(disturbance7[i]), posXRight + delXRight, posYRight + 4*otherFontSize);
    
    stroke(scirclered,scirclegreen,scircleblue);
    fill(circlered,circlegreen,circleblue);
    ellipse(posXCircle,posYCircle,sizeCircle,sizeCircle);
    
    fill(rectred,rectgreen,rectblue);
    stroke(srectred,srectgreen,srectblue);
    rect(posXCircle,posYCircle - sizeCircle/4,-int(disturbance7[i]*multiplyier),sizeCircle/2);
 
    time = time + 0.01;
    rotate(angle7[i]);
  }

  
  if ( i == 1202) {
    i = 0;
    n++;
    time = 0;
  }
  if (n == 8) {
    n = 1;
  }

  image(rocket, picX, picY);
}