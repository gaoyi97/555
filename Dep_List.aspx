<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dep_List.aspx.cs" Inherits="Web.Dep_List" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>内容管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="css/style1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: 7px;">
        <table class="tabs_head" cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td width="140">
                    <h1>
                        部门管理</h1>
                </td>
             <%--   <td class="actions">
                    <table cellspacing="0" cellpadding="0" border="0" align="right">
                        <tr>
                            <td class="active">
                                <a href="Dep_List.aspx">部门详情</a>
                            </td>
                        </tr>
                    </table>
                </td>--%>
            </tr>
        </table>
        <%--  <table>
            <tr>
                <td style="padding-left: 10px;">
                    <asp:Button ID="btnexcept" runat="server" Text="导出Excel" CssClass="btnsubmit1" OnClick="btnexcept_Click" />
                </td>
            </tr>
        </table>--%>
    </div>
    <div class="right1">
        <div>
            <asp:DataList ID="dldep" runat="server" DataKeyField="id" Width="100%">
                
                <HeaderTemplate>
                    <table width="100%" cellpadding="2" cellspacing="0" class="dataTable" align="center">
                        <tr style="text-align: center">
                             <td style="width:10%">
                                序号
                            </td>
                            <td style="width: 15%">
                                编号
                            </td>
                            <td style="width: 12.5%">
                                部门名称
                            </td>
                            <td style="width: 12.5%">
                                父部门ID
                            </td>
                            <td style="width: 12.5%">
                                集团id
                            </td>
                            <td style="width: 12.5%">
                                状态
                            </td>
                            <td style="width: 12.5%">
                                备注
                            </td>
                          <td style="width: 12.5%">
                                操作
                            </td>                        
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table width="100%">
                        <tr style="text-align: center; width: 100%">
                            <td style="width: 10%">
                                <asp:Label ID="lblNum" runat="server" Text=' <%# Container.ItemIndex + 1 %>' />
                            </td>
                            <td style="width: 15%">
                               <asp:Label ID="lblid" runat="server" Text='<%#Eval("id")%>'/>
                            </td>
                            <td style="width: 12.5%">
                               <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>' />
                            </td>
                            <td style="width: 12.5%">
                               <asp:Label ID="lblpid" runat="server" Text='<%#Eval("p_id") %>' />
                            </td>
                            <td style="width: 12.5%">
                               <asp:Label ID="Label1" runat="server" Text='<%#Eval("group_id") %>' />
                            </td>
                            <td style="width: 12.5%">
                              <asp:Label ID="lblstate" runat="server" Text='<%#Eval("state") %>' />
                            </td>
                            <td style="width: 12.5%">
                              <asp:Label ID="Label2" runat="server" Text='<%#Eval("remark") %>' />
                            </td>
                             <td style="width: 12.5%">
                                <a href="Department_ADD.aspx?id=<%# Eval("id") %>">修改信息</a>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="8">
                                <div style="border-top: 1px dashed #cccccc; height: 2px; overflow: auto">
                                </div>
                            </td>
                        </tr>
                    </table>
                
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    </form>
    <script type="text/javascript">
        parent.document.getElementById("spanTitle").innerText = document.title;
    </script>
    
</body>
</html>
