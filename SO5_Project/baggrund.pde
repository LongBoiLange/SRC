void baggrund(){
int value = 80;
int value2 = 20;
int value22 = 580;
float proY = 3;
float proX =4;
int time=1989;

 noStroke();
 fill(150,10,10);
 rect(0,0,2500,1500);
 fill(500,500,500);
  rect(20,1040,2000,5); //x aksen
  rect(20,520,2000,5); //x aksen
  rect(20,0,5,1045);    //y aksen
 textSize(28);
 stroke(3);
 fill(100,200,400);
 text("Fattige pr. befolkning",1600,580);
  fill(100,100,300);
 text("Selvmord pr. Dødsfald",1600,30);
 fill(500,500,500);
 textSize(15);
 noStroke();
 
  for(int forCounter=0;forCounter<=22;forCounter++){
    time=time+1;
  rect(value,1040,5,-7);  //pins x
  text(time,value-10,1060);
  
  rect(value,520,5,-7);  //øvre pins x
  text(time,value-5,540);
  
  if(forCounter<=6){
    proY=proY-0.5;
    proX=proX-0.5;
  rect(20,value2,10,5);    //øvre pins y
   text(proX+"%",33,value2+5);
  }
  if(forCounter<=4){
   rect(20,value22,10,5);    //pins y
   text(proY+"%",33,value22+5);
  }
  value2=value2+75;
  value22 = value22+100;
  value=value+80;
 // fill(1,1,1);
  //rect(5,1050,130,130);
  //fill(500,500,500);
  } 
  
}
