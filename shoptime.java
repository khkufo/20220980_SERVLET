package example;
import java.util.Date; //날짜 관련 정보 얻기

public class ShopTime{
   public String timenow(){
       Date day=new java.util.Date();
       String am_pm;
       int hour=day.getHours();
       int minute=day.getMinutes();
       int second=day.getSeconds();
       if(hour/12==0){
           am_pm="AM";
       }
   } 
}