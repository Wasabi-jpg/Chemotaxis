 //declare bacteria variables here   
 Bacteria [] colony;
 int x = 250;
 int y = 250;
 void setup()   
 {     
 	size(500,500);

 	//initialize bacteria variables here
 	colony = new Bacteria [200];
 	for(int i = 0; i<colony.length;i++){
 		colony[i] = new Bacteria();
 	}

 }   
 void draw()   
 {    
 	background(0);
 	
 	//move and show the bacteria
 	for(int i = 0; i<colony.length; i++){
 		colony[i].move();
 		colony[i].show();  
 	} 
 	
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, theColor;
 	Bacteria(){
 		myX = 250;
 		myY = 250;

 		theColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));

 	}
 	void show(){
 		stroke(theColor);

 		fill(theColor);
 		ellipse(myX, myY, .5, .5);
 	}
	void move(){
		myX = myX + (int)(Math.random()*7)-3;
		myY = myY + (int)(Math.random()*7)-3;
		if(mouseX>myX){
			myX = myX + (int)(Math.random()*7)-1;
			x++;
		}else{
			myX = myX +(int)(Math.random()*7)-5;
			x--;
		}
		if(mouseY>myY){
			myY = myY + (int)(Math.random()*7)-1;
			y++;
		}else{
			myY = myY + (int)(Math.random()*7)-5;
			y--;
		}


	}


 }    