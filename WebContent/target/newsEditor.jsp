<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
    <title>添加活动</title>

    <%
        String projectPath=request.getContextPath();
    %>

    <link rel="stylesheet" type="text/css" href="<%=projectPath%>/commonRes/tcal.css" />
    <!-- kindeditor -->
    <link rel="stylesheet" href="<%=projectPath%>/commonRes/kindeditor/themes/default/default.css" />
    <link rel="stylesheet" href="<%=projectPath%>/commonRes/kindeditor/plugins/code/prettify.css" />
    <script charset="utf-8" src="<%=projectPath%>/commonRes/kindeditor/kindeditor.js"></script>
    <script charset="utf-8" src="<%=projectPath%>/commonRes/kindeditor/lang/zh_CN.js"></script>
    <script charset="utf-8" src="<%=projectPath%>/commonRes/kindeditor/plugins/code/prettify.js"></script>

    <!--  -->
    <style type="text/css">
        .input{font-size:16px;color:#000000;line-height:20px;padding:10px 0;margin:-10px 0;}
    </style>
    <SCRIPT type="text/javascript">

        KindEditor.ready(function(K) {
            var editor1 = K.create('textarea[name="contentDesc"]', {
                cssPath : '<%=projectPath%>/commonRes/kindeditor/plugins/code/prettify.css', //modify according to actual situation
                uploadJson : '<%=projectPath%>/upload_json.jsp', //modify according to actual situation
                fileManagerJson : '<%=projectPath%>/file_manager_json.jsp', //modify according to actual situation
                allowFileManager : true,
                afterBlur:function(){
                    var self=this;
                    self.sync();
                },
                afterCreate : function() {
                    var self = this;
                    K.ctrl(document, 13, function() {
                        self.sync();
                        document.forms['actForm'].submit();//实际form表单的名字
                    });
                    K.ctrl(self.edit.doc, 13, function() {
                        self.sync();
                        document.forms['actForm'].submit();//实际form表单的名字
                    });
                }
            });
            prettyPrint();
            K("#activity_title").blur(function(){
                if(this.value==''){
                    K("#title_alert").show();
                }else{
                    K("#title_alert").hide();
                }

            });
            K("#sub").bind('click',function(){
                <%-- in case special charactor,such as '%&' --%>
                //var title = encodeURI(encodeURI(K("#activity_title").val()));
                //var content = encodeURI(encodeURI(K('#contentDesc').val()));

                var title = K("#activity_title").val();
                var content = K('#contentDesc').val();
                if(title == undefined || title ==''){
                    K("#title_alert").show();
                    return false;
                }


                console.log("start analyzing the file:"+new Date());


                var f = "<%=projectPath%>/target/news.jsp";
                if (f) {
                    var r = new FileReader();
                    r.onload = function(e) {
                        var contents = e.target.result;
                        var rowDatas = contents.split("\n");
                        if(rowDatas && rowDatas.length > 0){
                            console.log("the number of available rows:"+rowDatas.length);
                            for(var i in rowDatas){
                                var rowData = rowDatas[i];
                                if(rowData && rowData.trim()){
                                    console.log(rowData);
                                }
                            }
                        }
                        console.log("end analyzing the file:"+new Date());
                    }
                    r.readAsText(f);
                }
            });
        });

    </SCRIPT>


</head>
<body>

<jsp:include   page="head.jsp" flush="true"/>

<center>
    <form action="<%=projectPath%>/HandlerManager?handler=activityHandler&methodName=edit_activity_save" styleId="frm" name="actForm" method="post" onsubmit="javascript:edit_activity();">
        <table width=80% cellspacing="0" cellpadding="0" >
            <tr  height=25>
                <td><font class="headline">&gt;&gt;新闻添加 </font></td>
            </tr>
            <tr  height=25>
                <td></td>
            </tr>
            <tr height=60 valign=top>
                <td><table class="editTable" width="100%" cellspacing="0" cellpadding="0">

                    <tr class="bar">
                        <td class="editTdName">
                            新闻标题
                        </td>
                    </tr>
                    <tr>
                        <td class="editTdValue">
                            <input type="text" id="activity_title" name="activity_title"  size="105" maxlength="" value=""/> <span style="color:red;font-size:16">*</span>
                            <div id="title_alert" style="display:none"> <font color="red"> 标题不能为空 </font></div>
                        </td>
                    </tr>
                    <tr  class="bar">
                        <td class="editTdName">新闻主要内容描述:	</td>
                    </tr>

                    <tr>
                        <td >
                            <textarea  id="contentDesc"  name="contentDesc"  style="width:700px;height:300px;visibility:hidden;"></textarea>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="button" id="sub" style="cursor: pointer;" value="保存" />
                        </td>
                    </tr>
                </table>
                </td>
            </tr>
        </table>
    </form>
</center>


<jsp:include   page="footer.jsp" flush="true"/>

</body>

</html>
<%!
    private String htmlspecialchars(String str) {
        str = str.replaceAll("&", "&amp;");
        str = str.replaceAll("<", "&lt;");
        str = str.replaceAll(">", "&gt;");
        str = str.replaceAll("\"", "&quot;");
        return str;
    }
%>