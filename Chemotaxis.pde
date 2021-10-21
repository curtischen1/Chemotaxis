Bacteria[] bob = new Bacteria[10];
int x, y;
 void setup()
 {
   size(600,600);
   frameRate(15);
 }
 void draw()
 {
   bob = new Bacteria[100];
   background(192,12,74);
   line(x, y, 300, 0);
   for(int i = 0; i < bob.length; i++){
   bob[i] = new Bacteria(); 
   bob[i].move();
   bob[i].show();
   }
 }
 class Bacteria
 {
   int myX, myY, r, g, b;
   Bacteria()
   {
    myX = x;
    myY = y;
    r = (int)(Math.random()*255);
    g = (int)(Math.random()*255);
    b = (int)(Math.random()*255);
   }
   void move()
   {
   if(mouseX > x){
    x = x + (int)(Math.random()*20-4); 
    y = y + (int)(Math.random()*20-10); 
   }
   else{
    x = x + (int)(Math.random()*20-16);
    y = y + (int)(Math.random()*20-10); 
   }
   if(mouseY > y){
    y = y + (int)(Math.random()*20-4); 
    x = x + (int)(Math.random()*20-10); 
   }
   else{
    y = y + (int)(Math.random()*20-16);
    x = x + (int)(Math.random()*20-10); 
   }
   }
   void show()
   {
    ellipse(x, y, 10, 10);
    fill(r,g,b);
   }
}

