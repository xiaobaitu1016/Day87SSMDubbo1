// JavaScript Document
 var NowFrame = 1;
				var MaxFrame = 3;
				function chgtt(d1) {
				if(Number(d1)){
				clearTimeout(theTimer);  //��������Ťʱ�������ʱ��
				NowFrame=d1;                //�赱ǰ��ʾ��
				}
					for(var i=1;i<=MaxFrame;i++){
					if(i==NowFrame){
					document.getElementById('book'+NowFrame).style.display ='block';   //��ǰ��
					document.getElementById('bg'+NowFrame).background ="image/right-menu1.gif";
					}
					else
					{document.getElementById('book'+i).style.display ='none';    //����������
					document.getElementById('bg'+i).background ="image/right-menu2.gif";
		               }	
					}
			       { if(NowFrame == MaxFrame)   //������һ����ʾ��
					NowFrame = 1;
				   else
					NowFrame++;}
					 theTimer=setTimeout('chgtt()', 8000);   //���ö�ʱ������ʾ��һ����
				}
window.onLoad=chgtt() ; //��ҳ������ʱ��ʱ����chgtt( )������С˵����С˵���ٶ��ֻ�		