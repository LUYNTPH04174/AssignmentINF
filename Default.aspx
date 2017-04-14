<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>NGUYỄN THÀNH LŨY</h1>
                <h2>&nbsp;</h2>
            </hgroup>
            <p>
                Kết nối và truy vấn dữ liệu trong database</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>KẾT NỐI VỚI CÁC BẢNG</h3>
    <ol class="round">
        <li class="one">
            <h5>BANG KHACH HANG</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource2" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH">
                <Fields>
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                    <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
                    <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KHACHHANG %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT]) VALUES (@MaKH, @HoTen, @DiaChi, @SDT)" SelectCommand="SELECT [MaKH], [HoTen], [DiaChi], [SDT] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [HoTen] = @HoTen, [DiaChi] = @DiaChi, [SDT] = @SDT WHERE [MaKH] = @MaKH">
                <DeleteParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="HoTen" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="SDT" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HoTen" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="SDT" Type="Int32" />
                    <asp:Parameter Name="MaKH" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </li>
        <li class="two">
            <h5>BANG HOA DON</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="BANGHOADON">
                <Fields>
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                    <asp:BoundField DataField="SoHD" HeaderText="SoHD" SortExpression="SoHD" />
                    <asp:BoundField DataField="KhachHang_MaKH" HeaderText="KhachHang_MaKH" SortExpression="KhachHang_MaKH" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="BANGHOADON" runat="server" ConnectionString="<%$ ConnectionStrings:KHACHHANG %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [MaKH], [SoHD], [KhachHang_MaKH]) VALUES (@MaHD, @MaKH, @SoHD, @KhachHang_MaKH)" SelectCommand="SELECT [MaHD], [MaKH], [SoHD], [KhachHang_MaKH] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [MaKH] = @MaKH, [SoHD] = @SoHD, [KhachHang_MaKH] = @KhachHang_MaKH WHERE [MaHD] = @MaHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="SoHD" Type="String" />
                    <asp:Parameter Name="KhachHang_MaKH" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="SoHD" Type="String" />
                    <asp:Parameter Name="KhachHang_MaKH" Type="String" />
                    <asp:Parameter Name="MaHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="three">
            <h5>BANG CHI TIET HOA DON</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaCTHD" DataSourceID="CHITIETHOADON">
                <Fields>
                    <asp:BoundField DataField="MaCTHD" HeaderText="MaCTHD" ReadOnly="True" SortExpression="MaCTHD" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                    <asp:BoundField DataField="SanPham_MaSP" HeaderText="SanPham_MaSP" SortExpression="SanPham_MaSP" />
                    <asp:BoundField DataField="HoaDon_MaHD" HeaderText="HoaDon_MaHD" SortExpression="HoaDon_MaHD" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="CHITIETHOADON" runat="server" ConnectionString="<%$ ConnectionStrings:KHACHHANG %>" DeleteCommand="DELETE FROM [CTHoaDon] WHERE [MaCTHD] = @MaCTHD" InsertCommand="INSERT INTO [CTHoaDon] ([MaCTHD], [SoLuong], [SanPham_MaSP], [HoaDon_MaHD]) VALUES (@MaCTHD, @SoLuong, @SanPham_MaSP, @HoaDon_MaHD)" SelectCommand="SELECT [MaCTHD], [SoLuong], [SanPham_MaSP], [HoaDon_MaHD] FROM [CTHoaDon]" UpdateCommand="UPDATE [CTHoaDon] SET [SoLuong] = @SoLuong, [SanPham_MaSP] = @SanPham_MaSP, [HoaDon_MaHD] = @HoaDon_MaHD WHERE [MaCTHD] = @MaCTHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaCTHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaCTHD" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="SanPham_MaSP" Type="String" />
                    <asp:Parameter Name="HoaDon_MaHD" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="SanPham_MaSP" Type="String" />
                    <asp:Parameter Name="HoaDon_MaHD" Type="String" />
                    <asp:Parameter Name="MaCTHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
         <li class="four">
            <h5>BANG SAN PHAM</h5>
             <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SANPHAM">
                 <Fields>
                     <asp:BoundField DataField="LoaiSP_MaLSP" HeaderText="LoaiSP_MaLSP" SortExpression="LoaiSP_MaLSP" />
                     <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                     <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                     <asp:BoundField DataField="GiaTien" HeaderText="GiaTien" SortExpression="GiaTien" />
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                 </Fields>
             </asp:DetailsView>
             <asp:SqlDataSource ID="SANPHAM" runat="server" ConnectionString="<%$ ConnectionStrings:KHACHHANG %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([LoaiSP_MaLSP], [TenSP], [MaSP], [GiaTien]) VALUES (@LoaiSP_MaLSP, @TenSP, @MaSP, @GiaTien)" SelectCommand="SELECT [LoaiSP_MaLSP], [TenSP], [MaSP], [GiaTien] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [LoaiSP_MaLSP] = @LoaiSP_MaLSP, [TenSP] = @TenSP, [GiaTien] = @GiaTien WHERE [MaSP] = @MaSP">
                 <DeleteParameters>
                     <asp:Parameter Name="MaSP" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="LoaiSP_MaLSP" Type="String" />
                     <asp:Parameter Name="TenSP" Type="String" />
                     <asp:Parameter Name="MaSP" Type="String" />
                     <asp:Parameter Name="GiaTien" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="LoaiSP_MaLSP" Type="String" />
                     <asp:Parameter Name="TenSP" Type="String" />
                     <asp:Parameter Name="GiaTien" Type="String" />
                     <asp:Parameter Name="MaSP" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>
        </li>
           <li class="five">
            <h5>BANG LOAI SAN PHAM</h5>
               <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLSP" DataSourceID="LOAISP">
                   <Fields>
                       <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" ReadOnly="True" SortExpression="MaLSP" />
                       <asp:BoundField DataField="TenLSP" HeaderText="TenLSP" SortExpression="TenLSP" />
                       <asp:BoundField DataField="ThuocTinh" HeaderText="ThuocTinh" SortExpression="ThuocTinh" />
                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                   </Fields>
               </asp:DetailsView>
               <asp:SqlDataSource ID="LOAISP" runat="server" ConnectionString="<%$ ConnectionStrings:KHACHHANG %>" DeleteCommand="DELETE FROM [LoaiSP] WHERE [MaLSP] = @MaLSP" InsertCommand="INSERT INTO [LoaiSP] ([MaLSP], [TenLSP], [ThuocTinh]) VALUES (@MaLSP, @TenLSP, @ThuocTinh)" SelectCommand="SELECT [MaLSP], [TenLSP], [ThuocTinh] FROM [LoaiSP]" UpdateCommand="UPDATE [LoaiSP] SET [TenLSP] = @TenLSP, [ThuocTinh] = @ThuocTinh WHERE [MaLSP] = @MaLSP">
                   <DeleteParameters>
                       <asp:Parameter Name="MaLSP" Type="String" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="MaLSP" Type="String" />
                       <asp:Parameter Name="TenLSP" Type="String" />
                       <asp:Parameter Name="ThuocTinh" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="TenLSP" Type="String" />
                       <asp:Parameter Name="ThuocTinh" Type="String" />
                       <asp:Parameter Name="MaLSP" Type="String" />
                   </UpdateParameters>
               </asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>
