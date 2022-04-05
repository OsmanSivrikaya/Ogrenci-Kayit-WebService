<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div style="margin-top:100px;margin-left:200px">
            <h1>Öğrenci Kayıt</h1>
            <table>
                <tr>
                    <th>
                        <asp:Label Text="Ad:" runat="server" />
                    </th>
                    <th>
                        <asp:TextBox id="txtAd" runat="server" />
                    </th>
                
                  </tr>
                <tr>
                    <th>
                        <asp:Label Text="Soyad:" runat="server" />
                    </th>
                    <th>
                        <asp:TextBox id="txtSoyad" runat="server" />
                    </th>
                </tr>
                 <tr>
                    <th>
                        <asp:Label Text="TC:" runat="server" />
                    </th>
                    <th>
                        <asp:TextBox id="txtTc" runat="server" />
                    </th>
                
                  </tr>
                <tr>
                    <th>
                        <asp:Label Text="Doğum Yılı:" runat="server" />
                    </th>
                    <th>
                        <asp:TextBox id="txtDT" runat="server" />
                    </th>
                </tr>
                  <tr>
                    <th>
                        <asp:Label Text="Şehir:" runat="server" />
                    </th>
                    <th>
                        <asp:DropDownList ID="drpSehir" runat="server"  AutoPostBack="true">
                            
                        </asp:DropDownList>
                    </th>
               
                </tr>
                <tr>
                    <th>

                    </th>
                    <th>
                        <asp:Button ID="Kaydet" Text="Kaydet" runat="server" OnClick="Kaydet_Click" />
                    </th>
                    </tr>
                
            </table>
        </div>
    </form>
</body>
</html>
