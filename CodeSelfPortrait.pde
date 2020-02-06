PFont x;
PFont l;
int a;
int b;
public int siz = 70;
boolean grow=true;

float angle;
float moove;

void setup()
{
  size(1000,800);
  x=createFont("Monaco",10);
  l=createFont("Comic Sans MS",siz);

}

void draw()
{
 background(255, 148, 244);
 ellipseMode(CENTER);
 
 textFont(x);
  fill(0);
  text(a,10,10);
  text(b,10,20);
  
  fill(255, 232, 237);
  stroke(255, 232, 237);
  ellipse(290,400,150,300);
  ellipse(710,400,150,300);
  
  rect(400,700,200,400);
  
  fill(255, 240, 243);
  stroke(255, 240, 243);
  ellipse(500,400,500,700);
  
  fill(255);
  stroke(0);
  arc(400,330,125,150,0,PI,OPEN);
  arc(600,330,125,150,0,PI,OPEN);
  
  fill(115, 255, 225);
  stroke(115, 255, 225);
  ellipse(400,365,55,55);
  ellipse(600,365,55,55);
  
  fill(0);
  stroke(0);
  ellipse(400,365,25,25);
  ellipse(600,365,25,25);
  
  fill(255);
  stroke(255);
  rect(405,353,10,10);
  rect(605,353,10,10);
  
  fill(255, 232, 237);
  stroke(255, 232, 237);
  triangle(500,440,450,525,550,525);
  ellipse(475,510,50,40);
  ellipse(525,510,50,40);
  
  fill(255);
  stroke(0);
  arc(500,600,200,100,PI,2*PI,CHORD);
  
  fill(59, 0, 13);
  stroke(59, 0, 13);
  ellipse(500,200,300,200);
  ellipse(400,220,300,200);
  ellipse(600,213,300,200);
  ellipse(400,100,200,135);
  ellipse(537,124,123,173);
  ellipse(615,132,111,162);
  ellipse(500,90,100,100);

  stroke(20, 0, 4);
  rect(325,320,150,20);
  rect(525,320,150,20);
  
  fill(0, 125, 10);
  stroke(0, 125, 10);
  arc(500,870,600,200,PI,2*PI,CHORD);
  
  textFont(l);
  fill(143, 214, 255);
  if(grow)
  {
    if (second()%2==0) 
    {  
      moove = moove+.001;
      if(moove>.01)
      grow=false;
    }
  }else
  {
  moove=moove-.001;
  if(moove==0)
  grow=true;
  }
    
  angle = angle + moove;
  float c1 = cos(angle);
  translate(width/2, height/2);
  rotate(c1);
  text("SAVE",25-width/2,200-height/2);
  text("YOUR",25-width/2,400-height/2);
  text("WORK",25-width/2,600-height/2);
  text("SAVE",750-width/2,200-height/2);
  text("YOUR",750-width/2,400-height/2);
  text("WORK",750-width/2,600-height/2);
  
  
  a=mouseX;
  b=mouseY;
  
  //moveTextAndStuff();
}

/*void moveTextAndStuff()
{
  if(grow)
  siz=siz+3;
  else
  siz=siz-3;
  
  if(siz>130)
   grow=false;
  else if(siz<10)
  grow=true;
  
}*/
