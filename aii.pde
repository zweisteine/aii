/* @pjs preload="paper3.jpg,scissor3.jpg,stone3.jpg,baoman4.jpg,baomanb2.jpg,baomanp2.jpg"; */
PImage photo1, photo2, photo3, photo4, photo5, photo6;
int choice=0;
int cchoice=0;
int ludus=0;
void setup(){
  size(500,500);
  background(255);
  photo1 = loadImage("paper3.jpg");
  photo2 = loadImage("scissor3.jpg");
  photo3 = loadImage("stone3.jpg");
  photo4 = loadImage("baoman4.jpg");
 photo5 = loadImage("baomanb2.jpg"); 
 photo6 = loadImage("baomanp2.jpg");


}
//*******************************
void draw(){
  image(photo1, 50, 300);
  image(photo2, 200, 300);
  image(photo3, 350, 300);
  
  textSize(28);
  text("You",100,100);
  text("AI",400,100);
  if(mousePressed==true){
    background(255);
    fill(255);
    strokeWeight(3);
    rect(50,300,100,100);
    rect(200,300,100,100);
    rect(350,300,100,100);
    fill(0);
    delay(50);
    if(choice==1){text("paper",100,200);}
    if(choice==2){text("scissor",100,200);}
    if(choice==3){text("stone",100,200);}
    if(cchoice==1){text("paper",400,200);}
    if(cchoice==2){text("scissor",400,200);}
    if(cchoice==3){text("stone",400,200);}
    judge();
   // if(cchoice==)
  }
}
//******************************
void mousePressed(){
  if((mouseX>=50)&&(mouseX<=150)&&(mouseY>=300)&&(mouseY<=400)){
    choice=1;
  }
  if((mouseX>=200)&&(mouseX<=300)&&(mouseY>=300)&&(mouseY<=400)){
    choice=2;
  }
  if((mouseX>=350)&&(mouseX<=450)&&(mouseY>=300)&&(mouseY<=400)){
    choice=3;
  }
  println(choice+ " " +cchoice);
  ai();
}
//******************************
void ai(){
  cchoice=int(random(1,4));



}
//*******************************
void judge(){
  if(cchoice==choice){
    ludus=2;
  }
  if(cchoice>choice){
    ludus=3;
    if((cchoice==3)&&(choice==1)){
      ludus=1;
    }
  }
  if(cchoice<choice){
    ludus=1;
    if((cchoice==1)&&(choice==3)){
      ludus=3;
    }
  }
  if(ludus==1){image(photo4, 200, 0);textSize(60);text("WIN",200,200);}
  if(ludus==2){image(photo6, 200, 0);textSize(60);text("TIED",200,200);}
  if(ludus==3){image(photo5, 200, 0);textSize(60);text("LOSE",200,200);}
}
//*******************************
void delay(int x){
  int time=millis();
  while(millis()<time+x){}

}
