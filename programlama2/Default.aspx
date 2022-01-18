<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="programlama2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style="font-size:x-large" align="center"> Öğrenci Bilgi Sistemi</div>
        <br />

        <table class="nav-justified" style="height: 186px">
            <tr>
                <td class="modal-sm" style="width: 278px; height: 20px"></td>
                <td style="height: 20px; width: 178px">Öğrenci No</td>
                <td style="height: 20px">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Height="19px" Width="176px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 278px">&nbsp;</td>
                <td class="modal-sm" style="width: 178px">Adı-Soyadı</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Height="19px" Width="176px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 278px">&nbsp;</td>
                <td class="modal-sm" style="width: 178px">Adres</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Ankara</asp:ListItem>
                        <asp:ListItem>İstanbul</asp:ListItem>
                        <asp:ListItem>Bolu</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 278px">&nbsp;</td>
                <td class="modal-sm" style="width: 178px">Yaş</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Height="19px" Width="176px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 278px">&nbsp;</td>
                <td class="modal-sm" style="width: 178px">İletişim</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Height="19px" Width="176px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 278px">&nbsp;</td>
                <td class="modal-sm" style="width: 178px">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 278px">&nbsp;</td>
                <td class="modal-sm" style="width: 178px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#9933FF" BorderColor="#9933FF" Font-Size="Medium" ForeColor="White" Text="Ekle" OnClick="Button1_Click" />
                &nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#9933FF" BorderColor="#9933FF" Font-Size="Medium" ForeColor="White" Text="Güncelle" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 278px">&nbsp;</td>
                <td class="modal-sm" style="width: 178px">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Width="705px">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 278px">&nbsp;</td>
                <td class="modal-sm" style="width: 178px">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>



    </div>

</asp:Content>
