<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="İş_Başvuru.aspx.cs" Inherits="EXAM.İş_Başvuru" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 390px;
        }
        .auto-style7 {
            height: 23px;
            width: 383px;
        }
        .auto-style8 {
            width: 383px;
        }
        .auto-style9 {
            width: 346px;
        }
        .auto-style10 {
            height: 23px;
            width: 346px;
        }
        .auto-style11 {
            width: 391px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="15pt" ForeColor="#003399" Text="İş Başvuru Formu"></asp:Label>
            <br />
        </div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">
                <div style="background-color: #999999">
                    Kişisel Bilgileri</div>
            </td>
           
        </tr>
        <tr>
            <td class="auto-style9" >Ad </td>
            <td >&nbsp;</td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Soyad</td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TxtSoyad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">ceb Telefonu</td>
            <td class="auto-style4"></td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtCebTelephonu" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Email Adressi</td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Doğum Tarihi</td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TxtDoğum" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Cinsiyet </td>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownCinsiyet" runat="server">
                    <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                    <asp:ListItem Value="1">Erkek</asp:ListItem>
                    <asp:ListItem Value="2">Kadın</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Uyruk</td>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownUyruk" runat="server" DataSourceID="SqlDataSource2" DataTextField="UlkeAdi" DataValueField="UlkeAdi">
                    <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ulkerConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ulkerConnectionString2.ProviderName %>" SelectCommand="SELECT [UlkeAdi] FROM [Ulkeler] ORDER BY [UlkeId]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Çalişmak istediğiniz il</td>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownÇlalişmak" runat="server" DataSourceID="SqlDataSource3" DataTextField="SehirAdi" DataValueField="SehirAdi">
                    <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ulkerConnectionString7 %>" ProviderName="<%$ ConnectionStrings:ulkerConnectionString7.ProviderName %>" SelectCommand="SELECT [SehirAdi] FROM [Sehirler] ORDER BY [SehirAdi]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Engelli Durumu</td>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Evet</asp:ListItem>
                    <asp:ListItem>Yok</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
    </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <div style="background-color: #999999">
                        Eğitim Bilgileri</div>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style7">Eğitim Durumu</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownEğitim" runat="server">
                        <asp:ListItem Value="1">Mezun</asp:ListItem>
                        <asp:ListItem Value="2">Mezun Değil</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Eğitim Seviye</td>
                <td>
                    <asp:DropDownList ID="DropDownSeviye" runat="server">
                        <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                        <asp:ListItem Value="1">Lise</asp:ListItem>
                        <asp:ListItem Value="2">Lisans</asp:ListItem>
                        <asp:ListItem Value="3">Yüksek Lisans</asp:ListItem>
                        <asp:ListItem Value="4">Doktora</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <div style="background-color: #999999">
                        İş Tecrubesi</div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Toplam Tecrube (yıl)</td>
                <td>
                    <asp:DropDownList ID="DropDownToplam" runat="server">
                        <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Şu anda herhangi bir yerde çalişiıyormusunuz ?</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        <asp:ListItem>Evet</asp:ListItem>
                        <asp:ListItem>Yok</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">İş tecrubesi bilgisi girmek istiyormusunuz ?</td>
                <td>
                    <asp:CheckBox ID="CheckBoxİşTecrube" runat="server" OnCheckedChanged="CheckBoxİşTecrube_CheckedChanged" Text="Evet" />
&nbsp;<asp:TextBox ID="TextBoxMessaj" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style11">
                    <div style="background-color: #999999">
                        Başvuru Pozisyonu </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Pozisyon </td>
                <td>
                    <asp:DropDownList ID="DropDownPozisyon" runat="server">
                        <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                        <asp:ListItem Value="1">Analist</asp:ListItem>
                        <asp:ListItem Value="2">yazılımcı</asp:ListItem>
                        <asp:ListItem Value="4">asistan</asp:ListItem>
                        <asp:ListItem Value="5">Pazarlama Müdürü.</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="BtnGönder" runat="server" OnClick="BtnGönder_Click" Text="GÖNDER" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Başvuru_İD" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Başvuru_İD" HeaderText="Başvuru_İD" InsertVisible="False" ReadOnly="True" SortExpression="Başvuru_İD" />
                <asp:BoundField DataField="AD" HeaderText="AD" SortExpression="AD" />
                <asp:BoundField DataField="SOYAD" HeaderText="SOYAD" SortExpression="SOYAD" />
                <asp:BoundField DataField="ceb telefon" HeaderText="ceb telefon" SortExpression="ceb telefon" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Dogum_Tarihi" HeaderText="Dogum_Tarihi" SortExpression="Dogum_Tarihi" />
                <asp:BoundField DataField="Cinsiyet" HeaderText="Cinsiyet" SortExpression="Cinsiyet" />
                <asp:BoundField DataField="Uyruk" HeaderText="Uyruk" SortExpression="Uyruk" />
                <asp:BoundField DataField="calisma" HeaderText="calisma" SortExpression="calisma" />
                <asp:BoundField DataField="Engelli_Durumu" HeaderText="Engelli_Durumu" SortExpression="Engelli_Durumu" />
                <asp:BoundField DataField="Egitim_Durumu" HeaderText="Egitim_Durumu" SortExpression="Egitim_Durumu" />
                <asp:BoundField DataField="Egitim_seviye" HeaderText="Egitim_seviye" SortExpression="Egitim_seviye" />
                <asp:BoundField DataField="ToplamYıl" HeaderText="ToplamYıl" SortExpression="ToplamYıl" />
                <asp:BoundField DataField="herhangi_yerde_calismak" HeaderText="herhangi_yerde_calismak" SortExpression="herhangi_yerde_calismak" />
                <asp:BoundField DataField="İs_tecrube_girmek" HeaderText="İs_tecrube_girmek" SortExpression="İs_tecrube_girmek" />
                <asp:BoundField DataField="pozisyon" HeaderText="pozisyon" SortExpression="pozisyon" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" ProviderName="<%$ ConnectionStrings:examConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [başvuru]"></asp:SqlDataSource>
    </form>
    </body>
</html>
