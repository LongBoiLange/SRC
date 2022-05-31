void tegnKurver(int year){
  textSize(12);
  
  for(Data d : datalisteSuicide){
  if(year == d.Year && (d.Country.equals("Denmark")||d.Country.equals("Spain")||d.Country.equals("France")||d.Country.equals("Germany")||d.Country.equals("Sweden")||d.Country.equals("Netherlands"))){  
   fill(100,100,300);
    circle(yearCounter*80,520-d.Data*150,7);
    String tekst = d.Country; 
     text(tekst,yearCounter*80+10,520-d.Data*150);
   
  }}
  
  for(DataF d : datalisteFattig){
   
    if(year==d.YearFat && (d.CountryFat.equals("Denmark")||d.CountryFat.equals("Spain")||d.CountryFat.equals("France")||d.CountryFat.equals("Germany")||d.CountryFat.equals("Sweden")||d.CountryFat.equals("Netherlands"))){
    fill(100,200,400);
      circle(yearCounter*80,1042-d.DataFat*200,7);
   String tekst1 = d.CountryFat; 
    text(tekst1,yearCounter*80+10,1042-d.DataFat*200);
    fill(500,500,500);
 
  
  }}
  
}
