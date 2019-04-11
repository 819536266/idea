function GetCookie(sname)
{
    var acookie=document.cookie.split(";");
                                                             
    for(var i=0;i<acookie.length;i++)                        
    {                                                        
        var arr=acookie[i].split("=");                       
        if(sname==trim(arr[0]))                              
        {                                                                                          
            if(arr.length>1)  
	    {                 
		userName = arr[1].substring(0,60);           
            	return unescape(userName);                         
            }
	    else                                             
            {
		return "";
		}                                       
        }                                                    
    }                                                        
    return "";                                               
}                                                            
 function trim (trimStr)                                     
{                                                            
    return trimStr.replace(/(^\s*)|(\s*$)/g, "");            
}  
function GetCurUrl()
{
 var curUrl = window.location.href;
 var arrayStr = curUrl.split("?ResponseTicket");
 return arrayStr[0];
}                                                          
with (document) {  	                       
	if(GetCookie("USER_ID").length>0)                          
	{                                                          
		getElementById("login").innerHTML ="<b>欢迎 <font color='#76A1CA'>"+GetCookie("USER_ID")+"</font>&nbsp;</b>|<a href='/Aspx/Home/Login/ChangePassword.aspx' title='修改密码'>修改密码&nbsp</a>|<a href='/Aspx/Home/Login/LogOutPage.aspx?backurl="+GetCurUrl()+"' title='退出登录'>退出</a>";
		getElementById("login").style.cssFloat = "left";
		getElementById("login").style.styleFloat = "left";          
	}                                  
}