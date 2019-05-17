// JavaScript Document
 var NowFrame = 1;
				var MaxFrame = 3;
				function chgtt(d1) {
				if(Number(d1)){
				clearTimeout(theTimer);  //当触动按扭时，清除计时器
				NowFrame=d1;                //设当前显示层
				}
					for(var i=1;i<=MaxFrame;i++){
					if(i==NowFrame){
					document.getElementById('book'+NowFrame).style.display ='block';   //当前层
					document.getElementById('bg'+NowFrame).background ="image/right-menu1.gif";
					}
					else
					{document.getElementById('book'+i).style.display ='none';    //隐藏其他层
					document.getElementById('bg'+i).background ="image/right-menu2.gif";
		               }	
					}
			       { if(NowFrame == MaxFrame)   //设置下一个显示层
					NowFrame = 1;
				   else
					NowFrame++;}
					 theTimer=setTimeout('chgtt()', 8000);   //设置定时器，显示下一个层
				}
window.onLoad=chgtt() ; //当页面载入时，时调用chgtt( )函数，小说、非小说、少儿轮换		