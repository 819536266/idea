//·¢ËÍ±¾ÎÄ
function SendEmail(subject) {
    var sendEmailUrl = "http://" + location.hostname + "/Aspx/ContractMe/Default.aspx";
    subject = escape(subject);
    var url = escape(window.location.href);
    sendEmailUrl = sendEmailUrl + "?subject=" + subject + "&url=" + url;
    window.open(sendEmailUrl, "send", "left=300,top=120,status=no,scrollbars=no,resizable=no,width=500,height=500");
}

