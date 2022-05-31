int yearPunktCounter = 1405;
int yearCounter = 1;
float percent = 0.4;
int year = 1990;

Table tableSuicide;
Table tableFattighed;

ArrayList<Data> datalisteSuicide = new ArrayList<Data>();
ArrayList<DataF> datalisteFattig = new ArrayList<DataF>();

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void loadData(){
  tableSuicide = loadTable("share-deaths-suicide.csv","header");
 
 for(TableRow r : tableSuicide.rows()){
   String Country = r.getString("Entity");
   int Year = r.getInt("Year");
   float Data = r.getFloat("Deaths - Self-harm - Sex: Both - Age: All Ages (Percent)");
   Data d = (new Data(Country,Year,Data));
 datalisteSuicide.add(d);
 if(d.Country.equals("Zimbabwe")){
  // println(d.Year,d.Data);
 }
 }
 
 tableFattighed = loadTable("share-of-population-in-extreme-poverty.csv","header");
  for(TableRow r : tableFattighed.rows()){
   String CountryFat = r.getString("Entity");
   int YearFat = r.getInt("Year");
   float DataFat = r.getFloat(3);
   datalisteFattig.add(new DataF(CountryFat,YearFat,DataFat));
}}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void setup(){
  fullScreen();
  clear();
  noStroke();
  baggrund();
  loadData();
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void draw(){
  frameRate(15);
  //clear();
 // baggrund();
  tegnKurver(year);
  
  
 
if(keyPressed){
  if(key=='d' || key=='D'){
    year=year+1;
    yearCounter=yearCounter+1;
    yearPunktCounter=yearPunktCounter+20;
  }

if(key=='a'||key=='A'){
  year=year-1;
  yearCounter=yearCounter-1;


  yearPunktCounter=yearPunktCounter-20;
  }}

  //fill(500,500,500);
//rect(1400,1065,450,5);             //timelinje 
//rect(yearPunktCounter-3,1058,4,15);   //year pin
//text(year,yearPunktCounter,1058);

}
