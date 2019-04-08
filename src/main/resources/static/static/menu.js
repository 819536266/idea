/* 用于整站顶部导航下拉菜单 */
function menuFix() {
	if (document.getElementById("nav"))
	{
		
		var sfEls = document.getElementById("nav").getElementsByTagName("li");	
		for (var i=0; i<sfEls.length; i++) {
		sfEls[i].onmouseover=function() {
		this.className+=(this.className.length>0? " ": "") + "sfhover";
		}

		sfEls[i].onmouseout=function() {
		this.className=this.className.replace(new RegExp("( ?|^)sfhover\\b"), "");
		}
	}
	}
	addLoadEvent(proSubMenu);
	addLoadEvent(switchTab);
	addLoadEvent(switchTab_forStorage);
	addLoadEvent(fileLinks);	 
}
/*window.onload=menuFix;*/

/* 用于页面载入时加载函数，可一次性加载多个函数
	用法：addLoadEvent(FuncName);
	*/
function addLoadEvent(func) { 
    var oldonload = window.onload; 
    if (typeof window.onload != 'function') { 
        window.onload = func; 
    }
    else { 
        window.onload = function() { 
            if (oldonload) { 
                oldonload(); 
            } 
            func(); 
        } 
    } 
}

/* 改变OAA子站点标签切换的当前效果 
	示例：http://oaa.h3c.com.cn/MiniSite/OAA/Project_Center/Product_Search/Network/
	*/
function switchTab() {
		
		//首先判断是否存在标签区域
		if (document.getElementById("oaaTabList")) {
			
		var strLi = document.getElementById("oaaTabList").getElementsByTagName("li");
		var targetLi = document.getElementById("navigatioin").getElementsByTagName("h1")[0].childNodes[0];
			for (var i=0; i<strLi.length; i++) {
				if (strLi[i].getElementsByTagName("a")[0].childNodes[0].nodeValue == targetLi.nodeValue && i< strLi.length-1) {
					if (window.navigator.userAgent.indexOf("MSIE") >= 1) { //假如是IE，调用以下方法设置相应样式
						strLi[i].setAttribute("className","currentTab");
						strLi[strLi.length-1].setAttribute("className","lastTab");
					} else { //假如不是IE，调用以下方法设置相应样式
						strLi[i].setAttribute("class","currentTab");
						strLi[strLi.length-1].setAttribute("class","lastTab");
					} 
				} else if (strLi[i].getElementsByTagName("a")[0].childNodes[0].nodeValue == targetLi.nodeValue && i == strLi.length -1) {
						if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
						strLi[i].setAttribute("className","currentTab lastTab");
					} else {
						strLi[i].setAttribute("class","currentTab lastTab");
					}
					}
			}
		}
	}
	
//storage success stories, by joe on 2008-7-29
function switchTab_forStorage() {
		
		if (document.getElementById("storageTabList")) {
			
		var strLi = document.getElementById("storageTabList").getElementsByTagName("li");
		var targetLi = document.getElementById("navigatioin").getElementsByTagName("h1")[0].childNodes[0];
			for (var i=0; i<strLi.length; i++) {
				if (strLi[i].getElementsByTagName("a")[0].childNodes[0].nodeValue == targetLi.nodeValue && i< strLi.length-1) {
					if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
						strLi[i].setAttribute("className","currentTab");
						strLi[strLi.length-1].setAttribute("className","lastTab");
					} else {
						strLi[i].setAttribute("class","currentTab");
						strLi[strLi.length-1].setAttribute("class","lastTab");
					} 
				} else if (strLi[i].getElementsByTagName("a")[0].childNodes[0].nodeValue == targetLi.nodeValue && i == strLi.length -1) {
						if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
						strLi[i].setAttribute("className","currentTab lastTab");
					} else {
						strLi[i].setAttribute("class","currentTab lastTab");
					}
					}
			}
		}
	}


/* 用于改变产品技术频道产品相关信息：产品特点、规格、组网应用等标签效果
	示例：http://www.h3c.com.cn/Products___Technology/Products/IP_Network/Router/SR8800/SR8800/Home/Detail_Material_List/Feature/
	*/
function proSubMenu() 
{
	if (document.getElementById("ProductIntroList")) {
		document.getElementById("ProductIntroList").getElementsByTagName("li")[0].style.background = "none";
		document.getElementById("ProductIntroList").getElementsByTagName("li")[0].style.paddingLeft = "0";
		//targetTitle.style.background = "none";
		currTitle = document.getElementById("ProductIntroList").title;

		aListItem = document.getElementById("ProductIntroList").getElementsByTagName("a");
		//alert(aListItem[1].firstChild.nodeValue);
		for (var i=0;i<aListItem.length;i++)
		{
			if (aListItem[i].firstChild.nodeValue == currTitle)
			{
				
				if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
					aListItem[i].setAttribute("className","currTitleId");
					
				}
				else {
					aListItem[i].setAttribute("class","currTitleId");
				}
			}
		}
	 }
}

/*function setExternalLinkTarget()
{
	var locationMatch = document.location.href.match(/^(http:\/\/)?([^\/]+)/i);
	// var siteurl = locationMatch[2];
	var siteurl = chn-test.h3c.com;
	var allLinks = document.getElementsByTagName('a');
	var len = allLinks.length;
	
	if (len > 0)
	{
		var externalLink;
		for(i=0, i<len; i++) {
				externalLink = allLinks[i];
				if (externalLink.href.indexOf(siteUrl) == -1)
				{
					externalLink.setAttribute('target','_blank')
				}
			}
		}
	}
*/	


/* 用于文档中心手册的左边导航章节当前高亮效果
   示例：http://www.h3c.com.cn/Service/Document_Center/IP_Network_Product/Switches/S9500/S9500/Installation/Installation_Manual/S9500_N68_IM(V1.05)/200806/608723_30005_0.htm
   */
function documentCenterSider() {
	if (document.getElementById("documentTitle")) {
		var titleId = document.getElementById("documentTitle").getElementsByTagName("h3")[0].childNodes[0];
		var leftTitleId = document.getElementById("leftsidebar").getElementsByTagName("a");
		for (var i=0; i<leftTitleId.length-2; i++) {
			if (leftTitleId[i].childNodes[0].nodeValue == titleId.nodeValue) {
				if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
					leftTitleId[i].setAttribute("className","currentTitle");
				}
				else {
					leftTitleId[i].setAttribute("class","currentTitle");
				}
			}
		}
	}
	
	// 修改解决方案内容详细页为空时区块
	var solutionsRelatedId = document.getElementById("SolutionsRelatedArea");
	var solutionsRelatedConId = document.getElementById("SolutionsRelatedContent");
	if (solutionsRelatedConId)
	{
		if (solutionsRelatedConId.getElementsByTagName('ul').length > 0) {
		solutionsRelatedId.style.display = "block";

	}
	}
	
	/* 用于手册中心展开、关闭分册功能
		示例：http://www.h3c.com.cn/Service/Document_Center/IP_Network_Product/Routers/MSR_30/MSR_30/
		*/
			if (document.getElementById("subBook")) {
				var listItem = document.getElementById("subBook").getElementsByTagName("h4");
				for (var i=0; i<listItem.length; i++) {
				listItem[i].parentNode.id = "sub_" + i;
				if (document.getElementById('sub_'+i).getElementsByTagName('li').length > 0) {
					if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
							listItem[i].setAttribute("className","puckerTitle");
							listItem[i].setAttribute("target","_self");
							document.getElementById('sub_'+i).style.background = "url(http://www.h3c.com.cn/tres/images/button/tr_arrol3.gif) no-repeat top left";
							listItem[i].childNodes[0].setAttribute("target","_self");
							listItem[i].childNodes[0].setAttribute("href","javascript:void(null)");
							listItem[i].childNodes[0].setAttribute("title","点击展开下级分类");
							
						} else {
							listItem[i].setAttribute("class","puckerTitle");
							document.getElementById('sub_'+i).style.background = "url(http://www.h3c.com.cn/tres/images/button/tr_arrol3.gif) no-repeat top left";
							listItem[i].childNodes[0].setAttribute("href","javascript:void(null)");
							listItem[i].childNodes[0].setAttribute("target","_self");
							listItem[i].childNodes[0].setAttribute("title","点击展开下级分类");
						}
				}
				listItem[i].parentNode.onclick = function() {
					if (document.getElementById(this.id).getElementsByTagName('li').length > 0) {
						listUlContent = document.getElementById(this.id).getElementsByTagName("ul")[0];
							if(listUlContent.className == "listHidden") {
								listUlContent.className = "listShow";
								this.style.background = "url(http://www.h3c.com.cn/tres/images/button/tr_arrol4.gif) no-repeat top left";
							} else if (listUlContent.className == "listShow") {
								listUlContent.className = "listHidden";
								this.style.background = "url(http://www.h3c.com.cn/tres/images/button/tr_arrol3.gif) no-repeat top left";
							}
					}
				}
				}
			}
	
}

/* 用于外部弹出窗口，以下包括范围内的网址为在当前窗口打开 */
function SetLinkToNewWindow(fileLink,openUrl)
{
	if(fileLink.href.toLowerCase()==openUrl.toLowerCase())
	{
		fileLink.setAttribute('target','_blank');
		}
	}
function fileLinks() {
		var fileLink;
		
		if (document.getElementsByTagName('a'))
		{
			var fileLink = document.getElementsByTagName('a');
			
			for (var i=0;(fileLink = document.getElementsByTagName('a')[i]) ;i++ )
			{
				if(fileLink.href.length>0 && fileLink.href!="javascript:;")
				{
				SetLinkToNewWindow(fileLink,"http://www.h3c.com.cn/pub/2008_Event/h3c_arp2008/index.html");
				SetLinkToNewWindow(fileLink,"http://www.h3c.com.cn/pub/2008_event/h3c_5years/default.html");
				SetLinkToNewWindow(fileLink,"http://career.h3c.com/");
				if (fileLink.href.toLowerCase().indexOf(".h3c.com") > -1)
				    {
					    continue;
				    } 
                    else if (fileLink.href.toLowerCase().indexOf(".h3c.com.cn") > -1)
				    {
					    continue;
				    }  
                    else if (fileLink.href.toLowerCase().indexOf(".h3c.jp") > -1)
				    {
					    continue;
				    } 
                    else if (fileLink.href.toLowerCase().indexOf("#") > -1)
				    {
					    continue;
				    }
                    else if(fileLink.href.toLowerCase().indexOf("javascript:")>-1)
                    {
                        continue;
                    }
				    else 
                    {
					    fileLink.setAttribute('target','_blank');
			        }
				}
			}
		}
	}

	
	
	
	/* 用于批量修改内容详细页表格样式，需配合清除后文档执行，当前脚本只有一种风格，首行加底色  */
	function detailTable() {
		// for detailBody's table
	if (document.getElementById("detailBody")) {
		objTable = document.getElementById("detailBody").getElementsByTagName("table");
		for (var i=0;i<objTable.length; i++) {
				
				if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
					objTable[i].setAttribute("className","detailTable");
					objTable[i].getElementsByTagName("tr")[0].setAttribute("className","detailTableCap");
					} else {
					objTable[i].setAttribute("class","detailTable");
					objTable[i].getElementsByTagName("tr")[0].setAttribute("class","detailTableCap");
					}
			}
		
		}

}


/* 用于软件下载的历史版本展开功能 */
	function showVerson(obj) {
		var flag = false;
		var curr = null;
		curr = obj.parentNode.id;
		//alert(curr);
		flag = document.getElementById(obj.parentNode.id + "_x") ? true:false;
		if (flag && document.getElementById(obj.parentNode.id + "_x").style.display == "none")
		{
			document.getElementById(obj.parentNode.id + "_x").style.display = "";
			obj.src = "http://www.h3c.com/portal/tres/images/Tminus.gif";
		}
		else {
			document.getElementById(obj.parentNode.id + "_x").style.display = "none";
			obj.src = "http://www.h3c.com/portal/tres/images/Tplus.gif";
		}
	}

	function initHistoryDownload() {
		if (!document.getElementById("historyDownload")) return;
		dl = document.getElementById("historyDownload");
		sp = dl.getElementsByTagName("span");
		//uls = dl.getElementsByTagName("ul");
		for (var i=0; i<sp.length; i++) {
			sp[i].id = "syy_" + i;
			var ul = sp[i].parentNode.getElementsByTagName("ul")[0];
			if (ul != null) {
				//continue;
				ul.id = sp[i].id + "_x";
				ul.style.display = "none";
				//alert(sp[i].id);
			}
			
		//add images
			if (sp[i].parentNode.getElementsByTagName("ul").length >= 1) {
 				var newImg = document.createElement("img");
				newImg.setAttribute("src","http://www.h3c.com/portal/tres/images/Tplus.gif");
				newImg.setAttribute("alt","View version of history");
				if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
					newImg.setAttribute("className","expand");
				}
				else {
					newImg.setAttribute("class","expand");
				}
				newImg.onclick = function() { showVerson(this) };
				//var newAbbr = document.createElement("abbr");
				//var newText = document.createTextNode("history");
				//newAbbr.appendChild(newText);
				//refElement = sp[i].parentNode.childNodes[0];
				//alert(sp[i].parentNode.childNodes[2].nodeName);
				//newAbbr.insertBefore(newAbbr,sp[i].refElement);
				sp[i].appendChild(newImg);
			}		 						
		}
	}

<!--//--><![CDATA[//><!--

sfHover = function() {
	if (document.getElementById("nav")) {
		var sfEls = document.getElementById("nav").getElementsByTagName("LI");
	for (var i=0; i<sfEls.length; i++) {
		sfEls[i].onmouseover=function() {
			this.className+=" sfhover";
		}
		sfEls[i].onmouseout=function() {
			this.className=this.className.replace(new RegExp(" sfhover\\b"), "");
		}
	}
	}
	
}
if (window.attachEvent) window.attachEvent("onload", sfHover);

//--><!]]>
function suckerfish(type, tag, parentId) {
if (window.attachEvent) {
window.attachEvent("onload", function() {
var sfEls = (parentId==null)?document.getElementsByTagName(tag):document.getElementById(parentId).getElementsByTagName(tag);
type(sfEls);
});
}
}
sfFocus = function(sfEls) {
for (var i=0; i<sfEls.length; i++) {
sfEls[i].onfocus=function() {
this.className+=" sffocus";
}
sfEls[i].onblur=function() {
this.className=this.className.replace(new RegExp(" sffocus\\b"), "");
}
}
}
suckerfish(sfFocus, "INPUT");
suckerfish(sfFocus, "TEXTAREA"); 

<!--//--><![CDATA[//><!--
var dom = (document.getElementById)?true:false;
var explorer = document.all?true:false;
var opera = ((navigator.userAgent.indexOf(' Opera ') != -1) || (navigator.userAgent.indexOf('Opera/') != -1))?true:false;
var mscheck = (navigator.appName == "Microsoft Internet Explorer") && (parseInt(navigator.appVersion) >= 4 ) && (navigator.platform == "Win32")?true:false;

var hpFacets, eContainer, elLoop;

function hideInd(divMenu) {
	if (!document.getElementById) return false;

	var menu = document.getElementById(divMenu);
	if (menu == null) return false;

	menu.style.visibility = 'hidden';
	return true;
}

function showInd(divMenu) {
	if (!dom) return false;
	var aList = null;
	var menu = document.getElementById(divMenu);
	if (menu == null) return false;
	var h = document.getElementById('focusLink');
	if(divMenu == 'ind-dd2'){
	var h = document.getElementById('focusLink2');
	}
	menu.style.visibility = 'visible';
	h.focus();
	return true;
}

function setTriggerClass() {
	if (dom) {
	eContainer = document.getElementById('dd-container');
	hpFacets = eContainer.getElementsByTagName('a');
	
	for (i = 0; i < hpFacets.length; i++){
	elLoop = hpFacets[i];
	if (elLoop.className == 'ind-dd-trigger')
	elLoop.className += ' dd-outline';
	}
}
}

//--><!]]>
// change language
function MM_changeProp(objName,x,theProp,theValue) { //v6.0
  var obj = MM_findObj(objName);
  if (obj && (theProp.indexOf("style.")==-1 || obj.style)){
    if (theValue == true || theValue == false)
      eval("obj."+theProp+"="+theValue);
    else eval("obj."+theProp+"='"+theValue+"'");
  }
}
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

//链接如果是站外的绝对路径，则在新窗口中打开
/*function openNewWin()
{
	var link = event.srcElement;
	var url = link.outerHTML.toString();
	if(url.toUpperCase().indexOf("HTTP://") > -1)
	{
		link.target = "_blank";
	}
}
*/
/*
	window.onload = fileLinks;
*/