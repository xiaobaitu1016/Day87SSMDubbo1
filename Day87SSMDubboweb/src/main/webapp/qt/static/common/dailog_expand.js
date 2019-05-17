// JavaScript Document
/**通用悬浮提示框
参数说明：
	StrHTML：提示信息的字符组成，可以是纯文本，也可以是HTML代码
	width：提示框宽度
	height：提示框高度
	1--原创,欢迎修改完善 欢迎加我QQ279074838交流学习
*/
function dailog_expand(StrHTML,width,height)
{
	 x=event.clientX;
	 y=event.clientY;	
	 maxWidth=document.documentElement.scrollWidth//文档可见宽度
	 //maxHeight=document.documentElement.scrollHeight//文档可见高度
	try
	{
	  var infoBody=document.getElementById("infoBody")
	}
	catch(err){}
	
	if(infoBody==null)//判断提示框是否存在，假如不存在则创建提示框
	{
	    dailog_body=document.createElement("div");
		dailog_body.id="infoBody"		
		dailog_body.style.cssText = "top:expression(this.parentNode.scrollTop +"+y+"+ 'px');"//使提示框可以随屏幕滚动
		
		tempWidth=x+width		
		if(tempWidth>=maxWidth)//判断提示框位置是否超过可见文本的最大宽度
		{
			dailog_body.style.left=x-width			
		}
		else
		{
			dailog_body.style.left=x-2		
		}
		
		
		dailog_body.style.height=height;   
		dailog_body.style.width=width; 		
		dailog_body.style.position="absolute"; 
		dailog_body.style.border="1px solid #40AF08"
		dailog_body.style.backgroundColor="#FFFFFF"
		dailog_body.innerHTML=StrHTML
		dailog_body.visibility ="visible";
		
		document.body.appendChild(dailog_body);	
		//何时关闭提示框
		dailog_body.onmouseout=function(){document.body.removeChild(dailog_body);}//鼠标移开提示框关闭
		dailog_body.ondblclick=function(){document.body.removeChild(dailog_body);}//双击提示框关闭
		
	}
	else//假如提示框已经存在，那么提示框随鼠标的移动而移动，移动范围仅限于监听目标的宽度
	{	
	     tempWidth=x+width
		if(tempWidth>=maxWidth)
		{
			dailog_body.style.left=x-width		
		}
		else
		{
			dailog_body.style.left=x-2			
		}	  
	  //dailog_body.innerHTML=StrHTML+"x:"+x+"y:"+y
	}
}
