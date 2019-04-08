$(document).ready(function () {
    getwxshareconfig();
});

function getwxshareconfig() {
    var config = {};
    $.ajax({
        url: "http://share.uniview.com/jssdk.php?v="+Math.random(),
        type: "GET",
        dataType: 'jsonp',
        jsonp: 'callback',
        data: {url:location.href.split('#')[0]}, 
        success: function (json) {
            config.appId = json.appId;
            config.timestamp = json.timestamp;
            config.nonceStr = json.nonceStr;
            config.signature = json.signature;
            config.rawString = json.rawString;
            config.jsApiList = ['onMenuShareTimeline','onMenuShareAppMessage','onMenuShareQQ'];
            wx.config(config);
        }
    });
}

wx.ready(function () {
    wx.onMenuShareTimeline({
        title: title, // 分享标题
		desc: desc, // 分享描述
        link: link, // 分享链接
        imgUrl: imgUrl, // 分享图标
        success: function () {
            // 用户确认分享后执行的回调函数
        },
        cancel: function () {
            // 用户取消分享后执行的回调函数
        },
        fail:function(){
        }
    });
    wx.onMenuShareAppMessage({
        title: title, // 分享标题
        desc: desc, // 分享描述
        link: link, // 分享链接
        imgUrl: imgUrl, // 分享图标
        type: '', // 分享类型,music、video或link，不填默认为link
        dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
        success: function () {
            alert('分享成功');
            // 用户确认分享后执行的回调函数
        },
        cancel: function () {
            // 用户取消分享后执行的回调函数
        }
    });
    wx.onMenuShareQQ({
        title: title, // 分享标题
        desc: desc, // 分享描述
        link: link, // 分享链接
        imgUrl: imgUrl, // 分享图标
        success: function () {
            alert('分享成功');
            // 用户确认分享后执行的回调函数
        },
        cancel: function () {
            // 用户取消分享后执行的回调函数
        }
    });
});


wx.error(function(res){
    console.log(res);
	//alert(res);
    // config信息验证失败会执行error函数，如签名过期导致验证失败，具体错误信息可以打开config的debug模式查看，也可以在返回的res参数中查看，对于SPA可以在这里更新签名。
});