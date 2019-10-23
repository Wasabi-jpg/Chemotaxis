 //declare bacteria variables here   
 Bacteria [] colony;
 int x = 250;
 int y = 250;
 void setup()   
 {     
 	size(500,500);

 	//initialize bacteria variables here
 	colony = new Bacteria [1000];
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
 		if(dist(colony[i].myX,colony[i].myY,x,y)<25)
 		colony[i].theColor = 0;  
 	} 
 	fill(255);
 	ellipse(x,y,25,25);
 	System.out.println(x+", " + y);
 	
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, theColor;
 	Bacteria(){
 		myX = (int)(Math.random()*501);
 		myY = (int)(Math.random()*501);

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
		if(mouseX>x){
			x++;
		}else{
			x--;
		}
		if(mouseY>y){
			y++;
		}else{
			y--;
		}
		if(myX>500){
			myX = 500;
		}
		if(myX<0){
			myX = 0;
		}
		if(myY > 500){
			myY = 500;
		}
		if(myY < 0){
			myY = 0;
		}


	}


 }    