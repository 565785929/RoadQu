<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <title>个人中心 | 驴友网</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="mobile-agent" content="format=html5; url=http://m.roadqu.com">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/boxy,jquery.fancybox-1.3.4.css">
    <link href="${pageContext.request.contextPath}/css/aboutus.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reg.css"/>

    <script type="text/javascript">
        var userjson = '';
        var c_cityinfo = '';
    </script>
</head>
<body>
<%@include file="/including/header.jsp" %>
<!--top end-->

<div id="container" class="fn-clear">
    <div class="bottom">
        <div class="bottom_t"></div>
        <div class="bottom_c h650">
            <%@include file="/including/left.jsp"%>

            <div class="bottom_c_r">
                <h2 style="width:680px; height:40px; line-height:41px; background:#83bb4a url(../images/reg-title-bg.png) repeat-x; 
						color:#fefefe; text-indent:25px; font-size:20px; font-family:\9ED1\4F53; font-weight:400;">
                    发布新记忆</h2>
                <form id="form100" action="${pageContext.request.contextPath}/memoryAdd.do" method="post" class="reg-form" enctype="multipart/form-data">
                    <p><label for="tmtitle"><em>*</em>标题：</label>
                        <input name="tmtitle" type="text" class="input-txt" id="tmtitle" autocomplete="off"
                               size="43"/>
                    </p>
                    <p><label for="memorytypeid"><em>*</em>记忆类别：</label>
                        <select name="memorytypeid" id="memorytypeid">
                            <c:forEach items="${memoryTypeList}" var="memoryType">
                                <option value="${memoryType.memorytypeid}">${memoryType.memorytype}</option>
                            </c:forEach>
                        </select>
                    </p>
                    <p><label for="file"><em>*</em>景点图片：</label>
                        <input type="file" name="file" id="file">
                    </p>
                    <p><label for="tmcontent"><em>*</em>内容：</label>
                        <textarea rows="5" cols="60" id="tmcontent" size="43" name="tmcontent"></textarea>
                    </p><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                    <input type="submit" class="reg-login" value="发布"></input>
                </form>
            </div>
        </div>
    </div>
</div>
</div>
<!-- 底部footer 开始-->
<%@include file="/including/footer.jsp"%>>
<!-- footer end -->

</body>
</html>