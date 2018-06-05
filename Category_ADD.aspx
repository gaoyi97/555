<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Category_ADD.aspx.cs" Inherits="Web.Category_ADD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/style1.css" rel="stylesheet" type="text/css" />
    
     <script type="text/javascript">
         function inRow() {
           
             var table = document.getElementById("tid");
             var nextIndex = table.rows.length
             var nextRow = table.insertRow(nextIndex);
             var nownum = nextIndex + 1;
             nextRow.insertCell(0).innerHTML = "<input type='text' value='" + nownum + "' name='txtNO' style='width:30px' readonly='true'/>";
             nextRow.insertCell(1).innerHTML = "<input type='text' name='txtname'/>";
             nextRow.insertCell(2).innerHTML = "<a href='javascript:;' onclick='return del(this)'>删除</a>";

             return false;
         }

         function del(obj) {
             var table = obj.parentNode.parentNode.parentNode;
             table.deleteRow(obj.parentNode.parentNode.rowIndex);
         }
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div style="margin: 7px;">
        <table class="tabs_head" cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td width="140">
                    <h1>
                        工作大类管理</h1>
                </td>
                <td class="actions">
                    <table cellspacing="0" cellpadding="0" border="0" align="right">
                        <tr>
                            <td >
                                <a href="Category_List.aspx">工作类详情</a>
                            </td>
                            <td class="active">
                                <a href="Category_ADD.aspx">添加工作大类</a>
                            </td>
                            <%--<td>
                                <a href="Category_ADD.aspx">添加工作小类</a>
                            </td>--%>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>     
    </div>
        <div id="content">
              <div style="margin-left: 15%; margin-right: 15%">
        <table style="text-align: center; width: 100%">
            <tr>
                <td>
                </td>
            </tr>
           <%-- <tr>
                <td style="text-align: left">
                    大类名称：<asp:TextBox ID="Sname" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>--%>
            <tr>
                <td>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    增加内容：
                </td>
            </tr>
        </table>
        <table width="100%" cellpadding="2" cellspacing="0" class="dataTable" align="center">
            <tr style="text-align: left">
                <td style="width: 10%">
                   序号
                </td>
                <td style="width: 20%">
                    大类名称
                </td>
                <td style="width: 20%">
                    <input type="button" name="insert" value="增加" onclick="return inRow()" />
                </td>
            </tr>
        </table>
        <table id="tid" runat="server" width="100%" cellpadding="2" cellspacing="0" class="dataTable"
            align="center">
            <tr class="dataTable" style="text-align: left; width: 100%">
                <td style="width: 10%">
                    <input type="text" name="txtNO" value="1" style="width: 30px;" readonly="true"/>
                </td>
                <td style="width: 20%">
                    <input type="text" name="txtname"  id="txtname"/>
                </td>
                <td style="width: 20%">
                </td>
            </tr>
        </table>
    </div>
    <div>
    </div>
    <div class="cntre1">
        <ul>
            <li>
                <asp:ImageButton ID="sure" runat="server" ImageUrl="images/btn_submit.gif"  OnClick="sure_Click"/></li>
            <li>
                <img alt="取消返回" src="images/btn_cancel.gif" style="cursor: pointer;" onclick="location.href='Category_List.aspx'" /></li>
        </ul>
    </div>
   
    

        </div>
    </div>
    </form>
    <script type="text/javascript">
        parent.document.getElementById("spanTitle").innerText
= document.title;
    </script>
</body>
</html>
