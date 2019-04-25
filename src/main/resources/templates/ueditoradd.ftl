<script type="text/javascript" charset="utf-8" src="${request.contextPath}/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${request.contextPath}/ueditor/ueditor.all.min.js"></script>

<script type="text/javascript">
    var ue = UE.getEditor('editor');
</script>
                        <script type="text/javascript">
                            UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
                            UE.Editor.prototype.getActionUrl = function (action) {
                                if (action == 'uploadimage' || action == 'uploadscrawl' || action == 'uploadimage') {
                                    return '${request.contextPath}/upload/img?encode=utf-8';
                                    //'http://localhost:8080/imgUpload';为方法imgUpload的访问地址
                                } else {
                                    return this._bkGetActionUrl.call(this, action);
                                }
                            }
                        </script>

                        <script  id="editor" type="text/plain" style="width:1024px;height:500px;"></script>

</div>