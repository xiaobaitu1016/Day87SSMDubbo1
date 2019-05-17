// JavaScript Document
 function setTab03Syn ( i )
 {
  selectTab03Syn(i);
 }
 
 function selectTab03Syn ( i )
 {
  switch(i){
   case 1:
   document.getElementById("TabTab03Con1").style.display="block";
   document.getElementById("TabTab03Con2").style.display="none";
   document.getElementById("TabTab03Con3").style.display="none";
   document.getElementById("font1").style.color="#000000";
   document.getElementById("font2").style.color="#ffffff";
   document.getElementById("font3").style.color="#ffffff";
   break;
   case 2:
   document.getElementById("TabTab03Con1").style.display="none";
   document.getElementById("TabTab03Con2").style.display="block";
   document.getElementById("TabTab03Con3").style.display="none";
   document.getElementById("font1").style.color="#ffffff";
   document.getElementById("font2").style.color="#000000";
   document.getElementById("font3").style.color="#ffffff";
   break;
   case 3:
   document.getElementById("TabTab03Con1").style.display="none";
   document.getElementById("TabTab03Con2").style.display="none";
   document.getElementById("TabTab03Con3").style.display="block";
   document.getElementById("font1").style.color="#ffffff";
   document.getElementById("font2").style.color="#ffffff";
   document.getElementById("font3").style.color="#000000";
   break;
  }
 }
