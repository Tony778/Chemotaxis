  //declare bacteria variables here   
 Bacteria[] newBact;
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(700,700);
            frameRate(15);
 	newBact = new Bacteria[50];
 	for (int i = 0; i < newBact.length; i++){
        newBact[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria  
 	background(150,150,150);
 	for (int i = 0; i < newBact.length; i++){
            newBact[i].move();
 	newBact[i].show();
   }
   textSize(20);
 	fill(0); 
 	text ("Tony's Chemotaxis Program", 220, 25);
}
   
 class Bacteria    
 {     
 	//lots of java!  
 	int myX, myY, numSize;

 	Bacteria() //constructor 
 	 {
 	 	numSize = 50; 
 	 	myX = 250;
 	 	myY = 500;
 	 }
 	 void move(){
 	 	myX = myX + (int)(Math.random() * 5) -2;
        myY = myY + (int)(Math.random() * 5) - 2; 
 	 }
 	 void show(){
 	 	fill (0,200,200);
 	 	stroke(0);
        ellipse (myX, myY, numSize, numSize);
 	 }
 }    


