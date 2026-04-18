PImage estatua;

void setup(){
  size(800,400);
  estatua = loadImage("Discus_Thrower_Copenhagen.jpg");
  
}

void draw() {
  background(0);
  image(estatua,0,0,height,width/2);
  
  fill(90,0,0);
  //primera base
  rect(505,385,170,15);
  quad(505,385,675,385,672,360,530,360);
  
  //segunda base
  fill(129,206,195);
  beginShape();
  vertex(667,353);
  vertex(668,371);
  bezierVertex(664,380,666,377,652,380);
  vertex(552,379);
  bezierVertex(535,378,534,378,523,373);
  vertex(523,352);
  bezierVertex(530,345,531,344,539,343);
  vertex(650,345);
  bezierVertex(727,360,520,372,523,351);
  endShape();
  
  //disco
  circle(528,76,55);
  noFill();
  circle(528,76,40);
  circle(528,76,25);
  circle(528,76,10);
  fill(129,206,195);
  
  //pies
  triangle(553,355,544,312,568,308);
  triangle(599,353,651,355,609,327);
  
  //pierna izq
  quad(558,307,580,290,617,287,567,322);
  
  //muslo izq
  beginShape();
  vertex(606,289);
  bezierVertex(570,315,579,270,603,274);
  bezierVertex(615,272,608,260,587,232);
  vertex(625,254);
  vertex(605,296);
  endShape();
  
  //muslo der
  quad(645,248,620,260,575,224,593,188);
  
  //pierna der
  quad(605,337,608,300,634,281,619,335);
  beginShape();
  vertex(645,248);
  vertex(634,281);
  vertex(608,300);
  bezierVertex(595,293,620,266,620,260);
  endShape();
  
  //culo
  beginShape();
  vertex(577,225);
  bezierVertex(550,215,542,200,568,159);
  vertex(591,171);
  vertex(594,191);
  endShape();
  
  //espalda
  beginShape();
  vertex(568,159);
  bezierVertex(583,124,583,124,614,102);
  vertex(624,157);
  vertex(591,171);
  endShape();
  
  //core
  quad(608,206,613,183,591,161,590,184);
  triangle(605,176,591,161,620,161);
  quad(605,175,624,157,633,174,614,184);
  line(595,161,583,149);
  
  //brazo izq
  beginShape();
  vertex(614,102);
  vertex(579,86);
  vertex(538,73);
  vertex(523,71);
  vertex(517,76);
  vertex(511,78);
  vertex(502,84);
  vertex(500,82);
  vertex(507,72);
  vertex(496,67);
  vertex(505,50);
  vertex(524,58);
  vertex(561,61);
  vertex(610,76);
  vertex(633,88);
  vertex(643,101);
  vertex(653,109);
  vertex(665,136);
  endShape();
  line(505,65,499,63);
  line(507,60,500,57);
  line(509,56,503,53);
  
  //brazo der
  beginShape();
  vertex(665,136);
  vertex(666,145);
  bezierVertex(674,155,676,159,673,183);
  bezierVertex(675,185,676,207,674,210);
  bezierVertex(677,229,672,238,655,259);
  vertex(640,282);
  vertex(628,280);
  vertex(626,271);
  vertex(636,260);
  vertex(635,259);
  vertex(627,262);
  vertex(623,261);
  vertex(645,249);
  vertex(646,250);
  bezierVertex(656,235,648,234,659,221);
  bezierVertex(661,205,654,198,657,180);
  bezierVertex(648,158,625,197,624,156);
  bezierVertex(603,146,603,134,616,118);
  vertex(615,102);
  endShape();
  line(625,155,645,135);
  line(645,268,636,281);
  line(642,266,630,282);
  line(638,264,628,276);
  
  //cabeza
  circle(680,110,35);
  beginShape();
  vertex(669,97);
  bezierVertex(663,109,669,120,684,126);
  vertex(664,133);
  vertex(647,124);
  vertex(648,113);
  endShape();
  
  //cara
  line(662,110,662,113);
  line(669,123,664,118);
  line(663,116,655,120);
  line(654,124,651,120);
  
  
  if(mouseX>400){
    fill(255);
  }
  else
  {
    fill(190);
  }
  textSize(20);
  text("  X:"+(mouseX+400)+" Y:"+mouseY,mouseX,mouseY);
}
