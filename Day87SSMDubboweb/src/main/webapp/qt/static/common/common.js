// 下拉菜单
$(function() {
	var objStr = ".topsr dl";
	$(objStr).each(function(i) {
		$(this).mouseover(function() {
			$($(objStr + " dd")[i]).show();
			$($(objStr + " dt")[i]).addClass("topsrdt");
		});
		$(this).hover(function() {
		}, function() {
			$($(objStr + " dd")[i]).hide();
			$($(objStr + " dt")[i]).removeClass("topsrdt");
		});
	});
});
// 顶部打开关闭
$(function() {
	$(".topClose a").click(function() {
		$(".top").slideUp(0, function() {
			$(".topOpen").slideDown(0);
		});
	});
	$(".topOpen a").click(function() {
		$(".topOpen").slideUp(0, function() {
			$(".top").slideDown(0);
		});
	});
});
// 商品搜索
$(function() {
	var objStr = $("#searchInput");
	var objStrVal = "请输入书名或作者";
	objStr.val(objStrVal);
	objStr.focus(function() {
		if (objStr.val() == objStrVal)
			objStr.val("");
	});
	objStr.blur(function() {
		if (objStr.val() == "")
			objStr.val(objStrVal);
	});
});
// 热门搜索关键字
$(function() {
	$(".tags a:first").addClass("c1");
	$(".notice a:first").addClass("c2");
});
// 顶部导航
$(function shownav() {
	var a1 = $("url");
	var a2 = $(".nav ul li");
	for ( var i = 0; i < a2.length; i++) {
		if (a2[i] == a1) {
			$(a2[i]).addClass("select");
			return;
		}
	}
	$(a2[0]).addClass("select");
})
// 第一板块 - 自动轮换广告
$(function() {
	var objText = ".rotation ul.text li";
	var objContent = ".rotation ul.img li";
	$("objText:first").addClass("on");
	$("objContent:not(:first)").addClass("none");
	autoroll();
	hookThumb();

	var i = -1;
	var offset = 4000;
	var timer = null;
	function autoroll() {
		n = $(objText).length - 1;
		i++;
		if (i > n) {
			i = 0;
		}
		slide(i);
		timer = window.setTimeout(autoroll, offset);
	}
	function slide(i) {
		$(objText).eq(i).addClass("on").siblings().removeClass("on");
		$(objContent).eq(i).fadeIn(1000).siblings(objContent).hide();
	}
	function hookThumb() {
		$(objText).hover(function() {
			if (timer) {
				clearTimeout(timer);
				i = $(this).prevAll().length;
				slide(i);
			}
		}, function() {
			timer = window.setTimeout(autoroll, offset);
			this.blur();
			return false;
		});
	}
});
// 第一板块 - 自动轮换选项卡
$(function() {
	var objText = ".rotationcard .text li";
	var objContent = ".rotationcard .content ul";
	$("objText:first").addClass("on");
	$("objContent:not(:first)").addClass("none");
	autoroll();
	hookThumb();

	var i = -1;
	var offset = 6000;
	var timer = null;
	function autoroll() {
		n = $(objText).length - 1;
		i++;
		if (i > n) {
			i = 0;
		}
		slide(i);
		timer = window.setTimeout(autoroll, offset);
	}
	function slide(i) {
		$(objText).eq(i).addClass("on").siblings().removeClass("on");
		$(objContent).eq(i).show().siblings(objContent).hide();
	}
	function hookThumb() {
		$(objText).hover(function() {
			if (timer) {
				clearTimeout(timer);
				i = $(this).prevAll().length;
				slide(i);
			}
		}, function() {
			timer = window.setTimeout(autoroll, offset);
			this.blur();
			return false;
		});
	}
});
// 单行滚动
function SingleScroll() {
	$(".tips2 ul").animate({
		marginTop : "-25px"
	}, 500, function() {
		$(this).css({
			marginTop : "0px"
		}).find("li:first").appendTo(this);
	});
}
$(setInterval("SingleScroll()", 4000));
// 快捷选项卡
$(function() {
	var Title = $(".prepaid .title");
	var Content = $(".prepaid .content ul");
	Content.not(":first").addClass("none");
	Title.find("ul li").eq(1).click(function() {
		Content.eq(1).show();
		Content.eq(0).hide();
		Title.removeClass("title01").addClass("title02");
	});
	Title.find("ul li").eq(0).click(function() {
		Content.eq(0).show();
		Content.eq(1).hide();
		Title.removeClass("title02").addClass("title01");
	});
});
// 验证码刷新
function changeImage() {
	// 单击触发图片重载事件，完成图片验证码的更换
	document.getElementById("imgRandom").src = document
			.getElementById("imgRandom").src
			+ '?';
}

// 提示框效果
var intTimeStep = 20;
var isIe = (window.ActiveXObject) ? true : false;
var intAlphaStep = (isIe) ? 5 : 0.05;
var curSObj = null;
var curOpacity = null;
var stopTime = 0;
function startObjMessage(objId) {
	curSObj = document.getElementById(objId);
	if (isIe) {
		curSObj.style.cssText = 'DISPLAY: none; Z-INDEX: 1; FILTER: alpha(opacity=0); POSITION: absolute;';
	}
	setMessage();
}
function setMessage() {
	if (isIe) {
		curSObj.filters.alpha.opacity = 0;
	} else {
		curOpacity = 0;
		curSObj.style.opacity = 0;
	}
	curSObj.style.display = '';
	setMessageShow();
}
function setMessageShow() {
	if (isIe) {
		curSObj.filters.alpha.opacity += intAlphaStep;
		if (curSObj.filters.alpha.opacity < 100) {
			setTimeout('setMessageShow()', intTimeStep);
		} else {
			stopTime += 10;
			if (stopTime < 500) {
				setTimeout('setMessageShow()', intTimeStep);
			} else {
				stopTime = 0;
				setMessageClose();
			}
		}
	} else {
		curOpacity += intAlphaStep;
		curSObj.style.opacity = curOpacity;
		if (curOpacity < 1) {
			setTimeout('setMessageShow()', intTimeStep);
		} else {
			stopTime += 10;
			if (stopTime < 200) {
				setTimeout('setMessageShow()', intTimeStep);
			} else {
				stopTime = 0;
				setMessageClose();
			}
		}
	}
}
function setMessageClose() {
	if (isIe) {
		curSObj.filters.alpha.opacity -= intAlphaStep;
		if (curSObj.filters.alpha.opacity > 0) {
			setTimeout('setMessageClose()', intTimeStep);
		} else {
			curSObj.style.display = 'none';
		}
	} else {
		curOpacity -= intAlphaStep;
		if (curOpacity > 0) {
			curSObj.style.opacity = curOpacity;
			setTimeout('setMessageClose()', intTimeStep);
		} else {
			curSObj.style.display = 'none';
		}
	}
}

function mywar() {
	alert("该功能正在维护或开发中...敬请关注！");
	return(false);
}
