<!DOCTYPE html>
<!--suppress HtmlUnknownTarget -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

<#--fileinput的css文件-->
    <link rel="stylesheet" type="text/css" href="css/fileinput.min.css">
    <link rel="stylesheet" type="text/css" href="css/fileinput-rtl.min.css">
<#--fileinput的JS文件-->
    <script type="text/javascript" src="js/fileinput.min.js"></script>
<#--fileinput的中文包-->
    <script type="text/javascript" src="js/fileinput.zh.js"></script>
<#--zoomify图片放大的css文件-->
    <link rel="stylesheet" type="text/css" href="css/zoomify.min.css">
<#--zoomify图片放大JS文件-->
    <script type="text/javascript" src="js/zoomify.min.js"></script>
    <script type="text/javascript">

        $(function () {

            fileInput("tradeUrl", "tradeDiv");
        });
        // 上传控件
        function fileInput(id, divId) {

            // 允许上传文件数
            var fileCount = 1;
            // 上传大小
            var fileSize = 2048;
            // 上传格式
            extensions = ["pdf", "doc", "docx", "dotx", "dot", "docm", "dotm","jpg", "jpeg", "png"];
            // 是否显示缩略图
            var preview = true;

            $('#' + id).fileinput({
                // 设置语言
                language: 'zh',
                // 上传文件路径
                uploadUrl: "/file/uploadFile",
                //是否显示拖拽区域
                dropZoneEnabled: true,
                // 接收的文件后缀
                allowedFileExtensions: extensions,
                // 是否显示上传按钮
                showUpload: true,
                // 是否显示移除按钮
                showRemove: true,
                //是否显示输入框
                showCaption: true,
                // 上传大小，单位为kb
                maxFileSize: fileSize,
                // 是否自动替换当前图片
                autoReplace: true,
                // initialPreviewShowDelete:true,
                // 表示允许同时上传的最大文件个数
                maxFileCount: fileCount,
                // enctype: 'multipart/form-data',
                // 异步上传
                uploadAsync: true,
                //当文件不符合规则，就不显示预览
                removeFromPreviewOnError: true,
                overwriteInitial: false,
                initialPreviewAsData: true,
                initialPreview: [
                    'http://lorempixel.com/800/460/nature/2'
                ],
                initialPreviewConfig: [
                    {caption: "Nature-1.jpg", width: "120px", url: "/site/file-delete", key: 1}
                ]
            }).on("filebatchselected", function (event, files) {
                console.log(files);
                $(this).initialPreview = [
                    files[0].name
                ];
                $(this).initialPreviewConfig = [
                    {caption: "transport-1.jpg", size: 329892, width: "120px", url: "/site/file-delete", key: 1}
                ];
                // $(this).fileinput("upload");
            }).on("fileuploaded", function (event, data, previewId, index) {
                alert("fileuploaded");
            }).on("filecleared", function (data) {
                alert("filecleared");
            }).on('filebeforedelete',function(event, key, jqXHR, data){
                alert("filebeforedelete");
                if(!confirm("确定删除原文件？删除后不可恢复")){
                    return false;
                }
            });
        }
    </script>
    <title>单位管理</title>
</head>
<body>
<div>
    <div class="main-body mb-reg-company">
        <div class="view-container">
            <form id="addForm">

                <div class="row">
                    <div class="col-md-12 forErr">
                        <div class="form-group" id="tradeDiv">
                            <label>行业补充资质：</label>
                            <input id="tradeUrl" name="file" data-max-file-count="3"
                                   type="file" multiple/>
                            <div name="hideDiv">
                                每张图片大小不超过2M，支持JPG、JPEG、PNG，
                                最多允许上传3张图片。
                            </div>
                        </div>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>
</body>
</html>