﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Glavna.Master" AutoEventWireup="true" CodeBehind="IspisVanUsluge.aspx.cs" Inherits="MIV.Tablice.VanjskeUsluge.IspisVanUsluge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="vanusluge.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'></script>
<script type='text/javascript'>
    $(function () {
        var nav = $('#cssmenu');
        var navHomeY = nav.offset().top;
        var isFixed = false;
        var $w = $(window);
        $w.scroll(function () {
            var scrollTop = $w.scrollTop();
            var shouldBeFixed = scrollTop > navHomeY;
            if (shouldBeFixed && !isFixed) {
                nav.css({
                    position: 'fixed',
                    top: 0,
                    left: nav.offset().left,
                    width: nav.width()
                });
                isFixed = true;
            }
            else if (!shouldBeFixed && isFixed) {
                nav.css({
                    position: 'static'
                });
                isFixed = false;
            }
        });
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id='cssmenu'>
<ul>
   <li><a href='#'><span>Sirovine</span></a>
            <ul>
               <li><a href='http://localhost:61142/Tablice/Sirovine/IspisSirovine.aspx'><span>Sirovine za talionicu</span></a></li>
               <li class='last'><a href='http://localhost:61142/Tablice/Sirovine/IspisSirovine.aspx'><span>Sirovine za kaluparsku i jezgrenu mješavinu</span></a></li>
            </ul>
    </li>
   <li><a href='#'><span>Tehnički matrijal</span></a>
      <ul>
         
               <li><a href='http://localhost:61142/Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx'><span>Lim</span></a></li>
               <li><a href='http://localhost:61142/Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx'><span>Šipke okrugle</span></a></li>
               <li><a href='http://localhost:61142/Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx'><span>Cijevi L=3m</span></a></li>
               <li><a href='http://localhost:61142/Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx'><span>Šipke kvadratne L=3m</span></a></li>
               <li><a href='http://localhost:61142/Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx'><span>Šipke šesterokutne</span></a></li>
               <li><a href='http://localhost:61142/Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx'><span>Spojke za hidrante</span></a></li>
               <li class='last'><a href='http://localhost:61142/Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx'><span>Žica za varanje</span></a></li>
      </ul>
    </li>
         
   <li><a href='http://localhost:61142/Tablice/RezervniDijelovi/IspisRezDijelovi.aspx"'><span>Rezervni dijelovi</span></a></li>

   <li><a href='#'><span>Uredski matrijal</span></a>
       <ul>
         
               <li><a href='http://localhost:61142/Tablice/UredskiMaterijal/IspisUredMaterijal.aspx'><span>Kuverte</span></a></li>
               <li><a href='http://localhost:61142/Tablice/UredskiMaterijal/IspisUredMaterijal.aspx'><span>Fascikli</span></a></li>
               <li><a href='http://localhost:61142/Tablice/UredskiMaterijal/IspisUredMaterijal.aspx'><span>Registratori</span></a></li>
               <li><a href='http://localhost:61142/Tablice/UredskiMaterijal/IspisUredMaterijal.aspx'><span>Papir</span></a></li>
               <li><a href='http://localhost:61142/Tablice/UredskiMaterijal/IspisUredMaterijal.aspx'><span>Obrasci</span></a></li>
               <li><a href='http://localhost:61142/Tablice/UredskiMaterijal/IspisUredMaterijal.aspx'><span>Pisači pribor</span></a></li>
               <li class='last'><a href='http://localhost:61142/Tablice/UredskiMaterijal/IspisUredMaterijal.aspx'><span>Ostalo</span></a></li>
      </ul>
   </li>
   <li class='last'><a href='http://localhost:61142/Tablice/VanjskeUsluge/IspisVanUsluge.aspx'><span>Vanjske usluge</span></a></li>
</ul>
</div>


    <div>
        <asp:Label ID="Label4" CssClass="PNaslovi" runat="server" Text="Vanjske usluge"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4"  CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"  DataSourceID="SqlDataSourceVanUsluge" 
            ForeColor="#333333" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="USLUGA" SortExpression="USLUGA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("USLUGA") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("USLUGA") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OPIS" SortExpression="OPIS">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("OPIS") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("OPIS") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceVanUsluge" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MIV %>" 
            SelectCommand="SELECT * FROM [VanjskeUsluge]"></asp:SqlDataSource>
        <asp:Button ID="button" CssClass="myButton" runat="server"  onclick="button_Click" 
            Text="Zavrži" />
    
        <br />
        <asp:HyperLink ID="UrediVanUsl" runat="server" 
            NavigateUrl="~/Zaposlenici/UrediVanjskeUsluge.aspx">Uredi Vanjske Usluge</asp:HyperLink>
    
    </div>
</asp:Content>
