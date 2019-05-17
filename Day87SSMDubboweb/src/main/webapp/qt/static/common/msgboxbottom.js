function FloatTop()
{
 var startX1 =document.body.offsetWidth-125 ,startY1 = 1024;
 var startX2 =0,startY2 = 500;
 var ns = (navigator.appName.indexOf("Netscape") != -1);
 var d = document;
 function ml(id,startX,startY)
 {
  var el=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id];
  if(d.layers)el.style=el;
  el.sP=function(x,y){this.style.left=x;this.style.top=y;};
  el.x = startX;
  el.y = startY;
  return el;
 }
 window.stayTopLeft=function()
 {
  var pY = ns ? pageYOffset : document.body.scrollTop;
  ftlObj.y += (pY + startY1 - ftlObj.y)/8;
  ftlObj1.y += (pY + startY2 - ftlObj1.y)/8;
  ftlObj.sP(document.body.scrollLeft+document.body.offsetWidth-125, ftlObj.y);
  ftlObj1.sP(ftlObj1.x, ftlObj1.y);
  setTimeout("stayTopLeft()", 30);
 }
//  ftlObj = ml("divStay",document.body.scrollLeft+document.body.offsetWidth-125,0);
//  ftlObj1 = ml("divStayTopLeft",0,30);
 ftlObj = ml("divStay",(document.body.scrollLeft+document.body.offsetWidth)/2+379,0);
 ftlObj1 = ml("divStayTopLeft",(document.body.scrollLeft+document.body.offsetWidth)/2+379,30);
 stayTopLeft();
}
FloatTop();