<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    pageContext.setAttribute("basePath", basePath);
%>
<html>
<head>
    <title>JT Geek</title>
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <link rel="stylesheet" href="${basePath}lib/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${basePath}lib/layui-v2.4.5/layui/css/layui.css">
    <link rel="stylesheet" href="${basePath}lib/editor.md-master/css/editormd.css">
    <link rel="shortcut icon" href="${basePath}images/logo.ico"/>
    <script src="https://cdn.bootcss.com/jquery/1.11.0/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery_lazyload/1.9.7/jquery.lazyload.min.js"></script>
    <script src="${basePath}lib/layui-v2.4.5/layui/layui.js"></script>
    <script src="${basePath}lib/bootstrap/js/bootstrap.js"></script>
    <script src="${basePath}lib/editor.md-master/zepto.min.js"></script>
    <script src="${basePath}lib/editor.md-master/editormd.min.js"></script>
    <script src="${basePath}js/common.min.js"></script>
</head>
<body>
<div id="container">
    <div class="edit-header" style="width: 90%;margin: 10px auto;">
        <div class="layui-form-item">
            <div class="layui-input-inline" style="width: 80%; margin-right: 0;">
                <input type="text" placeholder="请输入标题" class="layui-input" id="title">
            </div>
            <div class="layui-input-inline" style="width: 20%; margin-right: 0;">
                <button class="layui-btn" id="btn-release" style="margin-left: 10%;margin-right: 10%;">发表博客</button>
                <img src="data:image/jpeg;base64,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"
                     alt="" class="layui-nav-img" width="30" height="30">
            </div>
        </div>
    </div>
    <div class="editor">
        <div id="blog-editormd">
            <textarea></textarea>
        </div>
    </div>
</div>
<%--发表博客窗口--%>
<div id="release" class="layui-hide" style="width: 440px;height: 200px; background-color:#fff;padding: 20px">
    <form class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label">标签</label>
            <div class="layui-input-inline">
                <select class="BKBlog-tagId" id="blogTag">
                    <option value="">请选择博客所属的标签</option>
                    <c:forEach items="${articleTags}" var="tag">
                        <option value="${tag.id}">${tag.title}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="submitBlog" >立即提交</button>
            </div>
        </div>
    </form>
</div>
</body>
<script src="${basePath}js/admin/blog/edit.min.js"></script>
</html>