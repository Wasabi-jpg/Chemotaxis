 //declare bacteria variables here   
 Bacteria [] = colony;
 void setup()   
 {     
 	size(500,500);

 	//initialize bacteria variables here
 	colony = new Bacteria [2];
 	for(int i = 0; i<colony.length;i++){
 		colony[i] = new Bacteria();
 	}

 }   
 void draw()   
 {    
 	//move and show the bacteria 
 	colony[i].move();
 	colony[i].show();  
 }  
 class Bacteria    
 {     
 	//lots of java!   
 }    